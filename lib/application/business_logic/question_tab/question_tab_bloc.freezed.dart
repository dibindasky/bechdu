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
    required TResult Function(int answerCount) getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(SelectedOption selectedOption) yesOrNo,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)
        getBasePrice,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandentOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function(int answerCount)? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(SelectedOption selectedOption)? yesOrNo,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function(int answerCount)? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(SelectedOption selectedOption)? yesOrNo,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
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
    required TResult Function(YesOrNo value) yesOrNo,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
    required TResult Function(GetBasePrice value) getBasePrice,
    required TResult Function(AbandentOrder value) abandentOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(ResetTabSelection value)? resetTabSelection,
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetAnswerCount value)? getAnswerCount,
    TResult? Function(MarkedQuestions value)? markedQuestions,
    TResult? Function(YesOrNo value)? yesOrNo,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
    TResult? Function(GetBasePrice value)? getBasePrice,
    TResult? Function(AbandentOrder value)? abandentOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(ResetTabSelection value)? resetTabSelection,
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetAnswerCount value)? getAnswerCount,
    TResult Function(MarkedQuestions value)? markedQuestions,
    TResult Function(YesOrNo value)? yesOrNo,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    TResult Function(GetBasePrice value)? getBasePrice,
    TResult Function(AbandentOrder value)? abandentOrder,
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

class _$TabChangeImpl implements TabChange {
  const _$TabChangeImpl();

