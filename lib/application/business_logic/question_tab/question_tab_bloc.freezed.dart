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
    required TResult Function() resetTabSelection,
    required TResult Function(String categoryType, Product product)
        getQuestions,
    required TResult Function() getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function()? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function()? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(ResetTabSelection value) resetTabSelection,
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetAnswerCount value) getAnswerCount,
    required TResult Function(MarkedQuestions value) markedQuestions,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(ResetTabSelection value)? resetTabSelection,
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetAnswerCount value)? getAnswerCount,
    TResult? Function(MarkedQuestions value)? markedQuestions,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(ResetTabSelection value)? resetTabSelection,
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetAnswerCount value)? getAnswerCount,
    TResult Function(MarkedQuestions value)? markedQuestions,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
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

class _$TabChangeImpl with DiagnosticableTreeMixin implements TabChange {
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
    required TResult Function() resetTabSelection,
    required TResult Function(String categoryType, Product product)
        getQuestions,
    required TResult Function() getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
  }) {
    return tabChange();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function()? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
  }) {
    return tabChange?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function()? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
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
    required TResult Function(TabChange value) tabChange,
    required TResult Function(ResetTabSelection value) resetTabSelection,
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetAnswerCount value) getAnswerCount,
    required TResult Function(MarkedQuestions value) markedQuestions,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
  }) {
    return tabChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(ResetTabSelection value)? resetTabSelection,
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetAnswerCount value)? getAnswerCount,
    TResult? Function(MarkedQuestions value)? markedQuestions,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
  }) {
    return tabChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(ResetTabSelection value)? resetTabSelection,
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetAnswerCount value)? getAnswerCount,
    TResult Function(MarkedQuestions value)? markedQuestions,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    required TResult orElse(),
  }) {
    if (tabChange != null) {
      return tabChange(this);
    }
    return orElse();
  }
}

abstract class TabChange implements QuestionTabEvent {
  const factory TabChange() = _$TabChangeImpl;
}

/// @nodoc
abstract class _$$ResetTabSelectionImplCopyWith<$Res> {
  factory _$$ResetTabSelectionImplCopyWith(_$ResetTabSelectionImpl value,
          $Res Function(_$ResetTabSelectionImpl) then) =
      __$$ResetTabSelectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetTabSelectionImplCopyWithImpl<$Res>
    extends _$QuestionTabEventCopyWithImpl<$Res, _$ResetTabSelectionImpl>
    implements _$$ResetTabSelectionImplCopyWith<$Res> {
  __$$ResetTabSelectionImplCopyWithImpl(_$ResetTabSelectionImpl _value,
      $Res Function(_$ResetTabSelectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetTabSelectionImpl
    with DiagnosticableTreeMixin
    implements ResetTabSelection {
  const _$ResetTabSelectionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionTabEvent.resetTabSelection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'QuestionTabEvent.resetTabSelection'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetTabSelectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tabChange,
    required TResult Function() resetTabSelection,
    required TResult Function(String categoryType, Product product)
        getQuestions,
    required TResult Function() getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
  }) {
    return resetTabSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function()? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
  }) {
    return resetTabSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function()? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    required TResult orElse(),
  }) {
    if (resetTabSelection != null) {
      return resetTabSelection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(ResetTabSelection value) resetTabSelection,
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetAnswerCount value) getAnswerCount,
    required TResult Function(MarkedQuestions value) markedQuestions,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
  }) {
    return resetTabSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(ResetTabSelection value)? resetTabSelection,
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetAnswerCount value)? getAnswerCount,
    TResult? Function(MarkedQuestions value)? markedQuestions,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
  }) {
    return resetTabSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(ResetTabSelection value)? resetTabSelection,
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetAnswerCount value)? getAnswerCount,
    TResult Function(MarkedQuestions value)? markedQuestions,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    required TResult orElse(),
  }) {
    if (resetTabSelection != null) {
      return resetTabSelection(this);
    }
    return orElse();
  }
}

