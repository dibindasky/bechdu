part of 'place_order_bloc.dart';

@freezed
class PlaceOrderState with _$PlaceOrderState {
  const factory PlaceOrderState({
    required bool isLoading,
    required bool hasError,
    required bool loginStatus,
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
    String? number,
    List<SelectedOption>? selectedNewOptions,
    OrderCancelationResponceModel? orderCancelationResponceModel,
    GetAllOrderResponceModel? getAllOrderResponceModel,
    DateTomeResponceModel? dateTomeResponceModel,
    List<String>? dates,
    List<String>? time,
    required bool downloading,
    required bool downloaded,
    File? data,
    String? invoice,
  }) = _Initial;

  factory PlaceOrderState.initial() => PlaceOrderState(
        isLoading: false,
        hasError: false,
        loginStatus: false,
        downloaded: false,
        downloading: false,
        orderPlacedRequestModel: OrderPlacedRequestModel(),
        user: User(),
        payment: Payment(),
        pickUpDetails: PickUpDetails(),
        productDetails: ProductDetails(),
        address: '',
        promo: Promo(),
      );
}