  @override
  String toString() {
    return 'QuestionTabEvent.tabChange()';
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
    required TResult Function(int answerCount) getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(SelectedOption selectedOption) yesOrNo,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)
        getBasePrice,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandentOrder,
  }) {
    return tabChange();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function(int answerCount)? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(SelectedOption selectedOption)? yesOrNo,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
  }) {
    return tabChange?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function(int answerCount)? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(SelectedOption selectedOption)? yesOrNo,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
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
    required TResult Function(YesOrNo value) yesOrNo,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
    required TResult Function(GetBasePrice value) getBasePrice,
    required TResult Function(AbandentOrder value) abandentOrder,
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
    TResult? Function(YesOrNo value)? yesOrNo,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
    TResult? Function(GetBasePrice value)? getBasePrice,
    TResult? Function(AbandentOrder value)? abandentOrder,
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
    TResult Function(YesOrNo value)? yesOrNo,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    TResult Function(GetBasePrice value)? getBasePrice,
    TResult Function(AbandentOrder value)? abandentOrder,
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

class _$ResetTabSelectionImpl implements ResetTabSelection {
  const _$ResetTabSelectionImpl();

  @override
  String toString() {
    return 'QuestionTabEvent.resetTabSelection()';
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
    required TResult Function(int answerCount) getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(SelectedOption selectedOption) yesOrNo,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)
        getBasePrice,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandentOrder,
  }) {
    return resetTabSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function(int answerCount)? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(SelectedOption selectedOption)? yesOrNo,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
  }) {
    return resetTabSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function(int answerCount)? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(SelectedOption selectedOption)? yesOrNo,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
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
    required TResult Function(YesOrNo value) yesOrNo,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
    required TResult Function(GetBasePrice value) getBasePrice,
    required TResult Function(AbandentOrder value) abandentOrder,
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
    TResult? Function(YesOrNo value)? yesOrNo,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
    TResult? Function(GetBasePrice value)? getBasePrice,
    TResult? Function(AbandentOrder value)? abandentOrder,
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
    TResult Function(YesOrNo value)? yesOrNo,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    TResult Function(GetBasePrice value)? getBasePrice,
    TResult Function(AbandentOrder value)? abandentOrder,
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

class _$GetQuestionsImpl implements GetQuestions {
  const _$GetQuestionsImpl({required this.categoryType, required this.product});

  @override
  final String categoryType;
  @override
  final Product product;

  @override
  String toString() {
    return 'QuestionTabEvent.getQuestions(categoryType: $categoryType, product: $product)';
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
    required TResult Function(int answerCount) getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(SelectedOption selectedOption) yesOrNo,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)
        getBasePrice,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandentOrder,
  }) {
    return getQuestions(categoryType, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function(int answerCount)? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(SelectedOption selectedOption)? yesOrNo,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
  }) {
    return getQuestions?.call(categoryType, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function(int answerCount)? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(SelectedOption selectedOption)? yesOrNo,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
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
    required TResult Function(YesOrNo value) yesOrNo,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
    required TResult Function(GetBasePrice value) getBasePrice,
    required TResult Function(AbandentOrder value) abandentOrder,
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
    TResult? Function(YesOrNo value)? yesOrNo,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
    TResult? Function(GetBasePrice value)? getBasePrice,
    TResult? Function(AbandentOrder value)? abandentOrder,
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
    TResult Function(YesOrNo value)? yesOrNo,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    TResult Function(GetBasePrice value)? getBasePrice,
    TResult Function(AbandentOrder value)? abandentOrder,
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
  @useResult
  $Res call({int answerCount});
}

/// @nodoc
class __$$GetAnswerCountImplCopyWithImpl<$Res>
    extends _$QuestionTabEventCopyWithImpl<$Res, _$GetAnswerCountImpl>
    implements _$$GetAnswerCountImplCopyWith<$Res> {
  __$$GetAnswerCountImplCopyWithImpl(
      _$GetAnswerCountImpl _value, $Res Function(_$GetAnswerCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerCount = null,
  }) {
    return _then(_$GetAnswerCountImpl(
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAnswerCountImpl implements GetAnswerCount {
  const _$GetAnswerCountImpl({required this.answerCount});

  @override
  final int answerCount;

  @override
  String toString() {
    return 'QuestionTabEvent.getAnswerCount(answerCount: $answerCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAnswerCountImpl &&
            (identical(other.answerCount, answerCount) ||
                other.answerCount == answerCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answerCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAnswerCountImplCopyWith<_$GetAnswerCountImpl> get copyWith =>
      __$$GetAnswerCountImplCopyWithImpl<_$GetAnswerCountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tabChange,
    required TResult Function() resetTabSelection,
    required TResult Function(String categoryType, Product product)
        getQuestions,
    required TResult Function(int answerCount) getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(SelectedOption selectedOption) yesOrNo,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)
        getBasePrice,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandentOrder,
  }) {
    return getAnswerCount(answerCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function(int answerCount)? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(SelectedOption selectedOption)? yesOrNo,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
  }) {
    return getAnswerCount?.call(answerCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function(int answerCount)? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(SelectedOption selectedOption)? yesOrNo,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
    required TResult orElse(),
  }) {
    if (getAnswerCount != null) {
      return getAnswerCount(answerCount);
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
    required TResult Function(YesOrNo value) yesOrNo,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
    required TResult Function(GetBasePrice value) getBasePrice,
    required TResult Function(AbandentOrder value) abandentOrder,
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
    TResult? Function(YesOrNo value)? yesOrNo,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
    TResult? Function(GetBasePrice value)? getBasePrice,
    TResult? Function(AbandentOrder value)? abandentOrder,
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
    TResult Function(YesOrNo value)? yesOrNo,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    TResult Function(GetBasePrice value)? getBasePrice,
    TResult Function(AbandentOrder value)? abandentOrder,
    required TResult orElse(),
  }) {
    if (getAnswerCount != null) {
      return getAnswerCount(this);
    }
    return orElse();
  }
}

abstract class GetAnswerCount implements QuestionTabEvent {
  const factory GetAnswerCount({required final int answerCount}) =
      _$GetAnswerCountImpl;

  int get answerCount;
  @JsonKey(ignore: true)
  _$$GetAnswerCountImplCopyWith<_$GetAnswerCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
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

class _$MarkedQuestionsImpl implements MarkedQuestions {
  const _$MarkedQuestionsImpl({required this.selectedOption});

  @override
  final SelectedOption selectedOption;

  @override
  String toString() {
    return 'QuestionTabEvent.markedQuestions(selectedOption: $selectedOption)';
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
    required TResult Function(int answerCount) getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(SelectedOption selectedOption) yesOrNo,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)
        getBasePrice,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandentOrder,
  }) {
    return markedQuestions(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function(int answerCount)? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(SelectedOption selectedOption)? yesOrNo,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
  }) {
    return markedQuestions?.call(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function(int answerCount)? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(SelectedOption selectedOption)? yesOrNo,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
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
    required TResult Function(YesOrNo value) yesOrNo,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
    required TResult Function(GetBasePrice value) getBasePrice,
    required TResult Function(AbandentOrder value) abandentOrder,
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
    TResult? Function(YesOrNo value)? yesOrNo,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
    TResult? Function(GetBasePrice value)? getBasePrice,
    TResult? Function(AbandentOrder value)? abandentOrder,
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
    TResult Function(YesOrNo value)? yesOrNo,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    TResult Function(GetBasePrice value)? getBasePrice,
    TResult Function(AbandentOrder value)? abandentOrder,
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
abstract class _$$YesOrNoImplCopyWith<$Res> {
  factory _$$YesOrNoImplCopyWith(
          _$YesOrNoImpl value, $Res Function(_$YesOrNoImpl) then) =
      __$$YesOrNoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SelectedOption selectedOption});
}

/// @nodoc
class __$$YesOrNoImplCopyWithImpl<$Res>
    extends _$QuestionTabEventCopyWithImpl<$Res, _$YesOrNoImpl>
    implements _$$YesOrNoImplCopyWith<$Res> {
  __$$YesOrNoImplCopyWithImpl(
      _$YesOrNoImpl _value, $Res Function(_$YesOrNoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedOption = null,
  }) {
    return _then(_$YesOrNoImpl(
      selectedOption: null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as SelectedOption,
    ));
  }
}

/// @nodoc

class _$YesOrNoImpl implements YesOrNo {
  const _$YesOrNoImpl({required this.selectedOption});

  @override
  final SelectedOption selectedOption;

  @override
  String toString() {
    return 'QuestionTabEvent.yesOrNo(selectedOption: $selectedOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YesOrNoImpl &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YesOrNoImplCopyWith<_$YesOrNoImpl> get copyWith =>
      __$$YesOrNoImplCopyWithImpl<_$YesOrNoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tabChange,
    required TResult Function() resetTabSelection,
    required TResult Function(String categoryType, Product product)
        getQuestions,
    required TResult Function(int answerCount) getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(SelectedOption selectedOption) yesOrNo,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)
        getBasePrice,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandentOrder,
  }) {
    return yesOrNo(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function(int answerCount)? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(SelectedOption selectedOption)? yesOrNo,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
  }) {
    return yesOrNo?.call(selectedOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function(int answerCount)? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(SelectedOption selectedOption)? yesOrNo,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
    required TResult orElse(),
  }) {
    if (yesOrNo != null) {
      return yesOrNo(selectedOption);
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
    required TResult Function(YesOrNo value) yesOrNo,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
    required TResult Function(GetBasePrice value) getBasePrice,
    required TResult Function(AbandentOrder value) abandentOrder,
  }) {
    return yesOrNo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(ResetTabSelection value)? resetTabSelection,
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetAnswerCount value)? getAnswerCount,
    TResult? Function(MarkedQuestions value)? markedQuestions,
    TResult? Function(YesOrNo value)? yesOrNo,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
    TResult? Function(GetBasePrice value)? getBasePrice,
    TResult? Function(AbandentOrder value)? abandentOrder,
  }) {
    return yesOrNo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(ResetTabSelection value)? resetTabSelection,
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetAnswerCount value)? getAnswerCount,
    TResult Function(MarkedQuestions value)? markedQuestions,
    TResult Function(YesOrNo value)? yesOrNo,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    TResult Function(GetBasePrice value)? getBasePrice,
    TResult Function(AbandentOrder value)? abandentOrder,
    required TResult orElse(),
  }) {
    if (yesOrNo != null) {
      return yesOrNo(this);
    }
    return orElse();
  }
}

