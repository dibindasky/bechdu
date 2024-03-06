import 'dart:async';
import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/order_model/abandend_order_request_model/abandend_order_request_model.dart';
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
  String cashSelection = 'cash';

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
    on<OrderPlacing>(orderPlacing);
    on<GetOrders>(getOrders);
    on<OrderCancel>(orderCancel);
    on<ProductDetailsPick>(productDetailsPick);
    on<PromoCodePick>(promocodePick);
    on<UserDetailsPick>(userDetailsPick);
    on<AddressPick>(addressPick);
    on<PaymentOption>(paymentOption);
    on<PickupDetailsPick>(pickupDetailsPick);
    on<UserNumber>(userNumber);
    on<RemoveAllFieldData>(removeAllFeildData);
    // on<SelectedOptionEvent>(selectedOptionNewEvent);
  }

  // FutureOr<void> selectedOptionNewEvent(SelectedOptionEvent event, emit) {
  //   for (var element in event.selectedOption) {
  //     state.selectedNewOptions!.add(element);
  //   }
  //   log('PlaceOrderBloc selectedOptionNewEvent selectedOption length ${state.selectedNewOptions!.length}');
  // }

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

  FutureOr<void> promocodePick(PromoCodePick event, emit) {
    state.orderPlacedRequestModel.promo = event.promo;
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
    log('promoPick ${event.promo.code} ${event.promo.price}');
  }

  FutureOr<void> getOrders(GetOrders event, emit) async {
    // if (state.getAllOrderResponceModel != null) return;
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
    // state.orderPlacedRequestModel.productDetails!.options =
    //     state.selectedNewOptions;
    state.orderPlacedRequestModel.productDetails = event.productDetails;
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> pickupDetailsPick(PickupDetailsPick event, emit) {
    state.orderPlacedRequestModel.pickUpDetails = event.pickUpDetails;
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> paymentOption(PaymentOption event, emit) {
    state.orderPlacedRequestModel.payment = event.payment;
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> addressPick(AddressPick event, emit) {
    state.orderPlacedRequestModel.user!.address = event.user.address;
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> userDetailsPick(UserDetailsPick event, emit) async {
    state.orderPlacedRequestModel.user = event.user;
    log('user name userDetailsPick event ${event.user.name}');
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> orderPlacing(OrderPlacing event, emit) async {
    final number = await SecureSotrage.getNumber();
    state.orderPlacedRequestModel.user!.phone = number;
    emit(state.copyWith(isLoading: true, hasError: false));
    var orderModel = state.orderPlacedRequestModel;
    orderModel.promo = state.promoCodeResponceModel != null
        ? Promo(
            code: promocodeController.text,
            price: state.promoCodeResponceModel!.value.toString(),
          )
        : Promo(code: '', price: '');
    log("orderPlacing orderModel items ${orderModel.toJson()}");

    final data = await placeOrderRepo.orderPlacing(
      orderPlacedRequestModel: orderModel,
    );

    data.fold((falure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
        message: falure.message,
      ));
    }, (orderPlacingSuccess) async {
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          message: orderPlacingSuccess.message,
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

      log('falure $falure');
    }, (promoCodeResponceModel) async {
      value = promoCodeResponceModel.value!;
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          promoCodeResponceModel: promoCodeResponceModel,
          //orderPlacedRequestModel: orderPlacedRequestModel,
        ),
      );
    });
  }

  FutureOr<void> removeAllFeildData(RemoveAllFieldData event, emit) {
    nameController.clear();
    emailController.clear();
    numberController.clear();
    additionalNumberController.clear();
    promocodeController.clear();
    upiIdController.clear();
  }
}
