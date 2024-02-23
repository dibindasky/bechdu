part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required bool isLoading,
    required bool hasError,
    String? message,
    List<String>? locations,
    List<String>? pincodes,
    List<String>? filteredLocations,
    List<String>? filteredPincodes,
    PincodeResponceModel? pincodeResponceModel,
  }) = _Initial;
  factory LocationState.initial() => const LocationState(
        isLoading: false,
        hasError: false,
        locations: [],
        pincodes: [],
        filteredLocations: [],
        filteredPincodes: [],
      );
}