abstract class ResetTabSelection implements QuestionTabEvent {
  const factory ResetTabSelection() = _$ResetTabSelectionImpl;
}

/// @nodoc
abstract class _$$GetQuestionsImplCopyWith<$Res> {
  factory _$$GetQuestionsImplCopyWith(
          _$GetQuestionsImpl value, $Res Function(_$GetQuestionsImpl) then) =
      __$$GetQuestionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryType, Product product});
}

/// @nodoc
class __$$GetQuestionsImplCopyWithImpl<$Res>
    extends _$QuestionTabEventCopyWithImpl<$Res, _$GetQuestionsImpl>
    implements _$$GetQuestionsImplCopyWith<$Res> {
  __$$GetQuestionsImplCopyWithImpl(
      _$GetQuestionsImpl _value, $Res Function(_$GetQuestionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = null,
    Object? product = null,
  }) {
    return _then(_$GetQuestionsImpl(
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$GetQuestionsImpl with DiagnosticableTreeMixin implements GetQuestions {
  const _$GetQuestionsImpl({required this.categoryType, required this.product});

  @override
  final String categoryType;
  @override
  final Product product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionTabEvent.getQuestions(categoryType: $categoryType, product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionTabEvent.getQuestions'))
      ..add(DiagnosticsProperty('categoryType', categoryType))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestionsImpl &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQuestionsImplCopyWith<_$GetQuestionsImpl> get copyWith =>
      __$$GetQuestionsImplCopyWithImpl<_$GetQuestionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tabChange,
    required TResult Function() resetTabSelection,
    required TResult Function(String categoryType, Product product)
        getQuestions,
    required TResult Function() getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
  }) {
    return getQuestions(categoryType, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function()? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
  }) {
    return getQuestions?.call(categoryType, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function()? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(categoryType, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(ResetTabSelection value) resetTabSelection,
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetAnswerCount value) getAnswerCount,
    required TResult Function(MarkedQuestions value) markedQuestions,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
  }) {
    return getQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(ResetTabSelection value)? resetTabSelection,
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetAnswerCount value)? getAnswerCount,
    TResult? Function(MarkedQuestions value)? markedQuestions,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
  }) {
    return getQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(ResetTabSelection value)? resetTabSelection,
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetAnswerCount value)? getAnswerCount,
    TResult Function(MarkedQuestions value)? markedQuestions,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(this);
    }
    return orElse();
  }
}

abstract class GetQuestions implements QuestionTabEvent {
  const factory GetQuestions(
      {required final String categoryType,
      required final Product product}) = _$GetQuestionsImpl;

  String get categoryType;
  Product get product;
  @JsonKey(ignore: true)
  _$$GetQuestionsImplCopyWith<_$GetQuestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAnswerCountImplCopyWith<$Res> {
  factory _$$GetAnswerCountImplCopyWith(_$GetAnswerCountImpl value,
          $Res Function(_$GetAnswerCountImpl) then) =
      __$$GetAnswerCountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAnswerCountImplCopyWithImpl<$Res>
    extends _$QuestionTabEventCopyWithImpl<$Res, _$GetAnswerCountImpl>
    implements _$$GetAnswerCountImplCopyWith<$Res> {
  __$$GetAnswerCountImplCopyWithImpl(
      _$GetAnswerCountImpl _value, $Res Function(_$GetAnswerCountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAnswerCountImpl
    with DiagnosticableTreeMixin
    implements GetAnswerCount {
  const _$GetAnswerCountImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionTabEvent.getAnswerCount()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'QuestionTabEvent.getAnswerCount'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAnswerCountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tabChange,
    required TResult Function() resetTabSelection,
    required TResult Function(String categoryType, Product product)
        getQuestions,
    required TResult Function() getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
  }) {
    return getAnswerCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function()? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
  }) {
    return getAnswerCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function()? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    required TResult orElse(),
  }) {
    if (getAnswerCount != null) {
      return getAnswerCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(ResetTabSelection value) resetTabSelection,
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetAnswerCount value) getAnswerCount,
    required TResult Function(MarkedQuestions value) markedQuestions,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
  }) {
    return getAnswerCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(ResetTabSelection value)? resetTabSelection,
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetAnswerCount value)? getAnswerCount,
    TResult? Function(MarkedQuestions value)? markedQuestions,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
  }) {
    return getAnswerCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(ResetTabSelection value)? resetTabSelection,
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetAnswerCount value)? getAnswerCount,
    TResult Function(MarkedQuestions value)? markedQuestions,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    required TResult orElse(),
  }) {
    if (getAnswerCount != null) {
      return getAnswerCount(this);
    }
    return orElse();
  }
}

