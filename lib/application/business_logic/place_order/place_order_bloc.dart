import 'dart:async';
import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/order_model/abandend_order_request_model/abandend_order_request_model.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/order_placed_request_model.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/payment.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/pick_up_details.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/product_details.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/promo.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/user.dart';
import 'package:beachdu/domain/model/order_model/order_placed_responce_model/order_placed_responce_model.dart';
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
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController additionalNumberController = TextEditingController();
  TextEditingController promocodeController = TextEditingController();
  TextEditingController upiIdController = TextEditingController();
  PlaceOrderBloc(this.placeOrderRepo) : super(PlaceOrderState.initial()) {
    on<GetPromoCode>(getPromoCode);
    on<OrderPlacing>(orderPlacing);
    on<ProductDetailsPick>(productDetailsPick);
    on<UserDetailsPick>(userDetailsPick);
    on<AddressPick>(addressPick);
    on<PaymentOption>(paymentOption);
    on<PickupDetailsPick>(pickupDetailsPick);
    on<PromoCodeSuccess>(promocodeSuccess);
  }

  FutureOr<void> productDetailsPick(ProductDetailsPick event, emit) {
    state.orderPlacedRequestModel.productDetails = event.productDetails;
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> promocodeSuccess(PromoCodeSuccess event, emit) {
    log('in promocodeSuccess bloc');
    if (state.promoCodeResponceModel != null ||
        state.promoCodeResponceModel!.value != null) {
      log('in promocodeSuccess bloc responce != null condition');
      log('Inner promocodeSuccess bloc');
      state.orderPlacedRequestModel.promo!.price =
          state.promoCodeResponceModel?.value.toString();
      state.orderPlacedRequestModel.promo!.code =
          promocodeController.text.trim();
    }
    log('promocode price promocodeSuccess event ${state.promoCodeResponceModel?.value.toString()}');
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> pickupDetailsPick(PickupDetailsPick event, emit) {
    state.orderPlacedRequestModel.pickUpDetails = event.pickUpDetails;
    log('pickUpDetails date pickupDetailsPick event ${event.pickUpDetails.date}');
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> paymentOption(PaymentOption event, emit) {
    state.orderPlacedRequestModel.payment = event.payment;
    log('payment type paymentOption event ${event.payment.type}');
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> addressPick(AddressPick event, emit) {
    state.orderPlacedRequestModel.user!.address = event.user.address;
    log('user address addressPick event ${event.user.address}');
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> userDetailsPick(UserDetailsPick event, emit) {
    state.orderPlacedRequestModel.user = event.user;
    log('user name userDetailsPick event ${event.user.name}');
    emit(state.copyWith(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    ));
  }

  FutureOr<void> orderPlacing(OrderPlacing event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await placeOrderRepo.orderPlacing(
      orderPlacedRequestModel: state.orderPlacedRequestModel,
    );

    data.fold((falure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
        message: falure.message,
      ));

      log('falure $falure');
    }, (orderPlacingSuccess) async {
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          message: orderPlacingSuccess.message,
          orderPlacedResponceModel: orderPlacingSuccess,
        ),
      );
      log('orderPlacingSuccess $orderPlacingSuccess');
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
      String code;
      String price;
      if (promocodeController.text.isEmpty) {
        code = '';
        price = '';
      } else {
        code = promocodeController.text;
        price = promoCodeResponceModel.value.toString();
      }
      log('promo code in bloc $code');
      log('promo price in bloc $price');
      Promo promo = Promo(code: code, price: price);
      OrderPlacedRequestModel orderPlacedRequestModel =
          OrderPlacedRequestModel(promo: promo);
      // if (promoCodeResponceModel.value != null) {
      //   value = promoCodeResponceModel.value!;
      // }
      // var code = promocodeController.text;
      // if (code == '') {
      //   code = '';
      // }
      // code = promocodeController.text;
      // var price = promoCodeResponceModel.value ?? '';
      // log('promo code in bloc $code');
      // log('promo price in bloc $price');
      // Promo promo = Promo(code: code.toString(), price: price.toString());
      // OrderPlacedRequestModel orderPlacedRequestModel =
      //     OrderPlacedRequestModel(promo: promo);
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          promoCodeResponceModel: promoCodeResponceModel,
          orderPlacedRequestModel: orderPlacedRequestModel,
        ),
      );
      //add(const PlaceOrderEvent.promoCodeSuccess());
      log('promoCodeResponceModel $promoCodeResponceModel');
    });
  }
}
