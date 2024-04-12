// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressCreationRequestModel addressCreationRequestModel)
        addAddress,
    required TResult Function(int index) deleteAddress,
    required TResult Function(int selectedadress) selecteAddress,
    required TResult Function(bool isLoad) getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
    required TResult Function(LoginModel? loginModel) getDeletionOtp,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        deleteAccount,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function(int selectedadress)? selecteAddress,
    TResult? Function(bool isLoad)? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult? Function(LoginModel? loginModel)? getDeletionOtp,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function(int selectedadress)? selecteAddress,
    TResult Function(bool isLoad)? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult Function(LoginModel? loginModel)? getDeletionOtp,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
    required TResult Function(SelecteAddress value) selecteAddress,
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetDeletionOtp value) getDeletionOtp,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(Clear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(SelecteAddress value)? selecteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(GetDeletionOtp value)? getDeletionOtp,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(Clear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(SelecteAddress value)? selecteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetDeletionOtp value)? getDeletionOtp,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddAddressImplCopyWith<$Res> {
  factory _$$AddAddressImplCopyWith(
          _$AddAddressImpl value, $Res Function(_$AddAddressImpl) then) =
      __$$AddAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressCreationRequestModel addressCreationRequestModel});
}

/// @nodoc
class __$$AddAddressImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$AddAddressImpl>
    implements _$$AddAddressImplCopyWith<$Res> {
  __$$AddAddressImplCopyWithImpl(
      _$AddAddressImpl _value, $Res Function(_$AddAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressCreationRequestModel = null,
  }) {
    return _then(_$AddAddressImpl(
      addressCreationRequestModel: null == addressCreationRequestModel
          ? _value.addressCreationRequestModel
          : addressCreationRequestModel // ignore: cast_nullable_to_non_nullable
              as AddressCreationRequestModel,
    ));
  }
}

/// @nodoc

class _$AddAddressImpl implements AddAddress {
  const _$AddAddressImpl({required this.addressCreationRequestModel});

  @override
  final AddressCreationRequestModel addressCreationRequestModel;

  @override
  String toString() {
    return 'ProfileEvent.addAddress(addressCreationRequestModel: $addressCreationRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressImpl &&
            (identical(other.addressCreationRequestModel,
                    addressCreationRequestModel) ||
                other.addressCreationRequestModel ==
                    addressCreationRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressCreationRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressImplCopyWith<_$AddAddressImpl> get copyWith =>
      __$$AddAddressImplCopyWithImpl<_$AddAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressCreationRequestModel addressCreationRequestModel)
        addAddress,
    required TResult Function(int index) deleteAddress,
    required TResult Function(int selectedadress) selecteAddress,
    required TResult Function(bool isLoad) getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
    required TResult Function(LoginModel? loginModel) getDeletionOtp,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        deleteAccount,
    required TResult Function() clear,
  }) {
    return addAddress(addressCreationRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function(int selectedadress)? selecteAddress,
    TResult? Function(bool isLoad)? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult? Function(LoginModel? loginModel)? getDeletionOtp,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult? Function()? clear,
  }) {
    return addAddress?.call(addressCreationRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function(int selectedadress)? selecteAddress,
    TResult Function(bool isLoad)? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult Function(LoginModel? loginModel)? getDeletionOtp,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(addressCreationRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
    required TResult Function(SelecteAddress value) selecteAddress,
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetDeletionOtp value) getDeletionOtp,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(Clear value) clear,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(SelecteAddress value)? selecteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(GetDeletionOtp value)? getDeletionOtp,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(Clear value)? clear,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(SelecteAddress value)? selecteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetDeletionOtp value)? getDeletionOtp,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(this);
    }
    return orElse();
  }
}

abstract class AddAddress implements ProfileEvent {
  const factory AddAddress(
      {required final AddressCreationRequestModel
          addressCreationRequestModel}) = _$AddAddressImpl;

