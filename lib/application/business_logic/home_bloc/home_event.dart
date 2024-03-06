part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllCategory() = GetAllCategory;
  const factory HomeEvent.selectedactegory({required String category}) =
      Selectedactegory;
  const factory HomeEvent.homePageBanners() = HomePageBanners;
  const factory HomeEvent.getBestSellingProducts() = GetBestSellingProducts;
  const factory HomeEvent.globalPrductSearch({
    required SearchParamModel searchParamModel,
  }) = GlobalPrductSearch;
  const factory HomeEvent.nextPage() = NextPage;
}
