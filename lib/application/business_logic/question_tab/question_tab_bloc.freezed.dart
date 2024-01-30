// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionTabEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tabChange,
    required TResult Function(Map<String, dynamic> markedAnswers)
        markedWuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function(Map<String, dynamic> markedAnswers)? markedWuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function(Map<String, dynamic> markedAnswers)? markedWuestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabChange value) tabChange,
    required TResult Function(_MarkedAnswers value) markedWuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabChange value)? tabChange,
    TResult? Function(_MarkedAnswers value)? markedWuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabChange value)? tabChange,
    TResult Function(_MarkedAnswers value)? markedWuestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionTabEventCopyWith<$Res> {
  factory $QuestionTabEventCopyWith(
          QuestionTabEvent value, $Res Function(QuestionTabEvent) then) =
      _$QuestionTabEventCopyWithImpl<$Res, QuestionTabEvent>;
}

/// @nodoc
class _$QuestionTabEventCopyWithImpl<$Res, $Val extends QuestionTabEvent>
    implements $QuestionTabEventCopyWith<$Res> {
  _$QuestionTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TabChangeImplCopyWith<$Res> {
  factory _$$TabChangeImplCopyWith(
          _$TabChangeImpl value, $Res Function(_$TabChangeImpl) then) =
      __$$TabChangeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TabChangeImplCopyWithImpl<$Res>
    extends _$QuestionTabEventCopyWithImpl<$Res, _$TabChangeImpl>
    implements _$$TabChangeImplCopyWith<$Res> {
  __$$TabChangeImplCopyWithImpl(
      _$TabChangeImpl _value, $Res Function(_$TabChangeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TabChangeImpl with DiagnosticableTreeMixin implements _TabChange {
  const _$TabChangeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionTabEvent.tabChange()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'QuestionTabEvent.tabChange'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TabChangeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tabChange,
    required TResult Function(Map<String, dynamic> markedAnswers)
        markedWuestions,
  }) {
    return tabChange();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function(Map<String, dynamic> markedAnswers)? markedWuestions,
  }) {
    return tabChange?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function(Map<String, dynamic> markedAnswers)? markedWuestions,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabChange value) tabChange,
    required TResult Function(_MarkedAnswers value) markedWuestions,
  }) {
    return tabChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabChange value)? tabChange,
    TResult? Function(_MarkedAnswers value)? markedWuestions,
  }) {
    return tabChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabChange value)? tabChange,
    TResult Function(_MarkedAnswers value)? markedWuestions,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(this);
    }
    return orElse();
  }
}

abstract class _TabChange implements QuestionTabEvent {
  const factory _TabChange() = _$TabChangeImpl;
}

/// @nodoc
abstract class _$$MarkedAnswersImplCopyWith<$Res> {
  factory _$$MarkedAnswersImplCopyWith(
          _$MarkedAnswersImpl value, $Res Function(_$MarkedAnswersImpl) then) =
      __$$MarkedAnswersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> markedAnswers});
}

/// @nodoc
class __$$MarkedAnswersImplCopyWithImpl<$Res>
    extends _$QuestionTabEventCopyWithImpl<$Res, _$MarkedAnswersImpl>
    implements _$$MarkedAnswersImplCopyWith<$Res> {
  __$$MarkedAnswersImplCopyWithImpl(
      _$MarkedAnswersImpl _value, $Res Function(_$MarkedAnswersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markedAnswers = null,
  }) {
    return _then(_$MarkedAnswersImpl(
      markedAnswers: null == markedAnswers
          ? _value._markedAnswers
          : markedAnswers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$MarkedAnswersImpl
    with DiagnosticableTreeMixin
    implements _MarkedAnswers {
  const _$MarkedAnswersImpl({required final Map<String, dynamic> markedAnswers})
      : _markedAnswers = markedAnswers;

  final Map<String, dynamic> _markedAnswers;
  @override
  Map<String, dynamic> get markedAnswers {
    if (_markedAnswers is EqualUnmodifiableMapView) return _markedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_markedAnswers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionTabEvent.markedWuestions(markedAnswers: $markedAnswers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionTabEvent.markedWuestions'))
      ..add(DiagnosticsProperty('markedAnswers', markedAnswers));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkedAnswersImpl &&
            const DeepCollectionEquality()
                .equals(other._markedAnswers, _markedAnswers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_markedAnswers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkedAnswersImplCopyWith<_$MarkedAnswersImpl> get copyWith =>
      __$$MarkedAnswersImplCopyWithImpl<_$MarkedAnswersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tabChange,
    required TResult Function(Map<String, dynamic> markedAnswers)
        markedWuestions,
  }) {
    return markedWuestions(markedAnswers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function(Map<String, dynamic> markedAnswers)? markedWuestions,
  }) {
    return markedWuestions?.call(markedAnswers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function(Map<String, dynamic> markedAnswers)? markedWuestions,
    required TResult orElse(),
  }) {
    if (markedWuestions != null) {
      return markedWuestions(markedAnswers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabChange value) tabChange,
    required TResult Function(_MarkedAnswers value) markedWuestions,
  }) {
    return markedWuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabChange value)? tabChange,
    TResult? Function(_MarkedAnswers value)? markedWuestions,
  }) {
    return markedWuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabChange value)? tabChange,
    TResult Function(_MarkedAnswers value)? markedWuestions,
    required TResult orElse(),
  }) {
    if (markedWuestions != null) {
      return markedWuestions(this);
    }
    return orElse();
  }
}

abstract class _MarkedAnswers implements QuestionTabEvent {
  const factory _MarkedAnswers(
          {required final Map<String, dynamic> markedAnswers}) =
      _$MarkedAnswersImpl;

  Map<String, dynamic> get markedAnswers;
  @JsonKey(ignore: true)
  _$$MarkedAnswersImplCopyWith<_$MarkedAnswersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionTabState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int get selectedTabIndex => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get tabItems => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get bottomtabItems =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionTabStateCopyWith<QuestionTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionTabStateCopyWith<$Res> {
  factory $QuestionTabStateCopyWith(
          QuestionTabState value, $Res Function(QuestionTabState) then) =
      _$QuestionTabStateCopyWithImpl<$Res, QuestionTabState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      int selectedTabIndex,
      List<Map<String, dynamic>> tabItems,
      List<Map<String, dynamic>> bottomtabItems});
}

