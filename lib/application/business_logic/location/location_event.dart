part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.locationPick() = LocationPick;
  const factory LocationEvent.pinCodePick({required String cityName}) =
      PinCodePick;
}
