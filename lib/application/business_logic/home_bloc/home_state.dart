part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool notificationLoad,
    required bool hasError,
    required bool loadMore,
    required bool bannerLoad,
    required bool whatToSellLoad,
    required bool bestSellingLoad,
    String? message,
    String? selectedCategory,
    List<Notifications>? notifications,
    GetCategoryResponceModel? getCategoryResponceModel,
    HomeBannerResponceModel? homeBannerResponceModel,
    BestSellingProductsResponceModel? bestSellingProductsResponceModel,
    SearchResponceModel? searchResponceModel,
    GlobalProductSearchResponceModel? globalProductSearchResponceModel,
    List<Product>? products,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
        notificationLoad: false,
        hasError: false,
        loadMore: false,
        bannerLoad: false,
        whatToSellLoad: false,
        bestSellingLoad: false,
      );
}
