part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool hasError,
    String? message,
    GetCategoryResponceModel? getCategoryResponceModel,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
        isLoading: false,
        hasError: false,
      );
}
