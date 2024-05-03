part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllCategory({required bool isLoad}) =
      GetAllCategory;
  const factory HomeEvent.homePageBanners({required bool isLoad}) =
      HomePageBanners;
  const factory HomeEvent.getBestSellingProducts({required bool isLoad}) =
      GetBestSellingProducts;
  const factory HomeEvent.globalPrductSearch({
    required String searchQuery,
  }) = GlobalPrductSearch;
  const factory HomeEvent.nextPage() = NextPage;
  const factory HomeEvent.notification() = Notification;
  const factory HomeEvent.clear() = Clear;
}
