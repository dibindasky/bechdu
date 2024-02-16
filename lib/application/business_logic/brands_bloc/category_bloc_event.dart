part of 'category_bloc_bloc.dart';

@freezed
class CategoryBlocEvent with _$CategoryBlocEvent {
  const factory CategoryBlocEvent.getAllCategory() = GetAllCategory;
  const factory CategoryBlocEvent.selectedProduct(
      {required String selectedProduct}) = SelectedProduct;
  const factory CategoryBlocEvent.getSingleCategoryBrands({
    String? categoryType,
  }) = GetSingleCategoryBrands;
  const factory CategoryBlocEvent.getProducts({
    required String categoryType,
    required String brandName,
  }) = GetProducts;
  const factory CategoryBlocEvent.getSeries({
    required String brandName,
    required String categoryType,
  }) = GetSeries;
  const factory CategoryBlocEvent.productUpdate({
    required String seriesName,
  }) = ProductUpdate;
  const factory CategoryBlocEvent.getModels({
    required String categoryType,
    required String brandName,
    required String seriesName,
  }) = GetModels;
  const factory CategoryBlocEvent.getVarients({
    required String categoryType,
    required String brandName,
    required String seriesName,
    required String model,
  }) = GetVarients;
}
