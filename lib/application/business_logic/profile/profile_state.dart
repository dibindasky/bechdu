part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isLoading,
    required bool hasError,
    String? message,
    required List<String> address,
    AddressCreationResponceModel? addressCreationResponceModel,
    UserInfo? user,
  }) = _Initial;
  factory ProfileState.initail() => const ProfileState(
        isLoading: false,
        hasError: false,
        address: [],
      );
}
