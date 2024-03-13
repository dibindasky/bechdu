part of 'place_order_bloc.dart';

@freezed
class PlaceOrderEvent with _$PlaceOrderEvent {
  const factory PlaceOrderEvent.getPromoCode({
    required PromoCodeRequestModel promoCodeRequestModel,
  }) = GetPromoCode;
  const factory PlaceOrderEvent.abandendOrder({
    required AbandendOrderRequestModel abandendOrderRequestModel,
  }) = AbandendOrder;
  const factory PlaceOrderEvent.getDatetime() = GetDatetime;
  const factory PlaceOrderEvent.orderPlacing() = OrderPlacing;
  const factory PlaceOrderEvent.getOrders({bool? isLoad}) = GetOrders;
  const factory PlaceOrderEvent.orderCancel({
    required OrderCancelationRequestModel orderCancelationRequestModel,
    required String orderId,
  }) = OrderCancel;

  const factory PlaceOrderEvent.productDetailsPick({
    required ProductDetails productDetails,
  }) = ProductDetailsPick;
  const factory PlaceOrderEvent.promoCodePick({
    required Promo promo,
  }) = PromoCodePick;
  const factory PlaceOrderEvent.addressPick({
    required User user,
    required Promo promo,
  }) = AddressPick;
  const factory PlaceOrderEvent.paymentOption({
    required Payment payment,
  }) = PaymentOption;
  const factory PlaceOrderEvent.selectedOptionEvent({
    required List<SelectedOption> selectedOption,
  }) = SelectedOptionEvent;
  const factory PlaceOrderEvent.removeAppliedPromo() = RemoveAppliedPromo;
  const factory PlaceOrderEvent.pickupDetailsPick({
    required PickUpDetails pickUpDetails,
  }) = PickupDetailsPick;
  const factory PlaceOrderEvent.userNumber() = UserNumber;
  const factory PlaceOrderEvent.removeAllFieldData() = RemoveAllFieldData;
  const factory PlaceOrderEvent.promoCodeSuccess() = PromoCodeSuccess;
  const factory PlaceOrderEvent.invoiceDownload({
    required bool isLoad,
    required String orderId,
  }) = InvoiceDownload;
}