abstract class YesOrNo implements QuestionTabEvent {
  const factory YesOrNo({required final SelectedOption selectedOption}) =
      _$YesOrNoImpl;

  SelectedOption get selectedOption;
  @JsonKey(ignore: true)
  _$$YesOrNoImplCopyWith<_$YesOrNoImpl> get copyWith =>
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

class _$CountQuestionNumberImpl implements CountQuestionNumber {
  const _$CountQuestionNumberImpl({required this.countQuestionNumber});

  @override
  final int countQuestionNumber;

  @override
  String toString() {
    return 'QuestionTabEvent.countQuestionNumber(countQuestionNumber: $countQuestionNumber)';
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
    required TResult Function(int answerCount) getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(SelectedOption selectedOption) yesOrNo,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)
        getBasePrice,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandentOrder,
  }) {
    return countQuestionNumber(this.countQuestionNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function(int answerCount)? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(SelectedOption selectedOption)? yesOrNo,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
  }) {
    return countQuestionNumber?.call(this.countQuestionNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function(int answerCount)? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(SelectedOption selectedOption)? yesOrNo,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
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
    required TResult Function(YesOrNo value) yesOrNo,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
    required TResult Function(GetBasePrice value) getBasePrice,
    required TResult Function(AbandentOrder value) abandentOrder,
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
    TResult? Function(YesOrNo value)? yesOrNo,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
    TResult? Function(GetBasePrice value)? getBasePrice,
    TResult? Function(AbandentOrder value)? abandentOrder,
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
    TResult Function(YesOrNo value)? yesOrNo,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    TResult Function(GetBasePrice value)? getBasePrice,
    TResult Function(AbandentOrder value)? abandentOrder,
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
abstract class _$$GetBasePriceImplCopyWith<$Res> {
  factory _$$GetBasePriceImplCopyWith(
          _$GetBasePriceImpl value, $Res Function(_$GetBasePriceImpl) then) =
      __$$GetBasePriceImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AbandendOrderRequestModel abandendOrderRequestModel,
      PickupQuestionModel pickupQuestionModel});
}