/// @nodoc
class _$QuestionTabStateCopyWithImpl<$Res, $Val extends QuestionTabState>
    implements $QuestionTabStateCopyWith<$Res> {
  _$QuestionTabStateCopyWithImpl(this._value, this._then);

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
    Object? selectedTabIndex = null,
    Object? tabItems = null,
    Object? bottomtabItems = null,
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
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      tabItems: null == tabItems
          ? _value.tabItems
          : tabItems // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      bottomtabItems: null == bottomtabItems
          ? _value.bottomtabItems
          : bottomtabItems // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $QuestionTabStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      int selectedTabIndex,
      List<Map<String, dynamic>> tabItems,
      List<Map<String, dynamic>> bottomtabItems});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QuestionTabStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? selectedTabIndex = null,
    Object? tabItems = null,
    Object? bottomtabItems = null,
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
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      tabItems: null == tabItems
          ? _value._tabItems
          : tabItems // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      bottomtabItems: null == bottomtabItems
          ? _value._bottomtabItems
          : bottomtabItems // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      required this.selectedTabIndex,
      required final List<Map<String, dynamic>> tabItems,
      required final List<Map<String, dynamic>> bottomtabItems})
      : _tabItems = tabItems,
        _bottomtabItems = bottomtabItems;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final int selectedTabIndex;
  final List<Map<String, dynamic>> _tabItems;
  @override
  List<Map<String, dynamic>> get tabItems {
    if (_tabItems is EqualUnmodifiableListView) return _tabItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tabItems);
  }

  final List<Map<String, dynamic>> _bottomtabItems;
  @override
  List<Map<String, dynamic>> get bottomtabItems {
    if (_bottomtabItems is EqualUnmodifiableListView) return _bottomtabItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bottomtabItems);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionTabState(isLoading: $isLoading, hasError: $hasError, message: $message, selectedTabIndex: $selectedTabIndex, tabItems: $tabItems, bottomtabItems: $bottomtabItems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionTabState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('hasError', hasError))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('selectedTabIndex', selectedTabIndex))
      ..add(DiagnosticsProperty('tabItems', tabItems))
      ..add(DiagnosticsProperty('bottomtabItems', bottomtabItems));
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
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex) &&
            const DeepCollectionEquality().equals(other._tabItems, _tabItems) &&
            const DeepCollectionEquality()
                .equals(other._bottomtabItems, _bottomtabItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      message,
      selectedTabIndex,
      const DeepCollectionEquality().hash(_tabItems),
      const DeepCollectionEquality().hash(_bottomtabItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements QuestionTabState {
  const factory _Initial(
          {required final bool isLoading,
          required final bool hasError,
          final String? message,
          required final int selectedTabIndex,
          required final List<Map<String, dynamic>> tabItems,
          required final List<Map<String, dynamic>> bottomtabItems}) =
      _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  int get selectedTabIndex;
  @override
  List<Map<String, dynamic>> get tabItems;
  @override
  List<Map<String, dynamic>> get bottomtabItems;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
