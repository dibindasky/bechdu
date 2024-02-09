part of 'category_bloc_bloc.dart';

@freezed
class CategoryBlocEvent with _$CategoryBlocEvent {
  const factory CategoryBlocEvent.getAllCategory() = GetAllCategory;
  const factory CategoryBlocEvent.getSingleCategoryBrands({
    String? categoryType,
  }) = GetSingleCategoryBrands;
  const factory CategoryBlocEvent.search({required String searchQuery}) =
      Search;
  const factory CategoryBlocEvent.getProducts({
    required String categoryType,
    required String brandName,
  }) = GetProducts;
}
