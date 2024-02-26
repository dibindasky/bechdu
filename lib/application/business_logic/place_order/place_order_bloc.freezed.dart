// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromoCodeRequestModel promoCodeRequestModel)
        getPromoCode,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandendOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromoCodeRequestModel promoCodeRequestModel)?
        getPromoCode,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromoCode value) getPromoCode,
    required TResult Function(AbandendOrder value) abandendOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderEventCopyWith<$Res> {
  factory $PlaceOrderEventCopyWith(
          PlaceOrderEvent value, $Res Function(PlaceOrderEvent) then) =
      _$PlaceOrderEventCopyWithImpl<$Res, PlaceOrderEvent>;
}

/// @nodoc
class _$PlaceOrderEventCopyWithImpl<$Res, $Val extends PlaceOrderEvent>
    implements $PlaceOrderEventCopyWith<$Res> {
  _$PlaceOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPromoCodeImplCopyWith<$Res> {
  factory _$$GetPromoCodeImplCopyWith(
          _$GetPromoCodeImpl value, $Res Function(_$GetPromoCodeImpl) then) =
      __$$GetPromoCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PromoCodeRequestModel promoCodeRequestModel});
}

/// @nodoc
class __$$GetPromoCodeImplCopyWithImpl<$Res>
    extends _$PlaceOrderEventCopyWithImpl<$Res, _$GetPromoCodeImpl>
    implements _$$GetPromoCodeImplCopyWith<$Res> {
  __$$GetPromoCodeImplCopyWithImpl(
      _$GetPromoCodeImpl _value, $Res Function(_$GetPromoCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promoCodeRequestModel = null,
  }) {
    return _then(_$GetPromoCodeImpl(
      promoCodeRequestModel: null == promoCodeRequestModel
          ? _value.promoCodeRequestModel
          : promoCodeRequestModel // ignore: cast_nullable_to_non_nullable
              as PromoCodeRequestModel,
    ));
  }
}

/// @nodoc

class _$GetPromoCodeImpl implements GetPromoCode {
  const _$GetPromoCodeImpl({required this.promoCodeRequestModel});

  @override
  final PromoCodeRequestModel promoCodeRequestModel;

  @override
  String toString() {
    return 'PlaceOrderEvent.getPromoCode(promoCodeRequestModel: $promoCodeRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPromoCodeImpl &&
            (identical(other.promoCodeRequestModel, promoCodeRequestModel) ||
                other.promoCodeRequestModel == promoCodeRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promoCodeRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPromoCodeImplCopyWith<_$GetPromoCodeImpl> get copyWith =>
      __$$GetPromoCodeImplCopyWithImpl<_$GetPromoCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromoCodeRequestModel promoCodeRequestModel)
        getPromoCode,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandendOrder,
  }) {
    return getPromoCode(promoCodeRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromoCodeRequestModel promoCodeRequestModel)?
        getPromoCode,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
  }) {
    return getPromoCode?.call(promoCodeRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    required TResult orElse(),
  }) {
    if (getPromoCode != null) {
      return getPromoCode(promoCodeRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromoCode value) getPromoCode,
    required TResult Function(AbandendOrder value) abandendOrder,
  }) {
    return getPromoCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
  }) {
    return getPromoCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    required TResult orElse(),
  }) {
    if (getPromoCode != null) {
      return getPromoCode(this);
    }
    return orElse();
  }
}

abstract class GetPromoCode implements PlaceOrderEvent {
  const factory GetPromoCode(
          {required final PromoCodeRequestModel promoCodeRequestModel}) =
      _$GetPromoCodeImpl;

  PromoCodeRequestModel get promoCodeRequestModel;
  @JsonKey(ignore: true)
  _$$GetPromoCodeImplCopyWith<_$GetPromoCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AbandendOrderImplCopyWith<$Res> {
  factory _$$AbandendOrderImplCopyWith(
          _$AbandendOrderImpl value, $Res Function(_$AbandendOrderImpl) then) =
      __$$AbandendOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AbandendOrderRequestModel abandendOrderRequestModel});
}