/// @nodoc
class __$$GetBasePriceImplCopyWithImpl<$Res>
    extends _$QuestionTabEventCopyWithImpl<$Res, _$GetBasePriceImpl>
    implements _$$GetBasePriceImplCopyWith<$Res> {
  __$$GetBasePriceImplCopyWithImpl(
      _$GetBasePriceImpl _value, $Res Function(_$GetBasePriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abandendOrderRequestModel = null,
    Object? pickupQuestionModel = null,
  }) {
    return _then(_$GetBasePriceImpl(
      abandendOrderRequestModel: null == abandendOrderRequestModel
          ? _value.abandendOrderRequestModel
          : abandendOrderRequestModel // ignore: cast_nullable_to_non_nullable
              as AbandendOrderRequestModel,
      pickupQuestionModel: null == pickupQuestionModel
          ? _value.pickupQuestionModel
          : pickupQuestionModel // ignore: cast_nullable_to_non_nullable
              as PickupQuestionModel,
    ));
  }
}

/// @nodoc

class _$GetBasePriceImpl implements GetBasePrice {
  const _$GetBasePriceImpl(
      {required this.abandendOrderRequestModel,
      required this.pickupQuestionModel});

  @override
  final AbandendOrderRequestModel abandendOrderRequestModel;
  @override
  final PickupQuestionModel pickupQuestionModel;

