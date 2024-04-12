part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isLoading,
    required bool hasError,
    required int selectedAddressIndex,
    required bool deleteAccountLoading,
    required bool accountDeleted,
    String? message,
    required List<String> address,
    AddressCreationResponceModel? addressCreationResponceModel,
    UserInfo? user,
    DeleteAccountResponceModel? deleteAccountResponceModel,
  }) = _Initial;
  factory ProfileState.initail() => const ProfileState(
        isLoading: false,
        deleteAccountLoading: false,
        accountDeleted: false,
        hasError: false,
        selectedAddressIndex: -1,
        address: [],
      );
}
