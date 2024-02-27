part of 'place_order_bloc.dart';

@freezed
class PlaceOrderState with _$PlaceOrderState {
  const factory PlaceOrderState({
    required bool isLoading,
    required bool hasError,
    String? message,
    PromoCodeResponceModel? promoCodeResponceModel,
    OrderPlacedResponceModel? orderPlacedResponceModel,
    required OrderPlacedRequestModel orderPlacedRequestModel,
    required User user,
    required Payment payment,
    required PickUpDetails pickUpDetails,
    required ProductDetails productDetails,
    required String address,
    required Promo promo,
  }) = _Initial;

  factory PlaceOrderState.initial() => PlaceOrderState(
        isLoading: false,
        hasError: false,
        orderPlacedRequestModel: OrderPlacedRequestModel(),
        user: User(),
        payment: Payment(),
        pickUpDetails: PickUpDetails(),
        productDetails: ProductDetails(),
        address: '',
        promo: Promo(),
      );
}
