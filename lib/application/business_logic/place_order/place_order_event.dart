part of 'place_order_bloc.dart';

@freezed
class PlaceOrderEvent with _$PlaceOrderEvent {
  const factory PlaceOrderEvent.getPromoCode({
    required PromoCodeRequestModel promoCodeRequestModel,
  }) = GetPromoCode;
}