abstract class GetAnswerCount implements QuestionTabEvent {
  const factory GetAnswerCount() = _$GetAnswerCountImpl;
}

/// @nodoc
abstract class _$$MarkedQuestionsImplCopyWith<$Res> {
  factory _$$MarkedQuestionsImplCopyWith(_$MarkedQuestionsImpl value,
          $Res Function(_$MarkedQuestionsImpl) then) =
      __$$MarkedQuestionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SelectedOption selectedOption});
}

/// @nodoc
class __$$MarkedQuestionsImplCopyWithImpl<$Res>
    extends _$QuestionTabEventCopyWithImpl<$Res, _$MarkedQuestionsImpl>
    implements _$$MarkedQuestionsImplCopyWith<$Res> {
  __$$MarkedQuestionsImplCopyWithImpl(
      _$MarkedQuestionsImpl _value, $Res Function(_$MarkedQuestionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedOption = null,
  }) {
    return _then(_$MarkedQuestionsImpl(
      selectedOption: null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as SelectedOption,
    ));
  }
}

/// @nodoc

class _$MarkedQuestionsImpl
    with DiagnosticableTreeMixin
    implements MarkedQuestions {
  const _$MarkedQuestionsImpl({required this.selectedOption});

  @override
  final SelectedOption selectedOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionTabEvent.markedQuestions(selectedOption: $selectedOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionTabEvent.markedQuestions'))
      ..add(DiagnosticsProperty('selectedOption', selectedOption));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkedQuestionsImpl &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkedQuestionsImplCopyWith<_$MarkedQuestionsImpl> get copyWith =>
      __$$MarkedQuestionsImplCopyWithImpl<_$MarkedQuestionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tabChange,
    required TResult Function() resetTabSelection,
    required TResult Function(String categoryType, Product product)
        getQuestions,
    required TResult Function() getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
  }) {
    return markedQuestions(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function()? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
  }) {
    return markedQuestions?.call(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function()? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    required TResult orElse(),
  }) {
    if (markedQuestions != null) {
      return markedQuestions(selectedOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(ResetTabSelection value) resetTabSelection,
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetAnswerCount value) getAnswerCount,
    required TResult Function(MarkedQuestions value) markedQuestions,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
  }) {
    return markedQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(ResetTabSelection value)? resetTabSelection,
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetAnswerCount value)? getAnswerCount,
    TResult? Function(MarkedQuestions value)? markedQuestions,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
  }) {
    return markedQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(ResetTabSelection value)? resetTabSelection,
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetAnswerCount value)? getAnswerCount,
    TResult Function(MarkedQuestions value)? markedQuestions,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    required TResult orElse(),
  }) {
    if (markedQuestions != null) {
      return markedQuestions(this);
    }
    return orElse();
  }
}

abstract class MarkedQuestions implements QuestionTabEvent {
  const factory MarkedQuestions(
      {required final SelectedOption selectedOption}) = _$MarkedQuestionsImpl;

  SelectedOption get selectedOption;
  @JsonKey(ignore: true)
  _$$MarkedQuestionsImplCopyWith<_$MarkedQuestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountQuestionNumberImplCopyWith<$Res> {
  factory _$$CountQuestionNumberImplCopyWith(_$CountQuestionNumberImpl value,
          $Res Function(_$CountQuestionNumberImpl) then) =
      __$$CountQuestionNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int countQuestionNumber});
}

