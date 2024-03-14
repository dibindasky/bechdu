part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.addAddress({
    required AddressCreationRequestModel addressCreationRequestModel,
  }) = AddAddress;
  const factory ProfileEvent.deleteAddress({
    required int index,
  }) = DeleteAddress;
  const factory ProfileEvent.getUserInfo({required bool isLoad}) = GetUserInfo;
  const factory ProfileEvent.updateUser({
    required UserInfoRequestModel userInfoRequestModel,
  }) = UpdateUser;
}
