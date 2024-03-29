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
    List<String>? models,
    List<String>? varients,
    List<Brands>? filteredBrands,
    List<String>? filteredSeries,
    List<Product>? filteredProducts,
    List<List<String>>? allItems,
    String? selectedModel,
    String? selctedVerient,
  }) = _Initial;
  factory CategoryBlocState.intial() => const CategoryBlocState(
        isLoading: false,
        hasError: false,
      );
}
