part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required bool isLoading,
    required bool hasError,
    required bool isLogin,
    String? message,
    List<String>? filteredLocations,
    List<String>? filteredPincodes,
    PincodeResponceModel? pincodeResponceModel,
    CityUpdateResponceModel? cityUpdateResponceModel,
    PincodeUpdateResponceModel? pincodeUpdateResponceModel,
  }) = _Initial;
  factory LocationState.initial() => const LocationState(
        isLoading: false,
        hasError: false,
        isLogin: false,
        filteredLocations: [],
        filteredPincodes: [],
      );
}
