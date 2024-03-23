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
    required TResult Function(bool isLoad) locationPick,
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(CityUpdateRequestModel cityUpdateRequestModel)
        locationUpdate,
    required TResult Function(String cityName) pinCodePick,
    required TResult Function(String searchQuery) pincodeSearch,
    required TResult Function(
            PincodeUpdateRequestModel pincodeUpdateRequestModel)
        pincodeUpdate,
    required TResult Function(String pincode) setPicondeSecure,
    required TResult Function() clear,
    required TResult Function() locationSkipEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? locationPick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? pincodeSearch,
    TResult? Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult? Function(String pincode)? setPicondeSecure,
    TResult? Function()? clear,
    TResult? Function()? locationSkipEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? locationPick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? pincodeSearch,
    TResult Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult Function(String pincode)? setPicondeSecure,
    TResult Function()? clear,
    TResult Function()? locationSkipEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(LocationUpdate value) locationUpdate,
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(PincodeSearch value) pincodeSearch,
    required TResult Function(PincodeUpdate value) pincodeUpdate,
    required TResult Function(SetPicondeSecure value) setPicondeSecure,
    required TResult Function(Clear value) clear,
    required TResult Function(LocationSkipEvent value) locationSkipEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(LocationUpdate value)? locationUpdate,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(PincodeSearch value)? pincodeSearch,
    TResult? Function(PincodeUpdate value)? pincodeUpdate,
    TResult? Function(SetPicondeSecure value)? setPicondeSecure,
    TResult? Function(Clear value)? clear,
    TResult? Function(LocationSkipEvent value)? locationSkipEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(LocationUpdate value)? locationUpdate,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(PincodeSearch value)? pincodeSearch,
    TResult Function(PincodeUpdate value)? pincodeUpdate,
    TResult Function(SetPicondeSecure value)? setPicondeSecure,
    TResult Function(Clear value)? clear,
    TResult Function(LocationSkipEvent value)? locationSkipEvent,
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
  @useResult
  $Res call({bool isLoad});
}

/// @nodoc
class __$$LocationPickImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationPickImpl>
    implements _$$LocationPickImplCopyWith<$Res> {
  __$$LocationPickImplCopyWithImpl(
      _$LocationPickImpl _value, $Res Function(_$LocationPickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoad = null,
  }) {
    return _then(_$LocationPickImpl(
      isLoad: null == isLoad
          ? _value.isLoad
          : isLoad // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LocationPickImpl implements LocationPick {
  const _$LocationPickImpl({required this.isLoad});

  @override
  final bool isLoad;

  @override
  String toString() {
    return 'LocationEvent.locationPick(isLoad: $isLoad)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPickImpl &&
            (identical(other.isLoad, isLoad) || other.isLoad == isLoad));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoad);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPickImplCopyWith<_$LocationPickImpl> get copyWith =>
      __$$LocationPickImplCopyWithImpl<_$LocationPickImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) locationPick,
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(CityUpdateRequestModel cityUpdateRequestModel)
        locationUpdate,
    required TResult Function(String cityName) pinCodePick,
    required TResult Function(String searchQuery) pincodeSearch,
    required TResult Function(
            PincodeUpdateRequestModel pincodeUpdateRequestModel)
        pincodeUpdate,
    required TResult Function(String pincode) setPicondeSecure,
    required TResult Function() clear,
    required TResult Function() locationSkipEvent,
  }) {
    return locationPick(isLoad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? locationPick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? pincodeSearch,
    TResult? Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult? Function(String pincode)? setPicondeSecure,
    TResult? Function()? clear,
    TResult? Function()? locationSkipEvent,
  }) {
    return locationPick?.call(isLoad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? locationPick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? pincodeSearch,
    TResult Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult Function(String pincode)? setPicondeSecure,
    TResult Function()? clear,
    TResult Function()? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (locationPick != null) {
      return locationPick(isLoad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(LocationUpdate value) locationUpdate,
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(PincodeSearch value) pincodeSearch,
    required TResult Function(PincodeUpdate value) pincodeUpdate,
    required TResult Function(SetPicondeSecure value) setPicondeSecure,
    required TResult Function(Clear value) clear,
    required TResult Function(LocationSkipEvent value) locationSkipEvent,
  }) {
    return locationPick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(LocationUpdate value)? locationUpdate,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(PincodeSearch value)? pincodeSearch,
    TResult? Function(PincodeUpdate value)? pincodeUpdate,
    TResult? Function(SetPicondeSecure value)? setPicondeSecure,
    TResult? Function(Clear value)? clear,
    TResult? Function(LocationSkipEvent value)? locationSkipEvent,
  }) {
    return locationPick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(LocationUpdate value)? locationUpdate,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(PincodeSearch value)? pincodeSearch,
    TResult Function(PincodeUpdate value)? pincodeUpdate,
    TResult Function(SetPicondeSecure value)? setPicondeSecure,
    TResult Function(Clear value)? clear,
    TResult Function(LocationSkipEvent value)? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (locationPick != null) {
      return locationPick(this);
    }
    return orElse();
  }
}