  AddressCreationRequestModel get addressCreationRequestModel;
  @JsonKey(ignore: true)
  _$$AddAddressImplCopyWith<_$AddAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAddressImplCopyWith<$Res> {
  factory _$$DeleteAddressImplCopyWith(
          _$DeleteAddressImpl value, $Res Function(_$DeleteAddressImpl) then) =
      __$$DeleteAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteAddressImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$DeleteAddressImpl>
    implements _$$DeleteAddressImplCopyWith<$Res> {
  __$$DeleteAddressImplCopyWithImpl(
      _$DeleteAddressImpl _value, $Res Function(_$DeleteAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteAddressImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteAddressImpl implements DeleteAddress {
  const _$DeleteAddressImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'ProfileEvent.deleteAddress(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAddressImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAddressImplCopyWith<_$DeleteAddressImpl> get copyWith =>
      __$$DeleteAddressImplCopyWithImpl<_$DeleteAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressCreationRequestModel addressCreationRequestModel)
        addAddress,
    required TResult Function(int index) deleteAddress,
    required TResult Function(int selectedadress) selecteAddress,
    required TResult Function(bool isLoad) getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
    required TResult Function(LoginModel? loginModel) getDeletionOtp,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        deleteAccount,
    required TResult Function() clear,
  }) {
    return deleteAddress(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function(int selectedadress)? selecteAddress,
    TResult? Function(bool isLoad)? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult? Function(LoginModel? loginModel)? getDeletionOtp,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult? Function()? clear,
  }) {
    return deleteAddress?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function(int selectedadress)? selecteAddress,
    TResult Function(bool isLoad)? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult Function(LoginModel? loginModel)? getDeletionOtp,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (deleteAddress != null) {
      return deleteAddress(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
    required TResult Function(SelecteAddress value) selecteAddress,
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetDeletionOtp value) getDeletionOtp,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(Clear value) clear,
  }) {
    return deleteAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(SelecteAddress value)? selecteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(GetDeletionOtp value)? getDeletionOtp,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(Clear value)? clear,
  }) {
    return deleteAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(SelecteAddress value)? selecteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetDeletionOtp value)? getDeletionOtp,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (deleteAddress != null) {
      return deleteAddress(this);
    }
    return orElse();
  }
}

abstract class DeleteAddress implements ProfileEvent {
  const factory DeleteAddress({required final int index}) = _$DeleteAddressImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DeleteAddressImplCopyWith<_$DeleteAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelecteAddressImplCopyWith<$Res> {
  factory _$$SelecteAddressImplCopyWith(_$SelecteAddressImpl value,
          $Res Function(_$SelecteAddressImpl) then) =
      __$$SelecteAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedadress});
}

/// @nodoc
class __$$SelecteAddressImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$SelecteAddressImpl>
    implements _$$SelecteAddressImplCopyWith<$Res> {
  __$$SelecteAddressImplCopyWithImpl(
      _$SelecteAddressImpl _value, $Res Function(_$SelecteAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedadress = null,
  }) {
    return _then(_$SelecteAddressImpl(
      selectedadress: null == selectedadress
          ? _value.selectedadress
          : selectedadress // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelecteAddressImpl implements SelecteAddress {
  const _$SelecteAddressImpl({required this.selectedadress});

  @override
  final int selectedadress;

  @override
  String toString() {
    return 'ProfileEvent.selecteAddress(selectedadress: $selectedadress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelecteAddressImpl &&
            (identical(other.selectedadress, selectedadress) ||
                other.selectedadress == selectedadress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedadress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelecteAddressImplCopyWith<_$SelecteAddressImpl> get copyWith =>
      __$$SelecteAddressImplCopyWithImpl<_$SelecteAddressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressCreationRequestModel addressCreationRequestModel)
        addAddress,
    required TResult Function(int index) deleteAddress,
    required TResult Function(int selectedadress) selecteAddress,
    required TResult Function(bool isLoad) getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
    required TResult Function(LoginModel? loginModel) getDeletionOtp,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        deleteAccount,
    required TResult Function() clear,
  }) {
    return selecteAddress(selectedadress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function(int selectedadress)? selecteAddress,
    TResult? Function(bool isLoad)? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult? Function(LoginModel? loginModel)? getDeletionOtp,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult? Function()? clear,
  }) {
    return selecteAddress?.call(selectedadress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function(int selectedadress)? selecteAddress,
    TResult Function(bool isLoad)? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult Function(LoginModel? loginModel)? getDeletionOtp,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (selecteAddress != null) {
      return selecteAddress(selectedadress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
    required TResult Function(SelecteAddress value) selecteAddress,
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetDeletionOtp value) getDeletionOtp,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(Clear value) clear,
  }) {
    return selecteAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(SelecteAddress value)? selecteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(GetDeletionOtp value)? getDeletionOtp,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(Clear value)? clear,
  }) {
    return selecteAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(SelecteAddress value)? selecteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetDeletionOtp value)? getDeletionOtp,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (selecteAddress != null) {
      return selecteAddress(this);
    }
    return orElse();
  }
}

abstract class SelecteAddress implements ProfileEvent {
  const factory SelecteAddress({required final int selectedadress}) =
      _$SelecteAddressImpl;

  int get selectedadress;
  @JsonKey(ignore: true)
  _$$SelecteAddressImplCopyWith<_$SelecteAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserInfoImplCopyWith<$Res> {
  factory _$$GetUserInfoImplCopyWith(
          _$GetUserInfoImpl value, $Res Function(_$GetUserInfoImpl) then) =
      __$$GetUserInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoad});
}