/// @nodoc
class __$$CountQuestionNumberImplCopyWithImpl<$Res>
    extends _$QuestionTabEventCopyWithImpl<$Res, _$CountQuestionNumberImpl>
    implements _$$CountQuestionNumberImplCopyWith<$Res> {
  __$$CountQuestionNumberImplCopyWithImpl(_$CountQuestionNumberImpl _value,
      $Res Function(_$CountQuestionNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countQuestionNumber = null,
  }) {
    return _then(_$CountQuestionNumberImpl(
      countQuestionNumber: null == countQuestionNumber
          ? _value.countQuestionNumber
          : countQuestionNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CountQuestionNumberImpl
    with DiagnosticableTreeMixin
    implements CountQuestionNumber {
  const _$CountQuestionNumberImpl({required this.countQuestionNumber});

  @override
  final int countQuestionNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionTabEvent.countQuestionNumber(countQuestionNumber: $countQuestionNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionTabEvent.countQuestionNumber'))
      ..add(DiagnosticsProperty('countQuestionNumber', countQuestionNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountQuestionNumberImpl &&
            (identical(other.countQuestionNumber, countQuestionNumber) ||
                other.countQuestionNumber == countQuestionNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countQuestionNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountQuestionNumberImplCopyWith<_$CountQuestionNumberImpl> get copyWith =>
      __$$CountQuestionNumberImplCopyWithImpl<_$CountQuestionNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tabChange,
    required TResult Function() resetTabSelection,
    required TResult Function(String categoryType, Product product)
        getQuestions,
    required TResult Function() getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
  }) {
    return countQuestionNumber(this.countQuestionNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function()? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
  }) {
    return countQuestionNumber?.call(this.countQuestionNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function()? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    required TResult orElse(),
  }) {
    if (countQuestionNumber != null) {
      return countQuestionNumber(this.countQuestionNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChange value) tabChange,
    required TResult Function(ResetTabSelection value) resetTabSelection,
    required TResult Function(GetQuestions value) getQuestions,
    required TResult Function(GetAnswerCount value) getAnswerCount,
    required TResult Function(MarkedQuestions value) markedQuestions,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
  }) {
    return countQuestionNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(ResetTabSelection value)? resetTabSelection,
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetAnswerCount value)? getAnswerCount,
    TResult? Function(MarkedQuestions value)? markedQuestions,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
  }) {
    return countQuestionNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(ResetTabSelection value)? resetTabSelection,
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetAnswerCount value)? getAnswerCount,
    TResult Function(MarkedQuestions value)? markedQuestions,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    required TResult orElse(),
  }) {
    if (countQuestionNumber != null) {
      return countQuestionNumber(this);
    }
    return orElse();
  }
}

abstract class CountQuestionNumber implements QuestionTabEvent {
  const factory CountQuestionNumber({required final int countQuestionNumber}) =
      _$CountQuestionNumberImpl;

  int get countQuestionNumber;
  @JsonKey(ignore: true)
  _$$CountQuestionNumberImplCopyWith<_$CountQuestionNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionTabState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  int? get answerCount => throw _privateConstructorUsedError;
  List<SelectedOption> get selectedOption => throw _privateConstructorUsedError;
  GetQuestionModel? get getQuestionModel => throw _privateConstructorUsedError;
  GetProductsResponceModel? get getProductsResponceModel =>
      throw _privateConstructorUsedError;
  int get selectedTabIndex => throw _privateConstructorUsedError;

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
      Product? product,
      int? answerCount,
      List<SelectedOption> selectedOption,
      GetQuestionModel? getQuestionModel,
      GetProductsResponceModel? getProductsResponceModel,
      int selectedTabIndex});
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
    Object? product = freezed,
    Object? answerCount = freezed,
    Object? selectedOption = null,
    Object? getQuestionModel = freezed,
    Object? getProductsResponceModel = freezed,
    Object? selectedTabIndex = null,
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
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      answerCount: freezed == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedOption: null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as List<SelectedOption>,
      getQuestionModel: freezed == getQuestionModel
          ? _value.getQuestionModel
          : getQuestionModel // ignore: cast_nullable_to_non_nullable
              as GetQuestionModel?,
      getProductsResponceModel: freezed == getProductsResponceModel
          ? _value.getProductsResponceModel
          : getProductsResponceModel // ignore: cast_nullable_to_non_nullable
              as GetProductsResponceModel?,
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      Product? product,
      int? answerCount,
      List<SelectedOption> selectedOption,
      GetQuestionModel? getQuestionModel,
      GetProductsResponceModel? getProductsResponceModel,
      int selectedTabIndex});
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
    Object? product = freezed,
    Object? answerCount = freezed,
    Object? selectedOption = null,
    Object? getQuestionModel = freezed,
    Object? getProductsResponceModel = freezed,
    Object? selectedTabIndex = null,
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
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      answerCount: freezed == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedOption: null == selectedOption
          ? _value._selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as List<SelectedOption>,
      getQuestionModel: freezed == getQuestionModel
          ? _value.getQuestionModel
          : getQuestionModel // ignore: cast_nullable_to_non_nullable
              as GetQuestionModel?,
      getProductsResponceModel: freezed == getProductsResponceModel
          ? _value.getProductsResponceModel
          : getProductsResponceModel // ignore: cast_nullable_to_non_nullable
              as GetProductsResponceModel?,
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.product,
      this.answerCount,
      required final List<SelectedOption> selectedOption,
      this.getQuestionModel,
      this.getProductsResponceModel,
      required this.selectedTabIndex})
      : _selectedOption = selectedOption;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final Product? product;
  @override
  final int? answerCount;
  final List<SelectedOption> _selectedOption;
  @override
  List<SelectedOption> get selectedOption {
    if (_selectedOption is EqualUnmodifiableListView) return _selectedOption;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedOption);
  }

  @override
  final GetQuestionModel? getQuestionModel;
  @override
  final GetProductsResponceModel? getProductsResponceModel;
  @override
  final int selectedTabIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionTabState(isLoading: $isLoading, hasError: $hasError, message: $message, product: $product, answerCount: $answerCount, selectedOption: $selectedOption, getQuestionModel: $getQuestionModel, getProductsResponceModel: $getProductsResponceModel, selectedTabIndex: $selectedTabIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionTabState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('hasError', hasError))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('product', product))
      ..add(DiagnosticsProperty('answerCount', answerCount))
      ..add(DiagnosticsProperty('selectedOption', selectedOption))
      ..add(DiagnosticsProperty('getQuestionModel', getQuestionModel))
      ..add(DiagnosticsProperty(
          'getProductsResponceModel', getProductsResponceModel))
      ..add(DiagnosticsProperty('selectedTabIndex', selectedTabIndex));
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
            (identical(other.product, product) || other.product == product) &&
            (identical(other.answerCount, answerCount) ||
                other.answerCount == answerCount) &&
            const DeepCollectionEquality()
                .equals(other._selectedOption, _selectedOption) &&
            (identical(other.getQuestionModel, getQuestionModel) ||
                other.getQuestionModel == getQuestionModel) &&
            (identical(
                    other.getProductsResponceModel, getProductsResponceModel) ||
                other.getProductsResponceModel == getProductsResponceModel) &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      message,
      product,
      answerCount,
      const DeepCollectionEquality().hash(_selectedOption),
      getQuestionModel,
      getProductsResponceModel,
      selectedTabIndex);

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
      final Product? product,
      final int? answerCount,
      required final List<SelectedOption> selectedOption,
      final GetQuestionModel? getQuestionModel,
      final GetProductsResponceModel? getProductsResponceModel,
      required final int selectedTabIndex}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  Product? get product;
  @override
  int? get answerCount;
  @override
  List<SelectedOption> get selectedOption;
  @override
  GetQuestionModel? get getQuestionModel;
  @override
  GetProductsResponceModel? get getProductsResponceModel;
  @override
  int get selectedTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
