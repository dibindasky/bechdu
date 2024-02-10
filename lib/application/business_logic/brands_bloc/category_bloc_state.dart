part of 'category_bloc_bloc.dart';

@freezed
class CategoryBlocState with _$CategoryBlocState {
  const factory CategoryBlocState({
    required bool isLoading,
    required bool hasError,
    String? message,
    SingleCategoryBrandsResponceModel? getSingleCategoryResponce,
    GetProductsResponceModel? getProductsResponceModel,
    required List<Brands> brands,
  }) = _Initial;
  factory CategoryBlocState.intial() => const CategoryBlocState(
        isLoading: false,
        hasError: false,
        brands: [],
      );
}
