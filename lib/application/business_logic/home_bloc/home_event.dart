part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllCategory({required bool isLoad}) =
      GetAllCategory;
  const factory HomeEvent.selectedactegory({required String category}) =
      Selectedactegory;
  const factory HomeEvent.homePageBanners({required bool isLoad}) =
      HomePageBanners;
  const factory HomeEvent.getBestSellingProducts({required bool isLoad}) =
      GetBestSellingProducts;
  const factory HomeEvent.globalPrductSearch({
    required SearchParamModel searchParamModel,
  }) = GlobalPrductSearch;
  const factory HomeEvent.nextPage() = NextPage;
}