/// @nodoc
class __$$GetUserInfoImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetUserInfoImpl>
    implements _$$GetUserInfoImplCopyWith<$Res> {
  __$$GetUserInfoImplCopyWithImpl(
      _$GetUserInfoImpl _value, $Res Function(_$GetUserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoad = null,
  }) {
    return _then(_$GetUserInfoImpl(
      isLoad: null == isLoad
          ? _value.isLoad
          : isLoad // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetUserInfoImpl implements GetUserInfo {
  const _$GetUserInfoImpl({required this.isLoad});

  @override
  final bool isLoad;

  @override
  String toString() {
    return 'ProfileEvent.getUserInfo(isLoad: $isLoad)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserInfoImpl &&
            (identical(other.isLoad, isLoad) || other.isLoad == isLoad));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoad);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserInfoImplCopyWith<_$GetUserInfoImpl> get copyWith =>
      __$$GetUserInfoImplCopyWithImpl<_$GetUserInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressCreationRequestModel addressCreationRequestModel)
        addAddress,
    required TResult Function(int index) deleteAddress,
    required TResult Function(int selectedadress) selecteAddress,
    required TResult Function(bool isLoad) getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
    required TResult Function(LoginModel? loginModel) getDeletionOtp,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        deleteAccount,
    required TResult Function() clear,
  }) {
    return getUserInfo(isLoad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function(int selectedadress)? selecteAddress,
    TResult? Function(bool isLoad)? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult? Function(LoginModel? loginModel)? getDeletionOtp,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult? Function()? clear,
  }) {
    return getUserInfo?.call(isLoad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function(int selectedadress)? selecteAddress,
    TResult Function(bool isLoad)? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult Function(LoginModel? loginModel)? getDeletionOtp,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(isLoad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
    required TResult Function(SelecteAddress value) selecteAddress,
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetDeletionOtp value) getDeletionOtp,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(Clear value) clear,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(SelecteAddress value)? selecteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(GetDeletionOtp value)? getDeletionOtp,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(Clear value)? clear,
  }) {
    return getUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(SelecteAddress value)? selecteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetDeletionOtp value)? getDeletionOtp,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class GetUserInfo implements ProfileEvent {
  const factory GetUserInfo({required final bool isLoad}) = _$GetUserInfoImpl;

  bool get isLoad;
  @JsonKey(ignore: true)
  _$$GetUserInfoImplCopyWith<_$GetUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserImplCopyWith<$Res> {
  factory _$$UpdateUserImplCopyWith(
          _$UpdateUserImpl value, $Res Function(_$UpdateUserImpl) then) =
      __$$UpdateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserInfoRequestModel userInfoRequestModel});
}

