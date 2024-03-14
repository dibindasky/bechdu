part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.locationPick() = LocationPick;
  const factory LocationEvent.locationSearch({required String searchQuery}) =
      LocationSearch;
  const factory LocationEvent.locationUpdate({
    required CityUpdateRequestModel cityUpdateRequestModel,
  }) = LocationUpdate;
  const factory LocationEvent.pinCodePick({required String cityName}) =
      PinCodePick;
  const factory LocationEvent.pincodeSearch({required String searchQuery}) =
      PincodeSearch;
  const factory LocationEvent.pincodeUpdate({
    required PincodeUpdateRequestModel pincodeUpdateRequestModel,
  }) = PincodeUpdate;
  const factory LocationEvent.setPicondeSecure({
    required String pincode,
  }) = SetPicondeSecure;
  const factory LocationEvent.clear() = Clear;
  const factory LocationEvent.locationSkipEvent() = LocationSkipEvent;
}
