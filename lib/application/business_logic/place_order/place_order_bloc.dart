import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:beachdu/data/pdf_generator.dart';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/date_tome_responce_model/date_tome_responce_model.dart';
import 'package:beachdu/domain/model/order_model/get_all_order_responce_model/get_all_order_responce_model.dart';
import 'package:beachdu/domain/model/order_model/order_cancelation_request_model/order_cancelation_request_model.dart';
import 'package:beachdu/domain/model/order_model/order_cancelation_responce_model/order_cancelation_responce_model.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/order_placed_request_model.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/payment.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/pick_up_details.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/product_details.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/promo.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/user.dart';
import 'package:beachdu/domain/model/order_model/order_placed_responce_model/order_placed_responce_model.dart';
import 'package:beachdu/domain/model/pickup_question_model/selected_option.dart';
import 'package:beachdu/domain/model/promo_code_model/promo_code_request_model/promo_code_request_model.dart';
import 'package:beachdu/domain/model/promo_code_model/promo_code_responce_model/promo_code_responce_model.dart';
import 'package:beachdu/domain/repository/place_order.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'place_order_event.dart';
part 'place_order_state.dart';
part 'place_order_bloc.freezed.dart';

@injectable
class PlaceOrderBloc extends Bloc<PlaceOrderEvent, PlaceOrderState> {
  final PlaceOrderRepo placeOrderRepo;
  int value = 0;
  String? number;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController additionalNumberController = TextEditingController();
  TextEditingController promocodeController = TextEditingController();
  TextEditingController upiIdController = TextEditingController();
  TextEditingController cancelationReasonController = TextEditingController();
  PlaceOrderBloc(this.placeOrderRepo) : super(PlaceOrderState.initial()) {
    on<GetPromoCode>(getPromoCode);
    on<RemoveAppliedPromo>(removeAppliedPromo);
    on<GetDatetime>(getDateTime);
    on<OrderPlacing>(orderPlacing);
    on<OrderResponceNull>(orderResponceNull);
    on<GetOrders>(getOrders);
    on<OrderCancel>(orderCancel);
    on<ProductDetailsPick>(productDetailsPick);
    on<AddressPick>(addressPick);
    on<SelectedRadio>(selectedRadio);
    on<PaymentOption>(paymentOption);
    on<PickupDetailsPick>(pickupDetailsPick);
    on<UserNumber>(userNumber);
    on<RemoveAllFieldData>(removeAllFeildData);
    on<InvoiceDownload>(invoiceDownLoad);
    on<Clear>(clear);
  }

  FutureOr<void> orderResponceNull(OrderResponceNull event, emit) {
    log('${state.orderPlacedResponceModel}');
    emit(state.copyWith(orderPlacedResponceModel: null));
  }

  FutureOr<void> selectedRadio(SelectedRadio event, emit) {
    emit(state.copyWith(selectedRadio: event.selectedRadio));
  }

  FutureOr<void> clear(Clear event, emit) {
    emit(PlaceOrderState.initial());
  }

  FutureOr<void> invoiceDownLoad(InvoiceDownload event, emit) async {
    final permissionGranted = await takePermission();
    if (!permissionGranted) return;
    emit(state.copyWith(
      hasError: false,
      downloading: true,
      downloaded: false,
    ));
    final number = await SecureSotrage.getNumber();
    final result = await placeOrderRepo.downloadInvoice(
      orderId: event.orderId,
      number: number,
    );
    result.fold(
        (l) => emit(state.copyWith(
              hasError: true,
              downloading: false,
              downloaded: false,
              message: 'Error while generating invoice',
            )), (r) async {
      emit(
        state.copyWith(
          downloading: false,
          downloaded: true,
          message: 'File downloaded successfully',
          invoice: r.base64String,
        ),
      );
      await pdfGenerator(r.base64String!);
    });
  }

