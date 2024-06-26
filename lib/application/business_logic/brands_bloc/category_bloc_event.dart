part of 'category_bloc_bloc.dart';

@freezed
class CategoryBlocEvent with _$CategoryBlocEvent {
  const factory CategoryBlocEvent.getAllCategory() = GetAllCategory;
  const factory CategoryBlocEvent.getSingleCategoryBrands({
    required bool isLoad,
    String? categoryType,
  }) = GetSingleCategoryBrands;
  const factory CategoryBlocEvent.brandSearch({
    required String searchQuery,
  }) = BrandSearch;
  const factory CategoryBlocEvent.seriesSearch({
    required String searchQuery,
  }) = SeriesSearch;
  const factory CategoryBlocEvent.getProducts({
    required String categoryType,
    required String brandName,
    required String seriesName,
  }) = GetProducts;
  const factory CategoryBlocEvent.productSearch({
    required String searchQuery,
  }) = ProductSearch;
  const factory CategoryBlocEvent.getSeries({
    required String brandName,
    required String categoryType,
  }) = GetSeries;
  const factory CategoryBlocEvent.getProductbasedOnCategoryAndBrand({
    required String category,
    required String brand,
  }) = GetProductbasedOnCategoryAndBrand;
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
  const factory CategoryBlocEvent.clear() = Clear;
}