  @override
  String toString() {
    return 'QuestionTabEvent.getBasePrice(abandendOrderRequestModel: $abandendOrderRequestModel, pickupQuestionModel: $pickupQuestionModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBasePriceImpl &&
            (identical(other.abandendOrderRequestModel,
                    abandendOrderRequestModel) ||
                other.abandendOrderRequestModel == abandendOrderRequestModel) &&
            (identical(other.pickupQuestionModel, pickupQuestionModel) ||
                other.pickupQuestionModel == pickupQuestionModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, abandendOrderRequestModel, pickupQuestionModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBasePriceImplCopyWith<_$GetBasePriceImpl> get copyWith =>
      __$$GetBasePriceImplCopyWithImpl<_$GetBasePriceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tabChange,
    required TResult Function() resetTabSelection,
    required TResult Function(String categoryType, Product product)
        getQuestions,
    required TResult Function(int answerCount) getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(SelectedOption selectedOption) yesOrNo,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)
        getBasePrice,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandentOrder,
  }) {
    return getBasePrice(abandendOrderRequestModel, pickupQuestionModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function(int answerCount)? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(SelectedOption selectedOption)? yesOrNo,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
  }) {
    return getBasePrice?.call(abandendOrderRequestModel, pickupQuestionModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function(int answerCount)? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(SelectedOption selectedOption)? yesOrNo,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
    required TResult orElse(),
  }) {
    if (getBasePrice != null) {
      return getBasePrice(abandendOrderRequestModel, pickupQuestionModel);
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
    required TResult Function(YesOrNo value) yesOrNo,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
    required TResult Function(GetBasePrice value) getBasePrice,
    required TResult Function(AbandentOrder value) abandentOrder,
  }) {
    return getBasePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(ResetTabSelection value)? resetTabSelection,
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetAnswerCount value)? getAnswerCount,
    TResult? Function(MarkedQuestions value)? markedQuestions,
    TResult? Function(YesOrNo value)? yesOrNo,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
    TResult? Function(GetBasePrice value)? getBasePrice,
    TResult? Function(AbandentOrder value)? abandentOrder,
  }) {
    return getBasePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(ResetTabSelection value)? resetTabSelection,
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetAnswerCount value)? getAnswerCount,
    TResult Function(MarkedQuestions value)? markedQuestions,
    TResult Function(YesOrNo value)? yesOrNo,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    TResult Function(GetBasePrice value)? getBasePrice,
    TResult Function(AbandentOrder value)? abandentOrder,
    required TResult orElse(),
  }) {
    if (getBasePrice != null) {
      return getBasePrice(this);
    }
    return orElse();
  }
}

abstract class GetBasePrice implements QuestionTabEvent {
  const factory GetBasePrice(
          {required final AbandendOrderRequestModel abandendOrderRequestModel,
          required final PickupQuestionModel pickupQuestionModel}) =
      _$GetBasePriceImpl;

  AbandendOrderRequestModel get abandendOrderRequestModel;
  PickupQuestionModel get pickupQuestionModel;
  @JsonKey(ignore: true)
  _$$GetBasePriceImplCopyWith<_$GetBasePriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AbandentOrderImplCopyWith<$Res> {
  factory _$$AbandentOrderImplCopyWith(
          _$AbandentOrderImpl value, $Res Function(_$AbandentOrderImpl) then) =
      __$$AbandentOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AbandendOrderRequestModel abandendOrderRequestModel});
}

/// @nodoc
class __$$AbandentOrderImplCopyWithImpl<$Res>
    extends _$QuestionTabEventCopyWithImpl<$Res, _$AbandentOrderImpl>
    implements _$$AbandentOrderImplCopyWith<$Res> {
  __$$AbandentOrderImplCopyWithImpl(
      _$AbandentOrderImpl _value, $Res Function(_$AbandentOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abandendOrderRequestModel = null,
  }) {
    return _then(_$AbandentOrderImpl(
      abandendOrderRequestModel: null == abandendOrderRequestModel
          ? _value.abandendOrderRequestModel
          : abandendOrderRequestModel // ignore: cast_nullable_to_non_nullable
              as AbandendOrderRequestModel,
    ));
  }
}

/// @nodoc

class _$AbandentOrderImpl implements AbandentOrder {
  const _$AbandentOrderImpl({required this.abandendOrderRequestModel});

  @override
  final AbandendOrderRequestModel abandendOrderRequestModel;