/// @nodoc
class __$$UpdateUserImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateUserImpl>
    implements _$$UpdateUserImplCopyWith<$Res> {
  __$$UpdateUserImplCopyWithImpl(
      _$UpdateUserImpl _value, $Res Function(_$UpdateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfoRequestModel = null,
  }) {
    return _then(_$UpdateUserImpl(
      userInfoRequestModel: null == userInfoRequestModel
          ? _value.userInfoRequestModel
          : userInfoRequestModel // ignore: cast_nullable_to_non_nullable
              as UserInfoRequestModel,
    ));
  }
}

/// @nodoc

class _$UpdateUserImpl implements UpdateUser {
  const _$UpdateUserImpl({required this.userInfoRequestModel});

  @override
  final UserInfoRequestModel userInfoRequestModel;

  @override
  String toString() {
    return 'ProfileEvent.updateUser(userInfoRequestModel: $userInfoRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserImpl &&
            (identical(other.userInfoRequestModel, userInfoRequestModel) ||
                other.userInfoRequestModel == userInfoRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userInfoRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      __$$UpdateUserImplCopyWithImpl<_$UpdateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressCreationRequestModel addressCreationRequestModel)
        addAddress,
    required TResult Function(int index) deleteAddress,
    required TResult Function(int selectedadress) selecteAddress,
    required TResult Function(bool isLoad) getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
    required TResult Function(LoginModel? loginModel) getDeletionOtp,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        deleteAccount,
    required TResult Function() clear,
  }) {
    return updateUser(userInfoRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function(int selectedadress)? selecteAddress,
    TResult? Function(bool isLoad)? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult? Function(LoginModel? loginModel)? getDeletionOtp,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult? Function()? clear,
  }) {
    return updateUser?.call(userInfoRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function(int selectedadress)? selecteAddress,
    TResult Function(bool isLoad)? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult Function(LoginModel? loginModel)? getDeletionOtp,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(userInfoRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
    required TResult Function(SelecteAddress value) selecteAddress,
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetDeletionOtp value) getDeletionOtp,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(Clear value) clear,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(SelecteAddress value)? selecteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(GetDeletionOtp value)? getDeletionOtp,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(Clear value)? clear,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(SelecteAddress value)? selecteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetDeletionOtp value)? getDeletionOtp,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUser implements ProfileEvent {
  const factory UpdateUser(
          {required final UserInfoRequestModel userInfoRequestModel}) =
      _$UpdateUserImpl;

  UserInfoRequestModel get userInfoRequestModel;
  @JsonKey(ignore: true)
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDeletionOtpImplCopyWith<$Res> {
  factory _$$GetDeletionOtpImplCopyWith(_$GetDeletionOtpImpl value,
          $Res Function(_$GetDeletionOtpImpl) then) =
      __$$GetDeletionOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginModel? loginModel});
}

/// @nodoc
class __$$GetDeletionOtpImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetDeletionOtpImpl>
    implements _$$GetDeletionOtpImplCopyWith<$Res> {
  __$$GetDeletionOtpImplCopyWithImpl(
      _$GetDeletionOtpImpl _value, $Res Function(_$GetDeletionOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginModel = freezed,
  }) {
    return _then(_$GetDeletionOtpImpl(
      loginModel: freezed == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
    ));
  }
}

/// @nodoc

class _$GetDeletionOtpImpl implements GetDeletionOtp {
  const _$GetDeletionOtpImpl({this.loginModel});

  @override
  final LoginModel? loginModel;

