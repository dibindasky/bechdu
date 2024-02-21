part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required bool isLoading,
    required bool hasError,
    String? message,
    List<String>? locations,
    PincodeResponceModel? pincodeResponceModel,
  }) = _Initial;
  factory LocationState.initial() => const LocationState(
        isLoading: false,
        hasError: false,
        locations: [],
      );
}
