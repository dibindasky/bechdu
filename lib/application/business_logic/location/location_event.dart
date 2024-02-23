part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.locationPick() = LocationPick;
  const factory LocationEvent.pinCodePick({required String cityName}) =
      PinCodePick;
  const factory LocationEvent.locationSearch({required String searchQuery}) =
      LocationSearch;
  const factory LocationEvent.pincodeSearch({required String searchQuery}) =
      PincodeSearch;
}
