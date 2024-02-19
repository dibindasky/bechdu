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
    GetProductsRespoceModel? getProductsResponceModel,
    required List<List<String>> allItems,
    List<Brands>? filteredBrands,
    List<Product>? filteredProducts,
    List<String>? sortedPro,
  }) = _Initial;
  factory CategoryBlocState.intial() => const CategoryBlocState(
        isLoading: false,
        hasError: false,
        allItems: [[], [], []],
      );
}
