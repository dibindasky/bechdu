// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginModel loginModel) otpSend,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        otpVeriying,
    required TResult Function() logOut,
    required TResult Function() logOrNot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginModel loginModel)? otpSend,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)? otpVeriying,
    TResult? Function()? logOut,
    TResult? Function()? logOrNot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginModel loginModel)? otpSend,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)? otpVeriying,
    TResult Function()? logOut,
    TResult Function()? logOrNot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpSend value) otpSend,
    required TResult Function(OtpVeriying value) otpVeriying,
    required TResult Function(LogOut value) logOut,
    required TResult Function(LogOrNot value) logOrNot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpSend value)? otpSend,
    TResult? Function(OtpVeriying value)? otpVeriying,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(LogOrNot value)? logOrNot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpSend value)? otpSend,
    TResult Function(OtpVeriying value)? otpVeriying,
    TResult Function(LogOut value)? logOut,
    TResult Function(LogOrNot value)? logOrNot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OtpSendImplCopyWith<$Res> {
  factory _$$OtpSendImplCopyWith(
          _$OtpSendImpl value, $Res Function(_$OtpSendImpl) then) =
      __$$OtpSendImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginModel loginModel});
}

/// @nodoc
class __$$OtpSendImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OtpSendImpl>
    implements _$$OtpSendImplCopyWith<$Res> {
  __$$OtpSendImplCopyWithImpl(
      _$OtpSendImpl _value, $Res Function(_$OtpSendImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginModel = null,
  }) {
    return _then(_$OtpSendImpl(
      loginModel: null == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel,
    ));
  }
}

/// @nodoc

class _$OtpSendImpl implements OtpSend {
  const _$OtpSendImpl({required this.loginModel});

  @override
  final LoginModel loginModel;

  @override
  String toString() {
    return 'AuthEvent.otpSend(loginModel: $loginModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSendImpl &&
            (identical(other.loginModel, loginModel) ||
                other.loginModel == loginModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSendImplCopyWith<_$OtpSendImpl> get copyWith =>
      __$$OtpSendImplCopyWithImpl<_$OtpSendImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginModel loginModel) otpSend,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        otpVeriying,
    required TResult Function() logOut,
    required TResult Function() logOrNot,
  }) {
    return otpSend(loginModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginModel loginModel)? otpSend,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)? otpVeriying,
    TResult? Function()? logOut,
    TResult? Function()? logOrNot,
  }) {
    return otpSend?.call(loginModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginModel loginModel)? otpSend,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)? otpVeriying,
    TResult Function()? logOut,
    TResult Function()? logOrNot,
    required TResult orElse(),
  }) {
    if (otpSend != null) {
      return otpSend(loginModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpSend value) otpSend,
    required TResult Function(OtpVeriying value) otpVeriying,
    required TResult Function(LogOut value) logOut,
    required TResult Function(LogOrNot value) logOrNot,
  }) {
    return otpSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpSend value)? otpSend,
    TResult? Function(OtpVeriying value)? otpVeriying,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(LogOrNot value)? logOrNot,
  }) {
    return otpSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpSend value)? otpSend,
    TResult Function(OtpVeriying value)? otpVeriying,
    TResult Function(LogOut value)? logOut,
    TResult Function(LogOrNot value)? logOrNot,
    required TResult orElse(),
  }) {
    if (otpSend != null) {
      return otpSend(this);
    }
    return orElse();
  }
}

abstract class OtpSend implements AuthEvent {
  const factory OtpSend({required final LoginModel loginModel}) = _$OtpSendImpl;

  LoginModel get loginModel;
  @JsonKey(ignore: true)
  _$$OtpSendImplCopyWith<_$OtpSendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVeriyingImplCopyWith<$Res> {
  factory _$$OtpVeriyingImplCopyWith(
          _$OtpVeriyingImpl value, $Res Function(_$OtpVeriyingImpl) then) =
      __$$OtpVeriyingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpVerifyRequestModel otpVerifyRequestModel});
}

/// @nodoc
class __$$OtpVeriyingImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OtpVeriyingImpl>
    implements _$$OtpVeriyingImplCopyWith<$Res> {
  __$$OtpVeriyingImplCopyWithImpl(
      _$OtpVeriyingImpl _value, $Res Function(_$OtpVeriyingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpVerifyRequestModel = null,
  }) {
    return _then(_$OtpVeriyingImpl(
      otpVerifyRequestModel: null == otpVerifyRequestModel
          ? _value.otpVerifyRequestModel
          : otpVerifyRequestModel // ignore: cast_nullable_to_non_nullable
              as OtpVerifyRequestModel,
    ));
  }
}

/// @nodoc

class _$OtpVeriyingImpl implements OtpVeriying {
  const _$OtpVeriyingImpl({required this.otpVerifyRequestModel});

