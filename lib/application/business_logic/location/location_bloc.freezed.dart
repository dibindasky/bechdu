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
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(String searchQuery) pincodeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationPick,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(String searchQuery)? pincodeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationPick,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(String searchQuery)? pincodeSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationPick value) locationPick,
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(PincodeSearch value) pincodeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(PincodeSearch value)? pincodeSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(PincodeSearch value)? pincodeSearch,
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
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(String searchQuery) pincodeSearch,
  }) {
    return locationPick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationPick,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(String searchQuery)? pincodeSearch,
  }) {
    return locationPick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationPick,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(String searchQuery)? pincodeSearch,
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
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(PincodeSearch value) pincodeSearch,
  }) {
    return locationPick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(PincodeSearch value)? pincodeSearch,
  }) {
    return locationPick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(PincodeSearch value)? pincodeSearch,
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
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(String searchQuery) pincodeSearch,
  }) {
    return pinCodePick(cityName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationPick,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(String searchQuery)? pincodeSearch,
  }) {
    return pinCodePick?.call(cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationPick,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(String searchQuery)? pincodeSearch,
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
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(PincodeSearch value) pincodeSearch,
  }) {
    return pinCodePick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(PincodeSearch value)? pincodeSearch,
  }) {
    return pinCodePick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(PincodeSearch value)? pincodeSearch,
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
    required TResult Function() locationPick,
    required TResult Function(String cityName) pinCodePick,
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(String searchQuery) pincodeSearch,
  }) {
    return locationSearch(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationPick,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(String searchQuery)? pincodeSearch,
  }) {
    return locationSearch?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationPick,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(String searchQuery)? pincodeSearch,
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
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(PincodeSearch value) pincodeSearch,
  }) {
    return locationSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(PincodeSearch value)? pincodeSearch,
  }) {
    return locationSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(PincodeSearch value)? pincodeSearch,
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
    required TResult Function() locationPick,
    required TResult Function(String cityName) pinCodePick,
    required TResult Function(String searchQuery) locationSearch,
    required TResult Function(String searchQuery) pincodeSearch,
  }) {
    return pincodeSearch(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? locationPick,
    TResult? Function(String cityName)? pinCodePick,
    TResult? Function(String searchQuery)? locationSearch,
    TResult? Function(String searchQuery)? pincodeSearch,
  }) {
    return pincodeSearch?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationPick,
    TResult Function(String cityName)? pinCodePick,
    TResult Function(String searchQuery)? locationSearch,
    TResult Function(String searchQuery)? pincodeSearch,
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
    required TResult Function(PinCodePick value) pinCodePick,
    required TResult Function(LocationSearch value) locationSearch,
    required TResult Function(PincodeSearch value) pincodeSearch,
  }) {
    return pincodeSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocationPick value)? locationPick,
    TResult? Function(PinCodePick value)? pinCodePick,
    TResult? Function(LocationSearch value)? locationSearch,
    TResult? Function(PincodeSearch value)? pincodeSearch,
  }) {
    return pincodeSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationPick value)? locationPick,
    TResult Function(PinCodePick value)? pinCodePick,
    TResult Function(LocationSearch value)? locationSearch,
    TResult Function(PincodeSearch value)? pincodeSearch,
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
mixin _$LocationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<String>? get locations => throw _privateConstructorUsedError;
  List<String>? get pincodes => throw _privateConstructorUsedError;
  List<String>? get filteredLocations => throw _privateConstructorUsedError;
  List<String>? get filteredPincodes => throw _privateConstructorUsedError;
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
      List<String>? pincodes,
      List<String>? filteredLocations,
      List<String>? filteredPincodes,
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
    Object? pincodes = freezed,
    Object? filteredLocations = freezed,
    Object? filteredPincodes = freezed,
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
      pincodes: freezed == pincodes
          ? _value.pincodes
          : pincodes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      List<String>? pincodes,
      List<String>? filteredLocations,
      List<String>? filteredPincodes,
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
    Object? pincodes = freezed,
    Object? filteredLocations = freezed,
    Object? filteredPincodes = freezed,
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
      pincodes: freezed == pincodes
          ? _value._pincodes
          : pincodes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      final List<String>? pincodes,
      final List<String>? filteredLocations,
      final List<String>? filteredPincodes,
      this.pincodeResponceModel})
      : _locations = locations,
        _pincodes = pincodes,
        _filteredLocations = filteredLocations,
        _filteredPincodes = filteredPincodes;

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

  final List<String>? _pincodes;
  @override
  List<String>? get pincodes {
    final value = _pincodes;
    if (value == null) return null;
    if (_pincodes is EqualUnmodifiableListView) return _pincodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  String toString() {
    return 'LocationState(isLoading: $isLoading, hasError: $hasError, message: $message, locations: $locations, pincodes: $pincodes, filteredLocations: $filteredLocations, filteredPincodes: $filteredPincodes, pincodeResponceModel: $pincodeResponceModel)';
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
            const DeepCollectionEquality().equals(other._pincodes, _pincodes) &&
            const DeepCollectionEquality()
                .equals(other._filteredLocations, _filteredLocations) &&
            const DeepCollectionEquality()
                .equals(other._filteredPincodes, _filteredPincodes) &&
            (identical(other.pincodeResponceModel, pincodeResponceModel) ||
                other.pincodeResponceModel == pincodeResponceModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      message,
      const DeepCollectionEquality().hash(_locations),
      const DeepCollectionEquality().hash(_pincodes),
      const DeepCollectionEquality().hash(_filteredLocations),
      const DeepCollectionEquality().hash(_filteredPincodes),
      pincodeResponceModel);

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
      final List<String>? pincodes,
      final List<String>? filteredLocations,
      final List<String>? filteredPincodes,
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
  List<String>? get pincodes;
  @override
  List<String>? get filteredLocations;
  @override
  List<String>? get filteredPincodes;
  @override
  PincodeResponceModel? get pincodeResponceModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
