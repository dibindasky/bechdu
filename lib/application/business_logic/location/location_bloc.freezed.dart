// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationPick,
    required TResult Function(String cityName) pinCodePick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationPick,
    TResult? Function(String cityName)? pinCodePick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationPick,
    TResult Function(String cityName)? pinCodePick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(PinCodePick value) pinCodePick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(PinCodePick value)? pinCodePick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(PinCodePick value)? pinCodePick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationPickImplCopyWith<$Res> {
  factory _$$LocationPickImplCopyWith(
          _$LocationPickImpl value, $Res Function(_$LocationPickImpl) then) =
      __$$LocationPickImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationPickImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationPickImpl>
    implements _$$LocationPickImplCopyWith<$Res> {
  __$$LocationPickImplCopyWithImpl(
      _$LocationPickImpl _value, $Res Function(_$LocationPickImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationPickImpl implements LocationPick {
  const _$LocationPickImpl();

  @override
  String toString() {
    return 'LocationEvent.locationPick()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationPickImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationPick,
    required TResult Function(String cityName) pinCodePick,
  }) {
    return locationPick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationPick,
    TResult? Function(String cityName)? pinCodePick,
  }) {
    return locationPick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationPick,
    TResult Function(String cityName)? pinCodePick,
    required TResult orElse(),
  }) {
    if (locationPick != null) {
      return locationPick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(PinCodePick value) pinCodePick,
  }) {
    return locationPick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(PinCodePick value)? pinCodePick,
  }) {
    return locationPick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(PinCodePick value)? pinCodePick,
    required TResult orElse(),
  }) {
    if (locationPick != null) {
      return locationPick(this);
    }
    return orElse();
  }
}

abstract class LocationPick implements LocationEvent {
  const factory LocationPick() = _$LocationPickImpl;
}

/// @nodoc
abstract class _$$PinCodePickImplCopyWith<$Res> {
  factory _$$PinCodePickImplCopyWith(
          _$PinCodePickImpl value, $Res Function(_$PinCodePickImpl) then) =
      __$$PinCodePickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cityName});
}

/// @nodoc
class __$$PinCodePickImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$PinCodePickImpl>
    implements _$$PinCodePickImplCopyWith<$Res> {
  __$$PinCodePickImplCopyWithImpl(
      _$PinCodePickImpl _value, $Res Function(_$PinCodePickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
  }) {
    return _then(_$PinCodePickImpl(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PinCodePickImpl implements PinCodePick {
  const _$PinCodePickImpl({required this.cityName});

  @override
  final String cityName;

  @override
  String toString() {
    return 'LocationEvent.pinCodePick(cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinCodePickImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PinCodePickImplCopyWith<_$PinCodePickImpl> get copyWith =>
      __$$PinCodePickImplCopyWithImpl<_$PinCodePickImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationPick,
    required TResult Function(String cityName) pinCodePick,
  }) {
    return pinCodePick(cityName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationPick,
    TResult? Function(String cityName)? pinCodePick,
  }) {
    return pinCodePick?.call(cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationPick,
    TResult Function(String cityName)? pinCodePick,
    required TResult orElse(),
  }) {
    if (pinCodePick != null) {
      return pinCodePick(cityName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(PinCodePick value) pinCodePick,
  }) {
    return pinCodePick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(PinCodePick value)? pinCodePick,
  }) {
    return pinCodePick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(PinCodePick value)? pinCodePick,
    required TResult orElse(),
  }) {
    if (pinCodePick != null) {
      return pinCodePick(this);
    }
    return orElse();
  }
}

abstract class PinCodePick implements LocationEvent {
  const factory PinCodePick({required final String cityName}) =
      _$PinCodePickImpl;

  String get cityName;
  @JsonKey(ignore: true)
  _$$PinCodePickImplCopyWith<_$PinCodePickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<String>? get locations => throw _privateConstructorUsedError;
  PincodeResponceModel? get pincodeResponceModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      List<String>? locations,
      PincodeResponceModel? pincodeResponceModel});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

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
    Object? locations = freezed,
    Object? pincodeResponceModel = freezed,
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
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pincodeResponceModel: freezed == pincodeResponceModel
          ? _value.pincodeResponceModel
          : pincodeResponceModel // ignore: cast_nullable_to_non_nullable
              as PincodeResponceModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      List<String>? locations,
      PincodeResponceModel? pincodeResponceModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? locations = freezed,
    Object? pincodeResponceModel = freezed,
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
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pincodeResponceModel: freezed == pincodeResponceModel
          ? _value.pincodeResponceModel
          : pincodeResponceModel // ignore: cast_nullable_to_non_nullable
              as PincodeResponceModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      final List<String>? locations,
      this.pincodeResponceModel})
      : _locations = locations;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  final List<String>? _locations;
  @override
  List<String>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PincodeResponceModel? pincodeResponceModel;

  @override
  String toString() {
    return 'LocationState(isLoading: $isLoading, hasError: $hasError, message: $message, locations: $locations, pincodeResponceModel: $pincodeResponceModel)';
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
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.pincodeResponceModel, pincodeResponceModel) ||
                other.pincodeResponceModel == pincodeResponceModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, message,
      const DeepCollectionEquality().hash(_locations), pincodeResponceModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements LocationState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      final String? message,
      final List<String>? locations,
      final PincodeResponceModel? pincodeResponceModel}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  List<String>? get locations;
  @override
  PincodeResponceModel? get pincodeResponceModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