  @override
  String toString() {
    return 'ProfileEvent.getDeletionOtp(loginModel: $loginModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDeletionOtpImpl &&
            (identical(other.loginModel, loginModel) ||
                other.loginModel == loginModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDeletionOtpImplCopyWith<_$GetDeletionOtpImpl> get copyWith =>
      __$$GetDeletionOtpImplCopyWithImpl<_$GetDeletionOtpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressCreationRequestModel addressCreationRequestModel)
        addAddress,
    required TResult Function(int index) deleteAddress,
    required TResult Function(int selectedadress) selecteAddress,
    required TResult Function(bool isLoad) getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
    required TResult Function(LoginModel? loginModel) getDeletionOtp,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        deleteAccount,
    required TResult Function() clear,
  }) {
    return getDeletionOtp(loginModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function(int selectedadress)? selecteAddress,
    TResult? Function(bool isLoad)? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult? Function(LoginModel? loginModel)? getDeletionOtp,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult? Function()? clear,
  }) {
    return getDeletionOtp?.call(loginModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function(int selectedadress)? selecteAddress,
    TResult Function(bool isLoad)? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult Function(LoginModel? loginModel)? getDeletionOtp,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (getDeletionOtp != null) {
      return getDeletionOtp(loginModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
    required TResult Function(SelecteAddress value) selecteAddress,
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetDeletionOtp value) getDeletionOtp,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(Clear value) clear,
  }) {
    return getDeletionOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(SelecteAddress value)? selecteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(GetDeletionOtp value)? getDeletionOtp,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(Clear value)? clear,
  }) {
    return getDeletionOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(SelecteAddress value)? selecteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetDeletionOtp value)? getDeletionOtp,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (getDeletionOtp != null) {
      return getDeletionOtp(this);
    }
    return orElse();
  }
}

abstract class GetDeletionOtp implements ProfileEvent {
  const factory GetDeletionOtp({final LoginModel? loginModel}) =
      _$GetDeletionOtpImpl;

  LoginModel? get loginModel;
  @JsonKey(ignore: true)
  _$$GetDeletionOtpImplCopyWith<_$GetDeletionOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAccountImplCopyWith<$Res> {
  factory _$$DeleteAccountImplCopyWith(
          _$DeleteAccountImpl value, $Res Function(_$DeleteAccountImpl) then) =
      __$$DeleteAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpVerifyRequestModel otpVerifyRequestModel});
}

/// @nodoc
class __$$DeleteAccountImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$DeleteAccountImpl>
    implements _$$DeleteAccountImplCopyWith<$Res> {
  __$$DeleteAccountImplCopyWithImpl(
      _$DeleteAccountImpl _value, $Res Function(_$DeleteAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpVerifyRequestModel = null,
  }) {
    return _then(_$DeleteAccountImpl(
      otpVerifyRequestModel: null == otpVerifyRequestModel
          ? _value.otpVerifyRequestModel
          : otpVerifyRequestModel // ignore: cast_nullable_to_non_nullable
              as OtpVerifyRequestModel,
    ));
  }
}

/// @nodoc

class _$DeleteAccountImpl implements DeleteAccount {
  const _$DeleteAccountImpl({required this.otpVerifyRequestModel});

  @override
  final OtpVerifyRequestModel otpVerifyRequestModel;

