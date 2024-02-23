part of 'place_order_bloc.dart';

@freezed
class PlaceOrderState with _$PlaceOrderState {
  const factory PlaceOrderState({
    required bool isLoading,
    required bool hasError,
    String? message,
    PromoCodeResponceModel? promoCodeResponceModel,
  }) = _Initial;

  factory PlaceOrderState.initial() => const PlaceOrderState(
        isLoading: false,
        hasError: false,
      );
}