  @override
  String toString() {
    return 'QuestionTabEvent.abandentOrder(abandendOrderRequestModel: $abandendOrderRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbandentOrderImpl &&
            (identical(other.abandendOrderRequestModel,
                    abandendOrderRequestModel) ||
                other.abandendOrderRequestModel == abandendOrderRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, abandendOrderRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbandentOrderImplCopyWith<_$AbandentOrderImpl> get copyWith =>
      __$$AbandentOrderImplCopyWithImpl<_$AbandentOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tabChange,
    required TResult Function() resetTabSelection,
    required TResult Function(String categoryType, Product product)
        getQuestions,
    required TResult Function(int answerCount) getAnswerCount,
    required TResult Function(SelectedOption selectedOption) markedQuestions,
    required TResult Function(SelectedOption selectedOption) yesOrNo,
    required TResult Function(int countQuestionNumber) countQuestionNumber,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)
        getBasePrice,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandentOrder,
  }) {
    return abandentOrder(abandendOrderRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tabChange,
    TResult? Function()? resetTabSelection,
    TResult? Function(String categoryType, Product product)? getQuestions,
    TResult? Function(int answerCount)? getAnswerCount,
    TResult? Function(SelectedOption selectedOption)? markedQuestions,
    TResult? Function(SelectedOption selectedOption)? yesOrNo,
    TResult? Function(int countQuestionNumber)? countQuestionNumber,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
  }) {
    return abandentOrder?.call(abandendOrderRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tabChange,
    TResult Function()? resetTabSelection,
    TResult Function(String categoryType, Product product)? getQuestions,
    TResult Function(int answerCount)? getAnswerCount,
    TResult Function(SelectedOption selectedOption)? markedQuestions,
    TResult Function(SelectedOption selectedOption)? yesOrNo,
    TResult Function(int countQuestionNumber)? countQuestionNumber,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel,
            PickupQuestionModel pickupQuestionModel)?
        getBasePrice,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandentOrder,
    required TResult orElse(),
  }) {
    if (abandentOrder != null) {
      return abandentOrder(abandendOrderRequestModel);
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
    required TResult Function(YesOrNo value) yesOrNo,
    required TResult Function(CountQuestionNumber value) countQuestionNumber,
    required TResult Function(GetBasePrice value) getBasePrice,
    required TResult Function(AbandentOrder value) abandentOrder,
  }) {
    return abandentOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChange value)? tabChange,
    TResult? Function(ResetTabSelection value)? resetTabSelection,
    TResult? Function(GetQuestions value)? getQuestions,
    TResult? Function(GetAnswerCount value)? getAnswerCount,
    TResult? Function(MarkedQuestions value)? markedQuestions,
    TResult? Function(YesOrNo value)? yesOrNo,
    TResult? Function(CountQuestionNumber value)? countQuestionNumber,
    TResult? Function(GetBasePrice value)? getBasePrice,
    TResult? Function(AbandentOrder value)? abandentOrder,
  }) {
    return abandentOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChange value)? tabChange,
    TResult Function(ResetTabSelection value)? resetTabSelection,
    TResult Function(GetQuestions value)? getQuestions,
    TResult Function(GetAnswerCount value)? getAnswerCount,
    TResult Function(MarkedQuestions value)? markedQuestions,
    TResult Function(YesOrNo value)? yesOrNo,
    TResult Function(CountQuestionNumber value)? countQuestionNumber,
    TResult Function(GetBasePrice value)? getBasePrice,
    TResult Function(AbandentOrder value)? abandentOrder,
    required TResult orElse(),
  }) {
    if (abandentOrder != null) {
      return abandentOrder(this);
    }
    return orElse();
  }
}

abstract class AbandentOrder implements QuestionTabEvent {
  const factory AbandentOrder(
      {required final AbandendOrderRequestModel
          abandendOrderRequestModel}) = _$AbandentOrderImpl;