  @override
  String toString() {
    return 'ProfileEvent.deleteAccount(otpVerifyRequestModel: $otpVerifyRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountImpl &&
            (identical(other.otpVerifyRequestModel, otpVerifyRequestModel) ||
                other.otpVerifyRequestModel == otpVerifyRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpVerifyRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountImplCopyWith<_$DeleteAccountImpl> get copyWith =>
      __$$DeleteAccountImplCopyWithImpl<_$DeleteAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressCreationRequestModel addressCreationRequestModel)
        addAddress,
    required TResult Function(int index) deleteAddress,
    required TResult Function(int selectedadress) selecteAddress,
    required TResult Function(bool isLoad) getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
    required TResult Function(LoginModel? loginModel) getDeletionOtp,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        deleteAccount,
    required TResult Function() clear,
  }) {
    return deleteAccount(otpVerifyRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function(int selectedadress)? selecteAddress,
    TResult? Function(bool isLoad)? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult? Function(LoginModel? loginModel)? getDeletionOtp,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult? Function()? clear,
  }) {
    return deleteAccount?.call(otpVerifyRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function(int selectedadress)? selecteAddress,
    TResult Function(bool isLoad)? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult Function(LoginModel? loginModel)? getDeletionOtp,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(otpVerifyRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
    required TResult Function(SelecteAddress value) selecteAddress,
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetDeletionOtp value) getDeletionOtp,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(Clear value) clear,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(SelecteAddress value)? selecteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(GetDeletionOtp value)? getDeletionOtp,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(Clear value)? clear,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(SelecteAddress value)? selecteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetDeletionOtp value)? getDeletionOtp,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class DeleteAccount implements ProfileEvent {
  const factory DeleteAccount(
          {required final OtpVerifyRequestModel otpVerifyRequestModel}) =
      _$DeleteAccountImpl;

  OtpVerifyRequestModel get otpVerifyRequestModel;
  @JsonKey(ignore: true)
  _$$DeleteAccountImplCopyWith<_$DeleteAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearImpl implements Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'ProfileEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AddressCreationRequestModel addressCreationRequestModel)
        addAddress,
    required TResult Function(int index) deleteAddress,
    required TResult Function(int selectedadress) selecteAddress,
    required TResult Function(bool isLoad) getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
    required TResult Function(LoginModel? loginModel) getDeletionOtp,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        deleteAccount,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function(int selectedadress)? selecteAddress,
    TResult? Function(bool isLoad)? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult? Function(LoginModel? loginModel)? getDeletionOtp,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function(int selectedadress)? selecteAddress,
    TResult Function(bool isLoad)? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    TResult Function(LoginModel? loginModel)? getDeletionOtp,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)?
        deleteAccount,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
    required TResult Function(SelecteAddress value) selecteAddress,
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(GetDeletionOtp value) getDeletionOtp,
    required TResult Function(DeleteAccount value) deleteAccount,
    required TResult Function(Clear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(SelecteAddress value)? selecteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(GetDeletionOtp value)? getDeletionOtp,
    TResult? Function(DeleteAccount value)? deleteAccount,
    TResult? Function(Clear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(SelecteAddress value)? selecteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(GetDeletionOtp value)? getDeletionOtp,
    TResult Function(DeleteAccount value)? deleteAccount,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class Clear implements ProfileEvent {
  const factory Clear() = _$ClearImpl;
}

/// @nodoc
mixin _$ProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  int get selectedAddressIndex => throw _privateConstructorUsedError;
  bool get deleteAccountLoading => throw _privateConstructorUsedError;
  bool get accountDeleted => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<String> get address => throw _privateConstructorUsedError;
  AddressCreationResponceModel? get addressCreationResponceModel =>
      throw _privateConstructorUsedError;
  UserInfo? get user => throw _privateConstructorUsedError;
  DeleteAccountResponceModel? get deleteAccountResponceModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      int selectedAddressIndex,
      bool deleteAccountLoading,
      bool accountDeleted,
      String? message,
      List<String> address,
      AddressCreationResponceModel? addressCreationResponceModel,
      UserInfo? user,
      DeleteAccountResponceModel? deleteAccountResponceModel});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? selectedAddressIndex = null,
    Object? deleteAccountLoading = null,
    Object? accountDeleted = null,
    Object? message = freezed,
    Object? address = null,
    Object? addressCreationResponceModel = freezed,
    Object? user = freezed,
    Object? deleteAccountResponceModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAddressIndex: null == selectedAddressIndex
          ? _value.selectedAddressIndex
          : selectedAddressIndex // ignore: cast_nullable_to_non_nullable
              as int,
      deleteAccountLoading: null == deleteAccountLoading
          ? _value.deleteAccountLoading
          : deleteAccountLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      accountDeleted: null == accountDeleted
          ? _value.accountDeleted
          : accountDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<String>,
      addressCreationResponceModel: freezed == addressCreationResponceModel
          ? _value.addressCreationResponceModel
          : addressCreationResponceModel // ignore: cast_nullable_to_non_nullable
              as AddressCreationResponceModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
      deleteAccountResponceModel: freezed == deleteAccountResponceModel
          ? _value.deleteAccountResponceModel
          : deleteAccountResponceModel // ignore: cast_nullable_to_non_nullable
              as DeleteAccountResponceModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      int selectedAddressIndex,
      bool deleteAccountLoading,
      bool accountDeleted,
      String? message,
      List<String> address,
      AddressCreationResponceModel? addressCreationResponceModel,
      UserInfo? user,
      DeleteAccountResponceModel? deleteAccountResponceModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? selectedAddressIndex = null,
    Object? deleteAccountLoading = null,
    Object? accountDeleted = null,
    Object? message = freezed,
    Object? address = null,
    Object? addressCreationResponceModel = freezed,
    Object? user = freezed,
    Object? deleteAccountResponceModel = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAddressIndex: null == selectedAddressIndex
          ? _value.selectedAddressIndex
          : selectedAddressIndex // ignore: cast_nullable_to_non_nullable
              as int,
      deleteAccountLoading: null == deleteAccountLoading
          ? _value.deleteAccountLoading
          : deleteAccountLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      accountDeleted: null == accountDeleted
          ? _value.accountDeleted
          : accountDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<String>,
      addressCreationResponceModel: freezed == addressCreationResponceModel
          ? _value.addressCreationResponceModel
          : addressCreationResponceModel // ignore: cast_nullable_to_non_nullable
              as AddressCreationResponceModel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
      deleteAccountResponceModel: freezed == deleteAccountResponceModel
          ? _value.deleteAccountResponceModel
          : deleteAccountResponceModel // ignore: cast_nullable_to_non_nullable
              as DeleteAccountResponceModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.selectedAddressIndex,
      required this.deleteAccountLoading,
      required this.accountDeleted,
      this.message,
      required final List<String> address,
      this.addressCreationResponceModel,
      this.user,
      this.deleteAccountResponceModel})
      : _address = address;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final int selectedAddressIndex;
  @override
  final bool deleteAccountLoading;
  @override
  final bool accountDeleted;
  @override
  final String? message;
  final List<String> _address;
  @override
  List<String> get address {
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_address);
  }

  @override
  final AddressCreationResponceModel? addressCreationResponceModel;
  @override
  final UserInfo? user;
  @override
  final DeleteAccountResponceModel? deleteAccountResponceModel;

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, hasError: $hasError, selectedAddressIndex: $selectedAddressIndex, deleteAccountLoading: $deleteAccountLoading, accountDeleted: $accountDeleted, message: $message, address: $address, addressCreationResponceModel: $addressCreationResponceModel, user: $user, deleteAccountResponceModel: $deleteAccountResponceModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.selectedAddressIndex, selectedAddressIndex) ||
                other.selectedAddressIndex == selectedAddressIndex) &&
            (identical(other.deleteAccountLoading, deleteAccountLoading) ||
                other.deleteAccountLoading == deleteAccountLoading) &&
            (identical(other.accountDeleted, accountDeleted) ||
                other.accountDeleted == accountDeleted) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.addressCreationResponceModel,
                    addressCreationResponceModel) ||
                other.addressCreationResponceModel ==
                    addressCreationResponceModel) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.deleteAccountResponceModel,
                    deleteAccountResponceModel) ||
                other.deleteAccountResponceModel ==
                    deleteAccountResponceModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      selectedAddressIndex,
      deleteAccountLoading,
      accountDeleted,
      message,
      const DeepCollectionEquality().hash(_address),
      addressCreationResponceModel,
      user,
      deleteAccountResponceModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ProfileState {
  const factory _Initial(
          {required final bool isLoading,
          required final bool hasError,
          required final int selectedAddressIndex,
          required final bool deleteAccountLoading,
          required final bool accountDeleted,
          final String? message,
          required final List<String> address,
          final AddressCreationResponceModel? addressCreationResponceModel,
          final UserInfo? user,
          final DeleteAccountResponceModel? deleteAccountResponceModel}) =
      _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  int get selectedAddressIndex;
  @override
  bool get deleteAccountLoading;
  @override
  bool get accountDeleted;
  @override
  String? get message;
  @override
  List<String> get address;
  @override
  AddressCreationResponceModel? get addressCreationResponceModel;
  @override
  UserInfo? get user;
  @override
  DeleteAccountResponceModel? get deleteAccountResponceModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