  @override
  final OtpVerifyRequestModel otpVerifyRequestModel;

  @override
  String toString() {
    return 'AuthEvent.otpVeriying(otpVerifyRequestModel: $otpVerifyRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVeriyingImpl &&
            (identical(other.otpVerifyRequestModel, otpVerifyRequestModel) ||
                other.otpVerifyRequestModel == otpVerifyRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpVerifyRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVeriyingImplCopyWith<_$OtpVeriyingImpl> get copyWith =>
      __$$OtpVeriyingImplCopyWithImpl<_$OtpVeriyingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginModel loginModel) otpSend,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        otpVeriying,
    required TResult Function() logOut,
    required TResult Function() logOrNot,
  }) {
    return otpVeriying(otpVerifyRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginModel loginModel)? otpSend,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)? otpVeriying,
    TResult? Function()? logOut,
    TResult? Function()? logOrNot,
  }) {
    return otpVeriying?.call(otpVerifyRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginModel loginModel)? otpSend,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)? otpVeriying,
    TResult Function()? logOut,
    TResult Function()? logOrNot,
    required TResult orElse(),
  }) {
    if (otpVeriying != null) {
      return otpVeriying(otpVerifyRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpSend value) otpSend,
    required TResult Function(OtpVeriying value) otpVeriying,
    required TResult Function(LogOut value) logOut,
    required TResult Function(LogOrNot value) logOrNot,
  }) {
    return otpVeriying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpSend value)? otpSend,
    TResult? Function(OtpVeriying value)? otpVeriying,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(LogOrNot value)? logOrNot,
  }) {
    return otpVeriying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpSend value)? otpSend,
    TResult Function(OtpVeriying value)? otpVeriying,
    TResult Function(LogOut value)? logOut,
    TResult Function(LogOrNot value)? logOrNot,
    required TResult orElse(),
  }) {
    if (otpVeriying != null) {
      return otpVeriying(this);
    }
    return orElse();
  }
}

abstract class OtpVeriying implements AuthEvent {
  const factory OtpVeriying(
          {required final OtpVerifyRequestModel otpVerifyRequestModel}) =
      _$OtpVeriyingImpl;

  OtpVerifyRequestModel get otpVerifyRequestModel;
  @JsonKey(ignore: true)
  _$$OtpVeriyingImplCopyWith<_$OtpVeriyingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginModel loginModel) otpSend,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        otpVeriying,
    required TResult Function() logOut,
    required TResult Function() logOrNot,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginModel loginModel)? otpSend,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)? otpVeriying,
    TResult? Function()? logOut,
    TResult? Function()? logOrNot,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginModel loginModel)? otpSend,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)? otpVeriying,
    TResult Function()? logOut,
    TResult Function()? logOrNot,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpSend value) otpSend,
    required TResult Function(OtpVeriying value) otpVeriying,
    required TResult Function(LogOut value) logOut,
    required TResult Function(LogOrNot value) logOrNot,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpSend value)? otpSend,
    TResult? Function(OtpVeriying value)? otpVeriying,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(LogOrNot value)? logOrNot,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpSend value)? otpSend,
    TResult Function(OtpVeriying value)? otpVeriying,
    TResult Function(LogOut value)? logOut,
    TResult Function(LogOrNot value)? logOrNot,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOut implements AuthEvent {
  const factory LogOut() = _$LogOutImpl;
}

/// @nodoc
abstract class _$$LogOrNotImplCopyWith<$Res> {
  factory _$$LogOrNotImplCopyWith(
          _$LogOrNotImpl value, $Res Function(_$LogOrNotImpl) then) =
      __$$LogOrNotImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOrNotImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOrNotImpl>
    implements _$$LogOrNotImplCopyWith<$Res> {
  __$$LogOrNotImplCopyWithImpl(
      _$LogOrNotImpl _value, $Res Function(_$LogOrNotImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOrNotImpl implements LogOrNot {
  const _$LogOrNotImpl();

  @override
  String toString() {
    return 'AuthEvent.logOrNot()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOrNotImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginModel loginModel) otpSend,
    required TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)
        otpVeriying,
    required TResult Function() logOut,
    required TResult Function() logOrNot,
  }) {
    return logOrNot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginModel loginModel)? otpSend,
    TResult? Function(OtpVerifyRequestModel otpVerifyRequestModel)? otpVeriying,
    TResult? Function()? logOut,
    TResult? Function()? logOrNot,
  }) {
    return logOrNot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginModel loginModel)? otpSend,
    TResult Function(OtpVerifyRequestModel otpVerifyRequestModel)? otpVeriying,
    TResult Function()? logOut,
    TResult Function()? logOrNot,
    required TResult orElse(),
  }) {
    if (logOrNot != null) {
      return logOrNot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpSend value) otpSend,
    required TResult Function(OtpVeriying value) otpVeriying,
    required TResult Function(LogOut value) logOut,
    required TResult Function(LogOrNot value) logOrNot,
  }) {
    return logOrNot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpSend value)? otpSend,
    TResult? Function(OtpVeriying value)? otpVeriying,
    TResult? Function(LogOut value)? logOut,
    TResult? Function(LogOrNot value)? logOrNot,
  }) {
    return logOrNot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpSend value)? otpSend,
    TResult Function(OtpVeriying value)? otpVeriying,
    TResult Function(LogOut value)? logOut,
    TResult Function(LogOrNot value)? logOrNot,
    required TResult orElse(),
  }) {
    if (logOrNot != null) {
      return logOrNot(this);
    }
    return orElse();
  }
}