/// @nodoc
class __$$AbandendOrderImplCopyWithImpl<$Res>
    extends _$PlaceOrderEventCopyWithImpl<$Res, _$AbandendOrderImpl>
    implements _$$AbandendOrderImplCopyWith<$Res> {
  __$$AbandendOrderImplCopyWithImpl(
      _$AbandendOrderImpl _value, $Res Function(_$AbandendOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abandendOrderRequestModel = null,
  }) {
    return _then(_$AbandendOrderImpl(
      abandendOrderRequestModel: null == abandendOrderRequestModel
          ? _value.abandendOrderRequestModel
          : abandendOrderRequestModel // ignore: cast_nullable_to_non_nullable
              as AbandendOrderRequestModel,
    ));
  }
}

/// @nodoc

class _$AbandendOrderImpl implements AbandendOrder {
  const _$AbandendOrderImpl({required this.abandendOrderRequestModel});

  @override
  final AbandendOrderRequestModel abandendOrderRequestModel;

  @override
  String toString() {
    return 'PlaceOrderEvent.abandendOrder(abandendOrderRequestModel: $abandendOrderRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbandendOrderImpl &&
            (identical(other.abandendOrderRequestModel,
                    abandendOrderRequestModel) ||
                other.abandendOrderRequestModel == abandendOrderRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, abandendOrderRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbandendOrderImplCopyWith<_$AbandendOrderImpl> get copyWith =>
      __$$AbandendOrderImplCopyWithImpl<_$AbandendOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromoCodeRequestModel promoCodeRequestModel)
        getPromoCode,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandendOrder,
  }) {
    return abandendOrder(abandendOrderRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromoCodeRequestModel promoCodeRequestModel)?
        getPromoCode,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
  }) {
    return abandendOrder?.call(abandendOrderRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    required TResult orElse(),
  }) {
    if (abandendOrder != null) {
      return abandendOrder(abandendOrderRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromoCode value) getPromoCode,
    required TResult Function(AbandendOrder value) abandendOrder,
  }) {
    return abandendOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
  }) {
    return abandendOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    required TResult orElse(),
  }) {
    if (abandendOrder != null) {
      return abandendOrder(this);
    }
    return orElse();
  }
}

abstract class AbandendOrder implements PlaceOrderEvent {
  const factory AbandendOrder(
      {required final AbandendOrderRequestModel
          abandendOrderRequestModel}) = _$AbandendOrderImpl;

  AbandendOrderRequestModel get abandendOrderRequestModel;
  @JsonKey(ignore: true)
  _$$AbandendOrderImplCopyWith<_$AbandendOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceOrderState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PromoCodeResponceModel? get promoCodeResponceModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceOrderStateCopyWith<PlaceOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderStateCopyWith<$Res> {
  factory $PlaceOrderStateCopyWith(
          PlaceOrderState value, $Res Function(PlaceOrderState) then) =
      _$PlaceOrderStateCopyWithImpl<$Res, PlaceOrderState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      PromoCodeResponceModel? promoCodeResponceModel});
}

/// @nodoc
class _$PlaceOrderStateCopyWithImpl<$Res, $Val extends PlaceOrderState>
    implements $PlaceOrderStateCopyWith<$Res> {
  _$PlaceOrderStateCopyWithImpl(this._value, this._then);

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
    Object? promoCodeResponceModel = freezed,
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
      promoCodeResponceModel: freezed == promoCodeResponceModel
          ? _value.promoCodeResponceModel
          : promoCodeResponceModel // ignore: cast_nullable_to_non_nullable
              as PromoCodeResponceModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PlaceOrderStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      PromoCodeResponceModel? promoCodeResponceModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PlaceOrderStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? promoCodeResponceModel = freezed,
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
      promoCodeResponceModel: freezed == promoCodeResponceModel
          ? _value.promoCodeResponceModel
          : promoCodeResponceModel // ignore: cast_nullable_to_non_nullable
              as PromoCodeResponceModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.promoCodeResponceModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final PromoCodeResponceModel? promoCodeResponceModel;

  @override
  String toString() {
    return 'PlaceOrderState(isLoading: $isLoading, hasError: $hasError, message: $message, promoCodeResponceModel: $promoCodeResponceModel)';
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
            (identical(other.promoCodeResponceModel, promoCodeResponceModel) ||
                other.promoCodeResponceModel == promoCodeResponceModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, hasError, message, promoCodeResponceModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements PlaceOrderState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      final String? message,
      final PromoCodeResponceModel? promoCodeResponceModel}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  PromoCodeResponceModel? get promoCodeResponceModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
