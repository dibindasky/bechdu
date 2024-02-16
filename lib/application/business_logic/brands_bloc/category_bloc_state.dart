part of 'category_bloc_bloc.dart';

@freezed
class CategoryBlocState with _$CategoryBlocState {
  const factory CategoryBlocState({
    required bool isLoading,
    required bool hasError,
    String? message,
    bool? isPro,
    String? selectedProduct,
    SingleCategoryBrandsResponceModel? getSingleCategoryResponce,
    GetProductsResponceModel? getProductsResponceModel,
    required List<List<String>> allItems,
    List<String>? sortedPro,
  }) = _Initial;
  factory CategoryBlocState.intial() => const CategoryBlocState(
        isLoading: false,
        hasError: false,
        allItems: [[], [], []],
      );
}
