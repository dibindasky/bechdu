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
    required TResult Function() getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function()? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function()? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
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
    required TResult Function() getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
  }) {
    return addAddress(addressCreationRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function()? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
  }) {
    return addAddress?.call(addressCreationRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function()? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
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
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
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
    required TResult Function() getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
  }) {
    return deleteAddress(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function()? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
  }) {
    return deleteAddress?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function()? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
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
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return deleteAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return deleteAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
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
abstract class _$$GetUserInfoImplCopyWith<$Res> {
  factory _$$GetUserInfoImplCopyWith(
          _$GetUserInfoImpl value, $Res Function(_$GetUserInfoImpl) then) =
      __$$GetUserInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserInfoImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetUserInfoImpl>
    implements _$$GetUserInfoImplCopyWith<$Res> {
  __$$GetUserInfoImplCopyWithImpl(
      _$GetUserInfoImpl _value, $Res Function(_$GetUserInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserInfoImpl implements GetUserInfo {
  const _$GetUserInfoImpl();

  @override
  String toString() {
    return 'ProfileEvent.getUserInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserInfoImpl);
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
    required TResult Function() getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
  }) {
    return getUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function()? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
  }) {
    return getUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function()? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddAddress value) addAddress,
    required TResult Function(DeleteAddress value) deleteAddress,
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return getUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class GetUserInfo implements ProfileEvent {
  const factory GetUserInfo() = _$GetUserInfoImpl;
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
    required TResult Function() getUserInfo,
    required TResult Function(UserInfoRequestModel userInfoRequestModel)
        updateUser,
  }) {
    return updateUser(userInfoRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult? Function(int index)? deleteAddress,
    TResult? Function()? getUserInfo,
    TResult? Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
  }) {
    return updateUser?.call(userInfoRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressCreationRequestModel addressCreationRequestModel)?
        addAddress,
    TResult Function(int index)? deleteAddress,
    TResult Function()? getUserInfo,
    TResult Function(UserInfoRequestModel userInfoRequestModel)? updateUser,
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
    required TResult Function(GetUserInfo value) getUserInfo,
    required TResult Function(UpdateUser value) updateUser,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddAddress value)? addAddress,
    TResult? Function(DeleteAddress value)? deleteAddress,
    TResult? Function(GetUserInfo value)? getUserInfo,
    TResult? Function(UpdateUser value)? updateUser,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddAddress value)? addAddress,
    TResult Function(DeleteAddress value)? deleteAddress,
    TResult Function(GetUserInfo value)? getUserInfo,
    TResult Function(UpdateUser value)? updateUser,
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
mixin _$ProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<String> get address => throw _privateConstructorUsedError;
  AddressCreationResponceModel? get addressCreationResponceModel =>
      throw _privateConstructorUsedError;
  UserInfo? get user => throw _privateConstructorUsedError;
  UserInfoResponceModel? get userInfoResponceModel =>
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
      String? message,
      List<String> address,
      AddressCreationResponceModel? addressCreationResponceModel,
      UserInfo? user,
      UserInfoResponceModel? userInfoResponceModel});
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
    Object? message = freezed,
    Object? address = null,
    Object? addressCreationResponceModel = freezed,
    Object? user = freezed,
    Object? userInfoResponceModel = freezed,
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
      userInfoResponceModel: freezed == userInfoResponceModel
          ? _value.userInfoResponceModel
          : userInfoResponceModel // ignore: cast_nullable_to_non_nullable
              as UserInfoResponceModel?,
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
      String? message,
      List<String> address,
      AddressCreationResponceModel? addressCreationResponceModel,
      UserInfo? user,
      UserInfoResponceModel? userInfoResponceModel});
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
    Object? message = freezed,
    Object? address = null,
    Object? addressCreationResponceModel = freezed,
    Object? user = freezed,
    Object? userInfoResponceModel = freezed,
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
      userInfoResponceModel: freezed == userInfoResponceModel
          ? _value.userInfoResponceModel
          : userInfoResponceModel // ignore: cast_nullable_to_non_nullable
              as UserInfoResponceModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      required final List<String> address,
      this.addressCreationResponceModel,
      this.user,
      this.userInfoResponceModel})
      : _address = address;

  @override
  final bool isLoading;
  @override
  final bool hasError;
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
  final UserInfoResponceModel? userInfoResponceModel;

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, hasError: $hasError, message: $message, address: $address, addressCreationResponceModel: $addressCreationResponceModel, user: $user, userInfoResponceModel: $userInfoResponceModel)';
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
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.addressCreationResponceModel,
                    addressCreationResponceModel) ||
                other.addressCreationResponceModel ==
                    addressCreationResponceModel) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userInfoResponceModel, userInfoResponceModel) ||
                other.userInfoResponceModel == userInfoResponceModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      message,
      const DeepCollectionEquality().hash(_address),
      addressCreationResponceModel,
      user,
      userInfoResponceModel);

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
      final String? message,
      required final List<String> address,
      final AddressCreationResponceModel? addressCreationResponceModel,
      final UserInfo? user,
      final UserInfoResponceModel? userInfoResponceModel}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  List<String> get address;
  @override
  AddressCreationResponceModel? get addressCreationResponceModel;
  @override
  UserInfo? get user;
  @override
  UserInfoResponceModel? get userInfoResponceModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