  AbandendOrderRequestModel get abandendOrderRequestModel;
  @JsonKey(ignore: true)
  _$$AbandentOrderImplCopyWith<_$AbandentOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionTabState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  int get answerCount => throw _privateConstructorUsedError;
  GetBasePriceModelResponce? get basePriceModelResponce =>
      throw _privateConstructorUsedError;
  List<SelectedOption> get selectedOption => throw _privateConstructorUsedError;
  GetQuestionModel? get getQuestionModel => throw _privateConstructorUsedError;
  List<SelectedOption>? get newList => throw _privateConstructorUsedError;
  GetProductsRespoceModel? get getProductsResponceModel =>
      throw _privateConstructorUsedError;
  int get selectedTabIndex => throw _privateConstructorUsedError;
  AbandendOrderResponceModel? get abandendOrderResponceModel =>
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
      Product? product,
      int answerCount,
      GetBasePriceModelResponce? basePriceModelResponce,
      List<SelectedOption> selectedOption,
      GetQuestionModel? getQuestionModel,
      List<SelectedOption>? newList,
      GetProductsRespoceModel? getProductsResponceModel,
      int selectedTabIndex,
      AbandendOrderResponceModel? abandendOrderResponceModel});
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
    Object? answerCount = null,
    Object? basePriceModelResponce = freezed,
    Object? selectedOption = null,
    Object? getQuestionModel = freezed,
    Object? newList = freezed,
    Object? getProductsResponceModel = freezed,
    Object? selectedTabIndex = null,
    Object? abandendOrderResponceModel = freezed,
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
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
      basePriceModelResponce: freezed == basePriceModelResponce
          ? _value.basePriceModelResponce
          : basePriceModelResponce // ignore: cast_nullable_to_non_nullable
              as GetBasePriceModelResponce?,
      selectedOption: null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as List<SelectedOption>,
      getQuestionModel: freezed == getQuestionModel
          ? _value.getQuestionModel
          : getQuestionModel // ignore: cast_nullable_to_non_nullable
              as GetQuestionModel?,
      newList: freezed == newList
          ? _value.newList
          : newList // ignore: cast_nullable_to_non_nullable
              as List<SelectedOption>?,
      getProductsResponceModel: freezed == getProductsResponceModel
          ? _value.getProductsResponceModel
          : getProductsResponceModel // ignore: cast_nullable_to_non_nullable
              as GetProductsRespoceModel?,
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      abandendOrderResponceModel: freezed == abandendOrderResponceModel
          ? _value.abandendOrderResponceModel
          : abandendOrderResponceModel // ignore: cast_nullable_to_non_nullable
              as AbandendOrderResponceModel?,
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
      int answerCount,
      GetBasePriceModelResponce? basePriceModelResponce,
      List<SelectedOption> selectedOption,
      GetQuestionModel? getQuestionModel,
      List<SelectedOption>? newList,
      GetProductsRespoceModel? getProductsResponceModel,
      int selectedTabIndex,
      AbandendOrderResponceModel? abandendOrderResponceModel});
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
    Object? answerCount = null,
    Object? basePriceModelResponce = freezed,
    Object? selectedOption = null,
    Object? getQuestionModel = freezed,
    Object? newList = freezed,
    Object? getProductsResponceModel = freezed,
    Object? selectedTabIndex = null,
    Object? abandendOrderResponceModel = freezed,
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
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
      basePriceModelResponce: freezed == basePriceModelResponce
          ? _value.basePriceModelResponce
          : basePriceModelResponce // ignore: cast_nullable_to_non_nullable
              as GetBasePriceModelResponce?,
      selectedOption: null == selectedOption
          ? _value._selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as List<SelectedOption>,
      getQuestionModel: freezed == getQuestionModel
          ? _value.getQuestionModel
          : getQuestionModel // ignore: cast_nullable_to_non_nullable
              as GetQuestionModel?,
      newList: freezed == newList
          ? _value._newList
          : newList // ignore: cast_nullable_to_non_nullable
              as List<SelectedOption>?,
      getProductsResponceModel: freezed == getProductsResponceModel
          ? _value.getProductsResponceModel
          : getProductsResponceModel // ignore: cast_nullable_to_non_nullable
              as GetProductsRespoceModel?,
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      abandendOrderResponceModel: freezed == abandendOrderResponceModel
          ? _value.abandendOrderResponceModel
          : abandendOrderResponceModel // ignore: cast_nullable_to_non_nullable
              as AbandendOrderResponceModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.product,
      required this.answerCount,
      this.basePriceModelResponce,
      required final List<SelectedOption> selectedOption,
      this.getQuestionModel,
      final List<SelectedOption>? newList,
      this.getProductsResponceModel,
      required this.selectedTabIndex,
      this.abandendOrderResponceModel})
      : _selectedOption = selectedOption,
        _newList = newList;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final Product? product;
  @override
  final int answerCount;
  @override
  final GetBasePriceModelResponce? basePriceModelResponce;
  final List<SelectedOption> _selectedOption;
  @override
  List<SelectedOption> get selectedOption {
    if (_selectedOption is EqualUnmodifiableListView) return _selectedOption;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedOption);
  }

  @override
  final GetQuestionModel? getQuestionModel;
  final List<SelectedOption>? _newList;
  @override
  List<SelectedOption>? get newList {
    final value = _newList;
    if (value == null) return null;
    if (_newList is EqualUnmodifiableListView) return _newList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final GetProductsRespoceModel? getProductsResponceModel;
  @override
  final int selectedTabIndex;
  @override
  final AbandendOrderResponceModel? abandendOrderResponceModel;

  @override
  String toString() {
    return 'QuestionTabState(isLoading: $isLoading, hasError: $hasError, message: $message, product: $product, answerCount: $answerCount, basePriceModelResponce: $basePriceModelResponce, selectedOption: $selectedOption, getQuestionModel: $getQuestionModel, newList: $newList, getProductsResponceModel: $getProductsResponceModel, selectedTabIndex: $selectedTabIndex, abandendOrderResponceModel: $abandendOrderResponceModel)';
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
            (identical(other.basePriceModelResponce, basePriceModelResponce) ||
                other.basePriceModelResponce == basePriceModelResponce) &&
            const DeepCollectionEquality()
                .equals(other._selectedOption, _selectedOption) &&
            (identical(other.getQuestionModel, getQuestionModel) ||
                other.getQuestionModel == getQuestionModel) &&
            const DeepCollectionEquality().equals(other._newList, _newList) &&
            (identical(
                    other.getProductsResponceModel, getProductsResponceModel) ||
                other.getProductsResponceModel == getProductsResponceModel) &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex) &&
            (identical(other.abandendOrderResponceModel,
                    abandendOrderResponceModel) ||
                other.abandendOrderResponceModel ==
                    abandendOrderResponceModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      message,
      product,
      answerCount,
      basePriceModelResponce,
      const DeepCollectionEquality().hash(_selectedOption),
      getQuestionModel,
      const DeepCollectionEquality().hash(_newList),
      getProductsResponceModel,
      selectedTabIndex,
      abandendOrderResponceModel);

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
          required final int answerCount,
          final GetBasePriceModelResponce? basePriceModelResponce,
          required final List<SelectedOption> selectedOption,
          final GetQuestionModel? getQuestionModel,
          final List<SelectedOption>? newList,
          final GetProductsRespoceModel? getProductsResponceModel,
          required final int selectedTabIndex,
          final AbandendOrderResponceModel? abandendOrderResponceModel}) =
      _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  Product? get product;
  @override
  int get answerCount;
  @override
  GetBasePriceModelResponce? get basePriceModelResponce;
  @override
  List<SelectedOption> get selectedOption;
  @override
  GetQuestionModel? get getQuestionModel;
  @override
  List<SelectedOption>? get newList;
  @override
  GetProductsRespoceModel? get getProductsResponceModel;
  @override
  int get selectedTabIndex;
  @override
  AbandendOrderResponceModel? get abandendOrderResponceModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
