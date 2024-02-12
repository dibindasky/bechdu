part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAllCategory() = GetAllCategory;
  const factory HomeEvent.selectedactegory({required String category}) =
      Selectedactegory;
}
