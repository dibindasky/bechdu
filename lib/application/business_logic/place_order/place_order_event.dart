part of 'place_order_bloc.dart';

@freezed
class PlaceOrderEvent with _$PlaceOrderEvent {
  const factory PlaceOrderEvent.getPromoCode({
    required PromoCodeRequestModel promoCodeRequestModel,
  }) = GetPromoCode;
  const factory PlaceOrderEvent.abandendOrder({
    required AbandendOrderRequestModel abandendOrderRequestModel,
  }) = AbandendOrder;
  const factory PlaceOrderEvent.orderPlacing() = OrderPlacing;
  const factory PlaceOrderEvent.userDetailsPick({
    required User user,
  }) = UserDetailsPick;
  const factory PlaceOrderEvent.productDetailsPick({
    required ProductDetails productDetails,
  }) = ProductDetailsPick;
  const factory PlaceOrderEvent.addressPick({
    required User user,
  }) = AddressPick;
  const factory PlaceOrderEvent.paymentOption({
    required Payment payment,
  }) = PaymentOption;
  const factory PlaceOrderEvent.pickupDetailsPick({
    required PickUpDetails pickUpDetails,
  }) = PickupDetailsPick;
  const factory PlaceOrderEvent.promoCodeSuccess() = PromoCodeSuccess;
}