abstract class LocationPick implements LocationEvent {
  const factory LocationPick({required final bool isLoad}) = _$LocationPickImpl;

  bool get isLoad;
  @JsonKey(ignore: true)
  _$$LocationPickImplCopyWith<_$LocationPickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationSearchImplCopyWith<$Res> {
  factory _$$LocationSearchImplCopyWith(_$LocationSearchImpl value,
          $Res Function(_$LocationSearchImpl) then) =
      __$$LocationSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class __$$LocationSearchImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationSearchImpl>
    implements _$$LocationSearchImplCopyWith<$Res> {
  __$$LocationSearchImplCopyWithImpl(
      _$LocationSearchImpl _value, $Res Function(_$LocationSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(_$LocationSearchImpl(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationSearchImpl implements LocationSearch {
  const _$LocationSearchImpl({required this.searchQuery});

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'LocationEvent.locationSearch(searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationSearchImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationSearchImplCopyWith<_$LocationSearchImpl> get copyWith =>
      __$$LocationSearchImplCopyWithImpl<_$LocationSearchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) locationPick,
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(CityUpdateRequestModel cityUpdateRequestModel)
        locationUpdate,
    required TResult Function(String cityName) pinCodePick,
    required TResult Function(String searchQuery) pincodeSearch,
    required TResult Function(
            PincodeUpdateRequestModel pincodeUpdateRequestModel)
        pincodeUpdate,
    required TResult Function(String pincode) setPicondeSecure,
    required TResult Function() clear,
    required TResult Function() locationSkipEvent,
  }) {
    return locationSearch(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? locationPick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? pincodeSearch,
    TResult? Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult? Function(String pincode)? setPicondeSecure,
    TResult? Function()? clear,
    TResult? Function()? locationSkipEvent,
  }) {
    return locationSearch?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? locationPick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? pincodeSearch,
    TResult Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult Function(String pincode)? setPicondeSecure,
    TResult Function()? clear,
    TResult Function()? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (locationSearch != null) {
      return locationSearch(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(LocationUpdate value) locationUpdate,
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(PincodeSearch value) pincodeSearch,
    required TResult Function(PincodeUpdate value) pincodeUpdate,
    required TResult Function(SetPicondeSecure value) setPicondeSecure,
    required TResult Function(Clear value) clear,
    required TResult Function(LocationSkipEvent value) locationSkipEvent,
  }) {
    return locationSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(LocationUpdate value)? locationUpdate,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(PincodeSearch value)? pincodeSearch,
    TResult? Function(PincodeUpdate value)? pincodeUpdate,
    TResult? Function(SetPicondeSecure value)? setPicondeSecure,
    TResult? Function(Clear value)? clear,
    TResult? Function(LocationSkipEvent value)? locationSkipEvent,
  }) {
    return locationSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(LocationUpdate value)? locationUpdate,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(PincodeSearch value)? pincodeSearch,
    TResult Function(PincodeUpdate value)? pincodeUpdate,
    TResult Function(SetPicondeSecure value)? setPicondeSecure,
    TResult Function(Clear value)? clear,
    TResult Function(LocationSkipEvent value)? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (locationSearch != null) {
      return locationSearch(this);
    }
    return orElse();
  }
}

abstract class LocationSearch implements LocationEvent {
  const factory LocationSearch({required final String searchQuery}) =
      _$LocationSearchImpl;

  String get searchQuery;
  @JsonKey(ignore: true)
  _$$LocationSearchImplCopyWith<_$LocationSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationUpdateImplCopyWith<$Res> {
  factory _$$LocationUpdateImplCopyWith(_$LocationUpdateImpl value,
          $Res Function(_$LocationUpdateImpl) then) =
      __$$LocationUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CityUpdateRequestModel cityUpdateRequestModel});
}

/// @nodoc
class __$$LocationUpdateImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationUpdateImpl>
    implements _$$LocationUpdateImplCopyWith<$Res> {
  __$$LocationUpdateImplCopyWithImpl(
      _$LocationUpdateImpl _value, $Res Function(_$LocationUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityUpdateRequestModel = null,
  }) {
    return _then(_$LocationUpdateImpl(
      cityUpdateRequestModel: null == cityUpdateRequestModel
          ? _value.cityUpdateRequestModel
          : cityUpdateRequestModel // ignore: cast_nullable_to_non_nullable
              as CityUpdateRequestModel,
    ));
  }
}

/// @nodoc

class _$LocationUpdateImpl implements LocationUpdate {
  const _$LocationUpdateImpl({required this.cityUpdateRequestModel});

  @override
  final CityUpdateRequestModel cityUpdateRequestModel;

  @override
  String toString() {
    return 'LocationEvent.locationUpdate(cityUpdateRequestModel: $cityUpdateRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationUpdateImpl &&
            (identical(other.cityUpdateRequestModel, cityUpdateRequestModel) ||
                other.cityUpdateRequestModel == cityUpdateRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityUpdateRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationUpdateImplCopyWith<_$LocationUpdateImpl> get copyWith =>
      __$$LocationUpdateImplCopyWithImpl<_$LocationUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) locationPick,
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(CityUpdateRequestModel cityUpdateRequestModel)
        locationUpdate,
    required TResult Function(String cityName) pinCodePick,
    required TResult Function(String searchQuery) pincodeSearch,
    required TResult Function(
            PincodeUpdateRequestModel pincodeUpdateRequestModel)
        pincodeUpdate,
    required TResult Function(String pincode) setPicondeSecure,
    required TResult Function() clear,
    required TResult Function() locationSkipEvent,
  }) {
    return locationUpdate(cityUpdateRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? locationPick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? pincodeSearch,
    TResult? Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult? Function(String pincode)? setPicondeSecure,
    TResult? Function()? clear,
    TResult? Function()? locationSkipEvent,
  }) {
    return locationUpdate?.call(cityUpdateRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? locationPick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? pincodeSearch,
    TResult Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult Function(String pincode)? setPicondeSecure,
    TResult Function()? clear,
    TResult Function()? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (locationUpdate != null) {
      return locationUpdate(cityUpdateRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(LocationUpdate value) locationUpdate,
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(PincodeSearch value) pincodeSearch,
    required TResult Function(PincodeUpdate value) pincodeUpdate,
    required TResult Function(SetPicondeSecure value) setPicondeSecure,
    required TResult Function(Clear value) clear,
    required TResult Function(LocationSkipEvent value) locationSkipEvent,
  }) {
    return locationUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(LocationUpdate value)? locationUpdate,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(PincodeSearch value)? pincodeSearch,
    TResult? Function(PincodeUpdate value)? pincodeUpdate,
    TResult? Function(SetPicondeSecure value)? setPicondeSecure,
    TResult? Function(Clear value)? clear,
    TResult? Function(LocationSkipEvent value)? locationSkipEvent,
  }) {
    return locationUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(LocationUpdate value)? locationUpdate,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(PincodeSearch value)? pincodeSearch,
    TResult Function(PincodeUpdate value)? pincodeUpdate,
    TResult Function(SetPicondeSecure value)? setPicondeSecure,
    TResult Function(Clear value)? clear,
    TResult Function(LocationSkipEvent value)? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (locationUpdate != null) {
      return locationUpdate(this);
    }
    return orElse();
  }
}

abstract class LocationUpdate implements LocationEvent {
  const factory LocationUpdate(
          {required final CityUpdateRequestModel cityUpdateRequestModel}) =
      _$LocationUpdateImpl;

  CityUpdateRequestModel get cityUpdateRequestModel;
  @JsonKey(ignore: true)
  _$$LocationUpdateImplCopyWith<_$LocationUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(bool isLoad) locationPick,
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(CityUpdateRequestModel cityUpdateRequestModel)
        locationUpdate,
    required TResult Function(String cityName) pinCodePick,
    required TResult Function(String searchQuery) pincodeSearch,
    required TResult Function(
            PincodeUpdateRequestModel pincodeUpdateRequestModel)
        pincodeUpdate,
    required TResult Function(String pincode) setPicondeSecure,
    required TResult Function() clear,
    required TResult Function() locationSkipEvent,
  }) {
    return pinCodePick(cityName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? locationPick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? pincodeSearch,
    TResult? Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult? Function(String pincode)? setPicondeSecure,
    TResult? Function()? clear,
    TResult? Function()? locationSkipEvent,
  }) {
    return pinCodePick?.call(cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? locationPick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? pincodeSearch,
    TResult Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult Function(String pincode)? setPicondeSecure,
    TResult Function()? clear,
    TResult Function()? locationSkipEvent,
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
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(LocationUpdate value) locationUpdate,
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(PincodeSearch value) pincodeSearch,
    required TResult Function(PincodeUpdate value) pincodeUpdate,
    required TResult Function(SetPicondeSecure value) setPicondeSecure,
    required TResult Function(Clear value) clear,
    required TResult Function(LocationSkipEvent value) locationSkipEvent,
  }) {
    return pinCodePick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(LocationUpdate value)? locationUpdate,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(PincodeSearch value)? pincodeSearch,
    TResult? Function(PincodeUpdate value)? pincodeUpdate,
    TResult? Function(SetPicondeSecure value)? setPicondeSecure,
    TResult? Function(Clear value)? clear,
    TResult? Function(LocationSkipEvent value)? locationSkipEvent,
  }) {
    return pinCodePick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(LocationUpdate value)? locationUpdate,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(PincodeSearch value)? pincodeSearch,
    TResult Function(PincodeUpdate value)? pincodeUpdate,
    TResult Function(SetPicondeSecure value)? setPicondeSecure,
    TResult Function(Clear value)? clear,
    TResult Function(LocationSkipEvent value)? locationSkipEvent,
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
abstract class _$$PincodeSearchImplCopyWith<$Res> {
  factory _$$PincodeSearchImplCopyWith(
          _$PincodeSearchImpl value, $Res Function(_$PincodeSearchImpl) then) =
      __$$PincodeSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class __$$PincodeSearchImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$PincodeSearchImpl>
    implements _$$PincodeSearchImplCopyWith<$Res> {
  __$$PincodeSearchImplCopyWithImpl(
      _$PincodeSearchImpl _value, $Res Function(_$PincodeSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(_$PincodeSearchImpl(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PincodeSearchImpl implements PincodeSearch {
  const _$PincodeSearchImpl({required this.searchQuery});

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'LocationEvent.pincodeSearch(searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PincodeSearchImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PincodeSearchImplCopyWith<_$PincodeSearchImpl> get copyWith =>
      __$$PincodeSearchImplCopyWithImpl<_$PincodeSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) locationPick,
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(CityUpdateRequestModel cityUpdateRequestModel)
        locationUpdate,
    required TResult Function(String cityName) pinCodePick,
    required TResult Function(String searchQuery) pincodeSearch,
    required TResult Function(
            PincodeUpdateRequestModel pincodeUpdateRequestModel)
        pincodeUpdate,
    required TResult Function(String pincode) setPicondeSecure,
    required TResult Function() clear,
    required TResult Function() locationSkipEvent,
  }) {
    return pincodeSearch(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? locationPick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? pincodeSearch,
    TResult? Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult? Function(String pincode)? setPicondeSecure,
    TResult? Function()? clear,
    TResult? Function()? locationSkipEvent,
  }) {
    return pincodeSearch?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? locationPick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? pincodeSearch,
    TResult Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult Function(String pincode)? setPicondeSecure,
    TResult Function()? clear,
    TResult Function()? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (pincodeSearch != null) {
      return pincodeSearch(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(LocationUpdate value) locationUpdate,
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(PincodeSearch value) pincodeSearch,
    required TResult Function(PincodeUpdate value) pincodeUpdate,
    required TResult Function(SetPicondeSecure value) setPicondeSecure,
    required TResult Function(Clear value) clear,
    required TResult Function(LocationSkipEvent value) locationSkipEvent,
  }) {
    return pincodeSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(LocationUpdate value)? locationUpdate,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(PincodeSearch value)? pincodeSearch,
    TResult? Function(PincodeUpdate value)? pincodeUpdate,
    TResult? Function(SetPicondeSecure value)? setPicondeSecure,
    TResult? Function(Clear value)? clear,
    TResult? Function(LocationSkipEvent value)? locationSkipEvent,
  }) {
    return pincodeSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(LocationUpdate value)? locationUpdate,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(PincodeSearch value)? pincodeSearch,
    TResult Function(PincodeUpdate value)? pincodeUpdate,
    TResult Function(SetPicondeSecure value)? setPicondeSecure,
    TResult Function(Clear value)? clear,
    TResult Function(LocationSkipEvent value)? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (pincodeSearch != null) {
      return pincodeSearch(this);
    }
    return orElse();
  }
}

abstract class PincodeSearch implements LocationEvent {
  const factory PincodeSearch({required final String searchQuery}) =
      _$PincodeSearchImpl;

  String get searchQuery;
  @JsonKey(ignore: true)
  _$$PincodeSearchImplCopyWith<_$PincodeSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PincodeUpdateImplCopyWith<$Res> {
  factory _$$PincodeUpdateImplCopyWith(
          _$PincodeUpdateImpl value, $Res Function(_$PincodeUpdateImpl) then) =
      __$$PincodeUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PincodeUpdateRequestModel pincodeUpdateRequestModel});
}

/// @nodoc
class __$$PincodeUpdateImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$PincodeUpdateImpl>
    implements _$$PincodeUpdateImplCopyWith<$Res> {
  __$$PincodeUpdateImplCopyWithImpl(
      _$PincodeUpdateImpl _value, $Res Function(_$PincodeUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pincodeUpdateRequestModel = null,
  }) {
    return _then(_$PincodeUpdateImpl(
      pincodeUpdateRequestModel: null == pincodeUpdateRequestModel
          ? _value.pincodeUpdateRequestModel
          : pincodeUpdateRequestModel // ignore: cast_nullable_to_non_nullable
              as PincodeUpdateRequestModel,
    ));
  }
}

/// @nodoc

class _$PincodeUpdateImpl implements PincodeUpdate {
  const _$PincodeUpdateImpl({required this.pincodeUpdateRequestModel});

  @override
  final PincodeUpdateRequestModel pincodeUpdateRequestModel;

  @override
  String toString() {
    return 'LocationEvent.pincodeUpdate(pincodeUpdateRequestModel: $pincodeUpdateRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PincodeUpdateImpl &&
            (identical(other.pincodeUpdateRequestModel,
                    pincodeUpdateRequestModel) ||
                other.pincodeUpdateRequestModel == pincodeUpdateRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pincodeUpdateRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PincodeUpdateImplCopyWith<_$PincodeUpdateImpl> get copyWith =>
      __$$PincodeUpdateImplCopyWithImpl<_$PincodeUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) locationPick,
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(CityUpdateRequestModel cityUpdateRequestModel)
        locationUpdate,
    required TResult Function(String cityName) pinCodePick,
    required TResult Function(String searchQuery) pincodeSearch,
    required TResult Function(
            PincodeUpdateRequestModel pincodeUpdateRequestModel)
        pincodeUpdate,
    required TResult Function(String pincode) setPicondeSecure,
    required TResult Function() clear,
    required TResult Function() locationSkipEvent,
  }) {
    return pincodeUpdate(pincodeUpdateRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? locationPick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? pincodeSearch,
    TResult? Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult? Function(String pincode)? setPicondeSecure,
    TResult? Function()? clear,
    TResult? Function()? locationSkipEvent,
  }) {
    return pincodeUpdate?.call(pincodeUpdateRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? locationPick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? pincodeSearch,
    TResult Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult Function(String pincode)? setPicondeSecure,
    TResult Function()? clear,
    TResult Function()? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (pincodeUpdate != null) {
      return pincodeUpdate(pincodeUpdateRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(LocationUpdate value) locationUpdate,
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(PincodeSearch value) pincodeSearch,
    required TResult Function(PincodeUpdate value) pincodeUpdate,
    required TResult Function(SetPicondeSecure value) setPicondeSecure,
    required TResult Function(Clear value) clear,
    required TResult Function(LocationSkipEvent value) locationSkipEvent,
  }) {
    return pincodeUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(LocationUpdate value)? locationUpdate,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(PincodeSearch value)? pincodeSearch,
    TResult? Function(PincodeUpdate value)? pincodeUpdate,
    TResult? Function(SetPicondeSecure value)? setPicondeSecure,
    TResult? Function(Clear value)? clear,
    TResult? Function(LocationSkipEvent value)? locationSkipEvent,
  }) {
    return pincodeUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(LocationUpdate value)? locationUpdate,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(PincodeSearch value)? pincodeSearch,
    TResult Function(PincodeUpdate value)? pincodeUpdate,
    TResult Function(SetPicondeSecure value)? setPicondeSecure,
    TResult Function(Clear value)? clear,
    TResult Function(LocationSkipEvent value)? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (pincodeUpdate != null) {
      return pincodeUpdate(this);
    }
    return orElse();
  }
}

abstract class PincodeUpdate implements LocationEvent {
  const factory PincodeUpdate(
      {required final PincodeUpdateRequestModel
          pincodeUpdateRequestModel}) = _$PincodeUpdateImpl;

  PincodeUpdateRequestModel get pincodeUpdateRequestModel;
  @JsonKey(ignore: true)
  _$$PincodeUpdateImplCopyWith<_$PincodeUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPicondeSecureImplCopyWith<$Res> {
  factory _$$SetPicondeSecureImplCopyWith(_$SetPicondeSecureImpl value,
          $Res Function(_$SetPicondeSecureImpl) then) =
      __$$SetPicondeSecureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pincode});
}

/// @nodoc
class __$$SetPicondeSecureImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$SetPicondeSecureImpl>
    implements _$$SetPicondeSecureImplCopyWith<$Res> {
  __$$SetPicondeSecureImplCopyWithImpl(_$SetPicondeSecureImpl _value,
      $Res Function(_$SetPicondeSecureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pincode = null,
  }) {
    return _then(_$SetPicondeSecureImpl(
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetPicondeSecureImpl implements SetPicondeSecure {
  const _$SetPicondeSecureImpl({required this.pincode});

  @override
  final String pincode;

  @override
  String toString() {
    return 'LocationEvent.setPicondeSecure(pincode: $pincode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPicondeSecureImpl &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPicondeSecureImplCopyWith<_$SetPicondeSecureImpl> get copyWith =>
      __$$SetPicondeSecureImplCopyWithImpl<_$SetPicondeSecureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) locationPick,
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(CityUpdateRequestModel cityUpdateRequestModel)
        locationUpdate,
    required TResult Function(String cityName) pinCodePick,
    required TResult Function(String searchQuery) pincodeSearch,
    required TResult Function(
            PincodeUpdateRequestModel pincodeUpdateRequestModel)
        pincodeUpdate,
    required TResult Function(String pincode) setPicondeSecure,
    required TResult Function() clear,
    required TResult Function() locationSkipEvent,
  }) {
    return setPicondeSecure(pincode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? locationPick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? pincodeSearch,
    TResult? Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult? Function(String pincode)? setPicondeSecure,
    TResult? Function()? clear,
    TResult? Function()? locationSkipEvent,
  }) {
    return setPicondeSecure?.call(pincode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? locationPick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? pincodeSearch,
    TResult Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult Function(String pincode)? setPicondeSecure,
    TResult Function()? clear,
    TResult Function()? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (setPicondeSecure != null) {
      return setPicondeSecure(pincode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(LocationUpdate value) locationUpdate,
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(PincodeSearch value) pincodeSearch,
    required TResult Function(PincodeUpdate value) pincodeUpdate,
    required TResult Function(SetPicondeSecure value) setPicondeSecure,
    required TResult Function(Clear value) clear,
    required TResult Function(LocationSkipEvent value) locationSkipEvent,
  }) {
    return setPicondeSecure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(LocationUpdate value)? locationUpdate,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(PincodeSearch value)? pincodeSearch,
    TResult? Function(PincodeUpdate value)? pincodeUpdate,
    TResult? Function(SetPicondeSecure value)? setPicondeSecure,
    TResult? Function(Clear value)? clear,
    TResult? Function(LocationSkipEvent value)? locationSkipEvent,
  }) {
    return setPicondeSecure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(LocationUpdate value)? locationUpdate,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(PincodeSearch value)? pincodeSearch,
    TResult Function(PincodeUpdate value)? pincodeUpdate,
    TResult Function(SetPicondeSecure value)? setPicondeSecure,
    TResult Function(Clear value)? clear,
    TResult Function(LocationSkipEvent value)? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (setPicondeSecure != null) {
      return setPicondeSecure(this);
    }
    return orElse();
  }
}

abstract class SetPicondeSecure implements LocationEvent {
  const factory SetPicondeSecure({required final String pincode}) =
      _$SetPicondeSecureImpl;

  String get pincode;
  @JsonKey(ignore: true)
  _$$SetPicondeSecureImplCopyWith<_$SetPicondeSecureImpl> get copyWith =>
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
    extends _$LocationEventCopyWithImpl<$Res, _$ClearImpl>
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
    return 'LocationEvent.clear()';
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
    required TResult Function(bool isLoad) locationPick,
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(CityUpdateRequestModel cityUpdateRequestModel)
        locationUpdate,
    required TResult Function(String cityName) pinCodePick,
    required TResult Function(String searchQuery) pincodeSearch,
    required TResult Function(
            PincodeUpdateRequestModel pincodeUpdateRequestModel)
        pincodeUpdate,
    required TResult Function(String pincode) setPicondeSecure,
    required TResult Function() clear,
    required TResult Function() locationSkipEvent,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? locationPick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? pincodeSearch,
    TResult? Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult? Function(String pincode)? setPicondeSecure,
    TResult? Function()? clear,
    TResult? Function()? locationSkipEvent,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? locationPick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? pincodeSearch,
    TResult Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult Function(String pincode)? setPicondeSecure,
    TResult Function()? clear,
    TResult Function()? locationSkipEvent,
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
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(LocationUpdate value) locationUpdate,
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(PincodeSearch value) pincodeSearch,
    required TResult Function(PincodeUpdate value) pincodeUpdate,
    required TResult Function(SetPicondeSecure value) setPicondeSecure,
    required TResult Function(Clear value) clear,
    required TResult Function(LocationSkipEvent value) locationSkipEvent,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(LocationUpdate value)? locationUpdate,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(PincodeSearch value)? pincodeSearch,
    TResult? Function(PincodeUpdate value)? pincodeUpdate,
    TResult? Function(SetPicondeSecure value)? setPicondeSecure,
    TResult? Function(Clear value)? clear,
    TResult? Function(LocationSkipEvent value)? locationSkipEvent,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(LocationUpdate value)? locationUpdate,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(PincodeSearch value)? pincodeSearch,
    TResult Function(PincodeUpdate value)? pincodeUpdate,
    TResult Function(SetPicondeSecure value)? setPicondeSecure,
    TResult Function(Clear value)? clear,
    TResult Function(LocationSkipEvent value)? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class Clear implements LocationEvent {
  const factory Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$LocationSkipEventImplCopyWith<$Res> {
  factory _$$LocationSkipEventImplCopyWith(_$LocationSkipEventImpl value,
          $Res Function(_$LocationSkipEventImpl) then) =
      __$$LocationSkipEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationSkipEventImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$LocationSkipEventImpl>
    implements _$$LocationSkipEventImplCopyWith<$Res> {
  __$$LocationSkipEventImplCopyWithImpl(_$LocationSkipEventImpl _value,
      $Res Function(_$LocationSkipEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationSkipEventImpl implements LocationSkipEvent {
  const _$LocationSkipEventImpl();

  @override
  String toString() {
    return 'LocationEvent.locationSkipEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationSkipEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) locationPick,
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(CityUpdateRequestModel cityUpdateRequestModel)
        locationUpdate,
    required TResult Function(String cityName) pinCodePick,
    required TResult Function(String searchQuery) pincodeSearch,
    required TResult Function(
            PincodeUpdateRequestModel pincodeUpdateRequestModel)
        pincodeUpdate,
    required TResult Function(String pincode) setPicondeSecure,
    required TResult Function() clear,
    required TResult Function() locationSkipEvent,
  }) {
    return locationSkipEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? locationPick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? pincodeSearch,
    TResult? Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult? Function(String pincode)? setPicondeSecure,
    TResult? Function()? clear,
    TResult? Function()? locationSkipEvent,
  }) {
    return locationSkipEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? locationPick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(CityUpdateRequestModel cityUpdateRequestModel)?
        locationUpdate,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? pincodeSearch,
    TResult Function(PincodeUpdateRequestModel pincodeUpdateRequestModel)?
        pincodeUpdate,
    TResult Function(String pincode)? setPicondeSecure,
    TResult Function()? clear,
    TResult Function()? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (locationSkipEvent != null) {
      return locationSkipEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(LocationUpdate value) locationUpdate,
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(PincodeSearch value) pincodeSearch,
    required TResult Function(PincodeUpdate value) pincodeUpdate,
    required TResult Function(SetPicondeSecure value) setPicondeSecure,
    required TResult Function(Clear value) clear,
    required TResult Function(LocationSkipEvent value) locationSkipEvent,
  }) {
    return locationSkipEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(LocationUpdate value)? locationUpdate,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(PincodeSearch value)? pincodeSearch,
    TResult? Function(PincodeUpdate value)? pincodeUpdate,
    TResult? Function(SetPicondeSecure value)? setPicondeSecure,
    TResult? Function(Clear value)? clear,
    TResult? Function(LocationSkipEvent value)? locationSkipEvent,
  }) {
    return locationSkipEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(LocationUpdate value)? locationUpdate,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(PincodeSearch value)? pincodeSearch,
    TResult Function(PincodeUpdate value)? pincodeUpdate,
    TResult Function(SetPicondeSecure value)? setPicondeSecure,
    TResult Function(Clear value)? clear,
    TResult Function(LocationSkipEvent value)? locationSkipEvent,
    required TResult orElse(),
  }) {
    if (locationSkipEvent != null) {
      return locationSkipEvent(this);
    }
    return orElse();
  }
}

abstract class LocationSkipEvent implements LocationEvent {
  const factory LocationSkipEvent() = _$LocationSkipEventImpl;
}

/// @nodoc
mixin _$LocationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isLogin => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<String>? get filteredLocations => throw _privateConstructorUsedError;
  List<String>? get filteredPincodes => throw _privateConstructorUsedError;
  PincodeResponceModel? get pincodeResponceModel =>
      throw _privateConstructorUsedError;
  CityUpdateResponceModel? get cityUpdateResponceModel =>
      throw _privateConstructorUsedError;
  PincodeUpdateResponceModel? get pincodeUpdateResponceModel =>
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
      bool isLogin,
      String? message,
      List<String>? filteredLocations,
      List<String>? filteredPincodes,
      PincodeResponceModel? pincodeResponceModel,
      CityUpdateResponceModel? cityUpdateResponceModel,
      PincodeUpdateResponceModel? pincodeUpdateResponceModel});
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
    Object? isLogin = null,
    Object? message = freezed,
    Object? filteredLocations = freezed,
    Object? filteredPincodes = freezed,
    Object? pincodeResponceModel = freezed,
    Object? cityUpdateResponceModel = freezed,
    Object? pincodeUpdateResponceModel = freezed,
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
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      filteredLocations: freezed == filteredLocations
          ? _value.filteredLocations
          : filteredLocations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      filteredPincodes: freezed == filteredPincodes
          ? _value.filteredPincodes
          : filteredPincodes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pincodeResponceModel: freezed == pincodeResponceModel
          ? _value.pincodeResponceModel
          : pincodeResponceModel // ignore: cast_nullable_to_non_nullable
              as PincodeResponceModel?,
      cityUpdateResponceModel: freezed == cityUpdateResponceModel
          ? _value.cityUpdateResponceModel
          : cityUpdateResponceModel // ignore: cast_nullable_to_non_nullable
              as CityUpdateResponceModel?,
      pincodeUpdateResponceModel: freezed == pincodeUpdateResponceModel
          ? _value.pincodeUpdateResponceModel
          : pincodeUpdateResponceModel // ignore: cast_nullable_to_non_nullable
              as PincodeUpdateResponceModel?,
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
      bool isLogin,
      String? message,
      List<String>? filteredLocations,
      List<String>? filteredPincodes,
      PincodeResponceModel? pincodeResponceModel,
      CityUpdateResponceModel? cityUpdateResponceModel,
      PincodeUpdateResponceModel? pincodeUpdateResponceModel});
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
    Object? isLogin = null,
    Object? message = freezed,
    Object? filteredLocations = freezed,
    Object? filteredPincodes = freezed,
    Object? pincodeResponceModel = freezed,
    Object? cityUpdateResponceModel = freezed,
    Object? pincodeUpdateResponceModel = freezed,
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
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      filteredLocations: freezed == filteredLocations
          ? _value._filteredLocations
          : filteredLocations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      filteredPincodes: freezed == filteredPincodes
          ? _value._filteredPincodes
          : filteredPincodes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pincodeResponceModel: freezed == pincodeResponceModel
          ? _value.pincodeResponceModel
          : pincodeResponceModel // ignore: cast_nullable_to_non_nullable
              as PincodeResponceModel?,
      cityUpdateResponceModel: freezed == cityUpdateResponceModel
          ? _value.cityUpdateResponceModel
          : cityUpdateResponceModel // ignore: cast_nullable_to_non_nullable
              as CityUpdateResponceModel?,
      pincodeUpdateResponceModel: freezed == pincodeUpdateResponceModel
          ? _value.pincodeUpdateResponceModel
          : pincodeUpdateResponceModel // ignore: cast_nullable_to_non_nullable
              as PincodeUpdateResponceModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.isLogin,
      this.message,
      final List<String>? filteredLocations,
      final List<String>? filteredPincodes,
      this.pincodeResponceModel,
      this.cityUpdateResponceModel,
      this.pincodeUpdateResponceModel})
      : _filteredLocations = filteredLocations,
        _filteredPincodes = filteredPincodes;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isLogin;
  @override
  final String? message;
  final List<String>? _filteredLocations;
  @override
  List<String>? get filteredLocations {
    final value = _filteredLocations;
    if (value == null) return null;
    if (_filteredLocations is EqualUnmodifiableListView)
      return _filteredLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _filteredPincodes;
  @override
  List<String>? get filteredPincodes {
    final value = _filteredPincodes;
    if (value == null) return null;
    if (_filteredPincodes is EqualUnmodifiableListView)
      return _filteredPincodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PincodeResponceModel? pincodeResponceModel;
  @override
  final CityUpdateResponceModel? cityUpdateResponceModel;
  @override
  final PincodeUpdateResponceModel? pincodeUpdateResponceModel;

  @override
  String toString() {
    return 'LocationState(isLoading: $isLoading, hasError: $hasError, isLogin: $isLogin, message: $message, filteredLocations: $filteredLocations, filteredPincodes: $filteredPincodes, pincodeResponceModel: $pincodeResponceModel, cityUpdateResponceModel: $cityUpdateResponceModel, pincodeUpdateResponceModel: $pincodeUpdateResponceModel)';
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
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._filteredLocations, _filteredLocations) &&
            const DeepCollectionEquality()
                .equals(other._filteredPincodes, _filteredPincodes) &&
            (identical(other.pincodeResponceModel, pincodeResponceModel) ||
                other.pincodeResponceModel == pincodeResponceModel) &&
            (identical(
                    other.cityUpdateResponceModel, cityUpdateResponceModel) ||
                other.cityUpdateResponceModel == cityUpdateResponceModel) &&
            (identical(other.pincodeUpdateResponceModel,
                    pincodeUpdateResponceModel) ||
                other.pincodeUpdateResponceModel ==
                    pincodeUpdateResponceModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      isLogin,
      message,
      const DeepCollectionEquality().hash(_filteredLocations),
      const DeepCollectionEquality().hash(_filteredPincodes),
      pincodeResponceModel,
      cityUpdateResponceModel,
      pincodeUpdateResponceModel);

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
          required final bool isLogin,
          final String? message,
          final List<String>? filteredLocations,
          final List<String>? filteredPincodes,
          final PincodeResponceModel? pincodeResponceModel,
          final CityUpdateResponceModel? cityUpdateResponceModel,
          final PincodeUpdateResponceModel? pincodeUpdateResponceModel}) =
      _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isLogin;
  @override
  String? get message;
  @override
  List<String>? get filteredLocations;
  @override
  List<String>? get filteredPincodes;
  @override
  PincodeResponceModel? get pincodeResponceModel;
  @override
  CityUpdateResponceModel? get cityUpdateResponceModel;
  @override
  PincodeUpdateResponceModel? get pincodeUpdateResponceModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