  FutureOr<void> getDateTime(GetDatetime event, emit) async {
    final data = await placeOrderRepo.getDateTime();
    data.fold((falure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
        message: falure.message,
      ));
    }, (r) {
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        dateTomeResponceModel: r,
        time: r.timeSlot,
        dates: r.dates,
      ));
    });
  }

  FutureOr<void> removeAppliedPromo(RemoveAppliedPromo event, emit) {
    promocodeController.clear();
    emit(state.copyWith(promoCodeResponceModel: null));
  }

  FutureOr<void> orderCancel(OrderCancel event, emit) async {
    final number = await SecureSotrage.getNumber();
    event.orderCancelationRequestModel.phone = number;
    log('Bloc ${event.orderCancelationRequestModel.toJson()}');
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await placeOrderRepo.orderCancel(
      orderCancelationRequestModel: event.orderCancelationRequestModel,
      orderId: event.orderId,
    );
    data.fold((falure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
        message: falure.message,
      ));
    }, (orderCancelSuccess) async {
      // for find cancelled button index
      var orderModel = state.getAllOrderResponceModel!.orders!.firstWhere(
        (element) => element.id == event.orderId,
      );
      orderModel.status = 'cancelled';
      var orderList = state.getAllOrderResponceModel;
      int orderIndex = orderList!.orders!
          .indexWhere((element) => element.id == orderModel.id);
      orderList.orders![orderIndex] = orderModel;
      emit(state.copyWith(
        hasError: false,
        isLoading: false,
        message: orderCancelSuccess.message,
        orderCancelationResponceModel: orderCancelSuccess,
        getAllOrderResponceModel: orderList,
      ));
    });
  }

  FutureOr<void> userNumber(UserNumber event, emit) async {
    final number = await SecureSotrage.getNumber();
    emit(state.copyWith(number: number));
  }

  FutureOr<void> getOrders(GetOrders event, emit) async {
    if (state.getAllOrderResponceModel != null && event.isLoad == false) return;
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await placeOrderRepo.getOrders();
    final login = await SecureSotrage.getlLogin();
    data.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
        message: failure.message,
      ));
    }, (success) {
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          getAllOrderResponceModel: success,
          loginStatus: login,
        ),
      );
    });
  }

  FutureOr<void> productDetailsPick(ProductDetailsPick event, emit) async {
    state.orderPlacedRequestModel.productDetails = event.productDetails;
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> pickupDetailsPick(PickupDetailsPick event, emit) {
    OrderPlacedRequestModel updatedModel =
        state.orderPlacedRequestModel.copyWith(
      pickUpDetails: event.pickUpDetails,
      promo: event.promo,
    );
    state.orderPlacedRequestModel.pickUpDetails = event.pickUpDetails;
    emit(state.copyWith(
      orderPlacedRequestModel: updatedModel,
    ));
  }

  FutureOr<void> paymentOption(PaymentOption event, emit) {
    state.orderPlacedRequestModel.payment = event.payment;
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> addressPick(AddressPick event, emit) {
    OrderPlacedRequestModel updatedModel =
        state.orderPlacedRequestModel.copyWith(user: event.user);

    log('addressPick event bloc event.user ${event.user.address}');
    log('addressPick event bloc state.orderPlacedRequestModel.user ${state.orderPlacedRequestModel.user?.address}');
    emit(state.copyWith(
      orderPlacedRequestModel: updatedModel,
    ));
  }

  FutureOr<void> orderPlacing(OrderPlacing event, emit) async {
    final number = await SecureSotrage.getNumber();
    if (state.orderPlacedRequestModel.user != null) {
      state.orderPlacedRequestModel.user!.phone = number;
    } else {
      log('orderPlacing user is null');
    }
    emit(state.copyWith(isLoading: true, hasError: false));
    var orderModel = state.orderPlacedRequestModel;

    log('orderPlacing bloc promo ${orderModel.promo?.toJson()}');
    log('orderPlacing bloc user ${orderModel.user?.toJson()}');
    log('orderPlacing bloc pickUpDetails ${orderModel.pickUpDetails?.toJson()}');
    log('orderPlacing bloc productDetails ${orderModel.productDetails?.toJson()}');
    log('orderPlacing bloc payment ${orderModel.payment?.toJson()}');

    final data = await placeOrderRepo.orderPlacing(
      orderPlacedRequestModel: orderModel,
    );

    data.fold((falure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
        message: falure.message,
      ));
    }, (orderPlacingSuccess) {
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          orderPlacedResponceModel: orderPlacingSuccess,
        ),
      );
      add(const PlaceOrderEvent.getOrders());
    });
  }

  FutureOr<void> getPromoCode(GetPromoCode event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final number = await SecureSotrage.getNumber();
    event.promoCodeRequestModel.phone = number;
    final data = await placeOrderRepo.getPomoCode(
      promoCodeRequestModel: event.promoCodeRequestModel,
    );

    data.fold((falure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
        message: falure.message,
      ));
    }, (promoCodeResponceModel) async {
      value = promoCodeResponceModel.value!;
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          promoCodeResponceModel: promoCodeResponceModel,
        ),
      );
    });
  }

  FutureOr<void> removeAllFeildData(RemoveAllFieldData event, emit) {
    promocodeController.text = '';
    upiIdController.text = '';
  }
}
