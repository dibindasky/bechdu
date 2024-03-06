part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool hasError,
    required bool loadMore,
    String? message,
    String? selectedCategory,
    GetCategoryResponceModel? getCategoryResponceModel,
    HomeBannerResponceModel? homeBannerResponceModel,
    BestSellingProductsResponceModel? bestSellingProductsResponceModel,
    SearchResponceModel? searchResponceModel,
    GlobalProductSearchResponceModel? globalProductSearchResponceModel,
    List<Product>? products,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
        isLoading: false,
        hasError: false,
        loadMore: false,
      );
}