abstract class LogOrNot implements AuthEvent {
  const factory LogOrNot() = _$LogOrNotImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get load => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  OtpSendResponceModel? get otpSendResponceModel =>
      throw _privateConstructorUsedError;
  OtpVerifyResponceModel? get otpVerifyResponceModel =>
      throw _privateConstructorUsedError;
  bool get logOrNot => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool load,
      String? message,
      OtpSendResponceModel? otpSendResponceModel,
      OtpVerifyResponceModel? otpVerifyResponceModel,
      bool logOrNot,
      String? number});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? load = null,
    Object? message = freezed,
    Object? otpSendResponceModel = freezed,
    Object? otpVerifyResponceModel = freezed,
    Object? logOrNot = null,
    Object? number = freezed,
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
      load: null == load
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      otpSendResponceModel: freezed == otpSendResponceModel
          ? _value.otpSendResponceModel
          : otpSendResponceModel // ignore: cast_nullable_to_non_nullable
              as OtpSendResponceModel?,
      otpVerifyResponceModel: freezed == otpVerifyResponceModel
          ? _value.otpVerifyResponceModel
          : otpVerifyResponceModel // ignore: cast_nullable_to_non_nullable
              as OtpVerifyResponceModel?,
      logOrNot: null == logOrNot
          ? _value.logOrNot
          : logOrNot // ignore: cast_nullable_to_non_nullable
              as bool,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool load,
      String? message,
      OtpSendResponceModel? otpSendResponceModel,
      OtpVerifyResponceModel? otpVerifyResponceModel,
      bool logOrNot,
      String? number});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? load = null,
    Object? message = freezed,
    Object? otpSendResponceModel = freezed,
    Object? otpVerifyResponceModel = freezed,
    Object? logOrNot = null,
    Object? number = freezed,
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
      load: null == load
          ? _value.load
          : load // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      otpSendResponceModel: freezed == otpSendResponceModel
          ? _value.otpSendResponceModel
          : otpSendResponceModel // ignore: cast_nullable_to_non_nullable
              as OtpSendResponceModel?,
      otpVerifyResponceModel: freezed == otpVerifyResponceModel
          ? _value.otpVerifyResponceModel
          : otpVerifyResponceModel // ignore: cast_nullable_to_non_nullable
              as OtpVerifyResponceModel?,
      logOrNot: null == logOrNot
          ? _value.logOrNot
          : logOrNot // ignore: cast_nullable_to_non_nullable
              as bool,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.load,
      this.message,
      this.otpSendResponceModel,
      this.otpVerifyResponceModel,
      required this.logOrNot,
      this.number});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool load;
  @override
  final String? message;
  @override
  final OtpSendResponceModel? otpSendResponceModel;
  @override
  final OtpVerifyResponceModel? otpVerifyResponceModel;
  @override
  final bool logOrNot;
  @override
  final String? number;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, hasError: $hasError, load: $load, message: $message, otpSendResponceModel: $otpSendResponceModel, otpVerifyResponceModel: $otpVerifyResponceModel, logOrNot: $logOrNot, number: $number)';
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
            (identical(other.load, load) || other.load == load) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.otpSendResponceModel, otpSendResponceModel) ||
                other.otpSendResponceModel == otpSendResponceModel) &&
            (identical(other.otpVerifyResponceModel, otpVerifyResponceModel) ||
                other.otpVerifyResponceModel == otpVerifyResponceModel) &&
            (identical(other.logOrNot, logOrNot) ||
                other.logOrNot == logOrNot) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, load,
      message, otpSendResponceModel, otpVerifyResponceModel, logOrNot, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool load,
      final String? message,
      final OtpSendResponceModel? otpSendResponceModel,
      final OtpVerifyResponceModel? otpVerifyResponceModel,
      required final bool logOrNot,
      final String? number}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get load;
  @override
  String? get message;
  @override
  OtpSendResponceModel? get otpSendResponceModel;
  @override
  OtpVerifyResponceModel? get otpVerifyResponceModel;
  @override
  bool get logOrNot;
  @override
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
