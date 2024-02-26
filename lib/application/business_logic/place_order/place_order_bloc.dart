import 'dart:async';
import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/abandend_order/abandend_order_request_model/abandend_order_request_model.dart';
import 'package:beachdu/domain/model/place_order/promo_code_request_model/promo_code_request_model.dart';
import 'package:beachdu/domain/model/place_order/promo_code_responce_model/promo_code_responce_model.dart';
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
  TextEditingController promocodeController = TextEditingController();
  PlaceOrderBloc(this.placeOrderRepo) : super(PlaceOrderState.initial()) {
    on<GetPromoCode>(getPromoCode);
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
      if (promoCodeResponceModel.value != null) {
        value = promoCodeResponceModel.value!;
      }
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          promoCodeResponceModel: promoCodeResponceModel,
        ),
      );
      log('promoCodeResponceModel $promoCodeResponceModel');
    });
  }
}
