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
    required TResult Function() orderPlacing,
    required TResult Function(User user) userDetailsPick,
    required TResult Function(ProductDetails productDetails) productDetailsPick,
    required TResult Function(User user) addressPick,
    required TResult Function(Payment payment) paymentOption,
    required TResult Function(PickUpDetails pickUpDetails) pickupDetailsPick,
    required TResult Function() promoCodeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromoCodeRequestModel promoCodeRequestModel)?
        getPromoCode,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult? Function()? orderPlacing,
    TResult? Function(User user)? userDetailsPick,
    TResult? Function(ProductDetails productDetails)? productDetailsPick,
    TResult? Function(User user)? addressPick,
    TResult? Function(Payment payment)? paymentOption,
    TResult? Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult? Function()? promoCodeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult Function()? orderPlacing,
    TResult Function(User user)? userDetailsPick,
    TResult Function(ProductDetails productDetails)? productDetailsPick,
    TResult Function(User user)? addressPick,
    TResult Function(Payment payment)? paymentOption,
    TResult Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult Function()? promoCodeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromoCode value) getPromoCode,
    required TResult Function(AbandendOrder value) abandendOrder,
    required TResult Function(OrderPlacing value) orderPlacing,
    required TResult Function(UserDetailsPick value) userDetailsPick,
    required TResult Function(ProductDetailsPick value) productDetailsPick,
    required TResult Function(AddressPick value) addressPick,
    required TResult Function(PaymentOption value) paymentOption,
    required TResult Function(PickupDetailsPick value) pickupDetailsPick,
    required TResult Function(PromoCodeSuccess value) promoCodeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
    TResult? Function(OrderPlacing value)? orderPlacing,
    TResult? Function(UserDetailsPick value)? userDetailsPick,
    TResult? Function(ProductDetailsPick value)? productDetailsPick,
    TResult? Function(AddressPick value)? addressPick,
    TResult? Function(PaymentOption value)? paymentOption,
    TResult? Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult? Function(PromoCodeSuccess value)? promoCodeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    TResult Function(OrderPlacing value)? orderPlacing,
    TResult Function(UserDetailsPick value)? userDetailsPick,
    TResult Function(ProductDetailsPick value)? productDetailsPick,
    TResult Function(AddressPick value)? addressPick,
    TResult Function(PaymentOption value)? paymentOption,
    TResult Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult Function(PromoCodeSuccess value)? promoCodeSuccess,
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
    required TResult Function() orderPlacing,
    required TResult Function(User user) userDetailsPick,
    required TResult Function(ProductDetails productDetails) productDetailsPick,
    required TResult Function(User user) addressPick,
    required TResult Function(Payment payment) paymentOption,
    required TResult Function(PickUpDetails pickUpDetails) pickupDetailsPick,
    required TResult Function() promoCodeSuccess,
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
    TResult? Function()? orderPlacing,
    TResult? Function(User user)? userDetailsPick,
    TResult? Function(ProductDetails productDetails)? productDetailsPick,
    TResult? Function(User user)? addressPick,
    TResult? Function(Payment payment)? paymentOption,
    TResult? Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult? Function()? promoCodeSuccess,
  }) {
    return getPromoCode?.call(promoCodeRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult Function()? orderPlacing,
    TResult Function(User user)? userDetailsPick,
    TResult Function(ProductDetails productDetails)? productDetailsPick,
    TResult Function(User user)? addressPick,
    TResult Function(Payment payment)? paymentOption,
    TResult Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult Function()? promoCodeSuccess,
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
    required TResult Function(OrderPlacing value) orderPlacing,
    required TResult Function(UserDetailsPick value) userDetailsPick,
    required TResult Function(ProductDetailsPick value) productDetailsPick,
    required TResult Function(AddressPick value) addressPick,
    required TResult Function(PaymentOption value) paymentOption,
    required TResult Function(PickupDetailsPick value) pickupDetailsPick,
    required TResult Function(PromoCodeSuccess value) promoCodeSuccess,
  }) {
    return getPromoCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
    TResult? Function(OrderPlacing value)? orderPlacing,
    TResult? Function(UserDetailsPick value)? userDetailsPick,
    TResult? Function(ProductDetailsPick value)? productDetailsPick,
    TResult? Function(AddressPick value)? addressPick,
    TResult? Function(PaymentOption value)? paymentOption,
    TResult? Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult? Function(PromoCodeSuccess value)? promoCodeSuccess,
  }) {
    return getPromoCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    TResult Function(OrderPlacing value)? orderPlacing,
    TResult Function(UserDetailsPick value)? userDetailsPick,
    TResult Function(ProductDetailsPick value)? productDetailsPick,
    TResult Function(AddressPick value)? addressPick,
    TResult Function(PaymentOption value)? paymentOption,
    TResult Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult Function(PromoCodeSuccess value)? promoCodeSuccess,
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
    required TResult Function() orderPlacing,
    required TResult Function(User user) userDetailsPick,
    required TResult Function(ProductDetails productDetails) productDetailsPick,
    required TResult Function(User user) addressPick,
    required TResult Function(Payment payment) paymentOption,
    required TResult Function(PickUpDetails pickUpDetails) pickupDetailsPick,
    required TResult Function() promoCodeSuccess,
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
    TResult? Function()? orderPlacing,
    TResult? Function(User user)? userDetailsPick,
    TResult? Function(ProductDetails productDetails)? productDetailsPick,
    TResult? Function(User user)? addressPick,
    TResult? Function(Payment payment)? paymentOption,
    TResult? Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult? Function()? promoCodeSuccess,
  }) {
    return abandendOrder?.call(abandendOrderRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult Function()? orderPlacing,
    TResult Function(User user)? userDetailsPick,
    TResult Function(ProductDetails productDetails)? productDetailsPick,
    TResult Function(User user)? addressPick,
    TResult Function(Payment payment)? paymentOption,
    TResult Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult Function()? promoCodeSuccess,
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
    required TResult Function(OrderPlacing value) orderPlacing,
    required TResult Function(UserDetailsPick value) userDetailsPick,
    required TResult Function(ProductDetailsPick value) productDetailsPick,
    required TResult Function(AddressPick value) addressPick,
    required TResult Function(PaymentOption value) paymentOption,
    required TResult Function(PickupDetailsPick value) pickupDetailsPick,
    required TResult Function(PromoCodeSuccess value) promoCodeSuccess,
  }) {
    return abandendOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
    TResult? Function(OrderPlacing value)? orderPlacing,
    TResult? Function(UserDetailsPick value)? userDetailsPick,
    TResult? Function(ProductDetailsPick value)? productDetailsPick,
    TResult? Function(AddressPick value)? addressPick,
    TResult? Function(PaymentOption value)? paymentOption,
    TResult? Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult? Function(PromoCodeSuccess value)? promoCodeSuccess,
  }) {
    return abandendOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    TResult Function(OrderPlacing value)? orderPlacing,
    TResult Function(UserDetailsPick value)? userDetailsPick,
    TResult Function(ProductDetailsPick value)? productDetailsPick,
    TResult Function(AddressPick value)? addressPick,
    TResult Function(PaymentOption value)? paymentOption,
    TResult Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult Function(PromoCodeSuccess value)? promoCodeSuccess,
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
abstract class _$$OrderPlacingImplCopyWith<$Res> {
  factory _$$OrderPlacingImplCopyWith(
          _$OrderPlacingImpl value, $Res Function(_$OrderPlacingImpl) then) =
      __$$OrderPlacingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderPlacingImplCopyWithImpl<$Res>
    extends _$PlaceOrderEventCopyWithImpl<$Res, _$OrderPlacingImpl>
    implements _$$OrderPlacingImplCopyWith<$Res> {
  __$$OrderPlacingImplCopyWithImpl(
      _$OrderPlacingImpl _value, $Res Function(_$OrderPlacingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderPlacingImpl implements OrderPlacing {
  const _$OrderPlacingImpl();

  @override
  String toString() {
    return 'PlaceOrderEvent.orderPlacing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderPlacingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromoCodeRequestModel promoCodeRequestModel)
        getPromoCode,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandendOrder,
    required TResult Function() orderPlacing,
    required TResult Function(User user) userDetailsPick,
    required TResult Function(ProductDetails productDetails) productDetailsPick,
    required TResult Function(User user) addressPick,
    required TResult Function(Payment payment) paymentOption,
    required TResult Function(PickUpDetails pickUpDetails) pickupDetailsPick,
    required TResult Function() promoCodeSuccess,
  }) {
    return orderPlacing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromoCodeRequestModel promoCodeRequestModel)?
        getPromoCode,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult? Function()? orderPlacing,
    TResult? Function(User user)? userDetailsPick,
    TResult? Function(ProductDetails productDetails)? productDetailsPick,
    TResult? Function(User user)? addressPick,
    TResult? Function(Payment payment)? paymentOption,
    TResult? Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult? Function()? promoCodeSuccess,
  }) {
    return orderPlacing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult Function()? orderPlacing,
    TResult Function(User user)? userDetailsPick,
    TResult Function(ProductDetails productDetails)? productDetailsPick,
    TResult Function(User user)? addressPick,
    TResult Function(Payment payment)? paymentOption,
    TResult Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult Function()? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (orderPlacing != null) {
      return orderPlacing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromoCode value) getPromoCode,
    required TResult Function(AbandendOrder value) abandendOrder,
    required TResult Function(OrderPlacing value) orderPlacing,
    required TResult Function(UserDetailsPick value) userDetailsPick,
    required TResult Function(ProductDetailsPick value) productDetailsPick,
    required TResult Function(AddressPick value) addressPick,
    required TResult Function(PaymentOption value) paymentOption,
    required TResult Function(PickupDetailsPick value) pickupDetailsPick,
    required TResult Function(PromoCodeSuccess value) promoCodeSuccess,
  }) {
    return orderPlacing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
    TResult? Function(OrderPlacing value)? orderPlacing,
    TResult? Function(UserDetailsPick value)? userDetailsPick,
    TResult? Function(ProductDetailsPick value)? productDetailsPick,
    TResult? Function(AddressPick value)? addressPick,
    TResult? Function(PaymentOption value)? paymentOption,
    TResult? Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult? Function(PromoCodeSuccess value)? promoCodeSuccess,
  }) {
    return orderPlacing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    TResult Function(OrderPlacing value)? orderPlacing,
    TResult Function(UserDetailsPick value)? userDetailsPick,
    TResult Function(ProductDetailsPick value)? productDetailsPick,
    TResult Function(AddressPick value)? addressPick,
    TResult Function(PaymentOption value)? paymentOption,
    TResult Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult Function(PromoCodeSuccess value)? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (orderPlacing != null) {
      return orderPlacing(this);
    }
    return orElse();
  }
}

abstract class OrderPlacing implements PlaceOrderEvent {
  const factory OrderPlacing() = _$OrderPlacingImpl;
}

/// @nodoc
abstract class _$$UserDetailsPickImplCopyWith<$Res> {
  factory _$$UserDetailsPickImplCopyWith(_$UserDetailsPickImpl value,
          $Res Function(_$UserDetailsPickImpl) then) =
      __$$UserDetailsPickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UserDetailsPickImplCopyWithImpl<$Res>
    extends _$PlaceOrderEventCopyWithImpl<$Res, _$UserDetailsPickImpl>
    implements _$$UserDetailsPickImplCopyWith<$Res> {
  __$$UserDetailsPickImplCopyWithImpl(
      _$UserDetailsPickImpl _value, $Res Function(_$UserDetailsPickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserDetailsPickImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserDetailsPickImpl implements UserDetailsPick {
  const _$UserDetailsPickImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'PlaceOrderEvent.userDetailsPick(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsPickImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsPickImplCopyWith<_$UserDetailsPickImpl> get copyWith =>
      __$$UserDetailsPickImplCopyWithImpl<_$UserDetailsPickImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromoCodeRequestModel promoCodeRequestModel)
        getPromoCode,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandendOrder,
    required TResult Function() orderPlacing,
    required TResult Function(User user) userDetailsPick,
    required TResult Function(ProductDetails productDetails) productDetailsPick,
    required TResult Function(User user) addressPick,
    required TResult Function(Payment payment) paymentOption,
    required TResult Function(PickUpDetails pickUpDetails) pickupDetailsPick,
    required TResult Function() promoCodeSuccess,
  }) {
    return userDetailsPick(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromoCodeRequestModel promoCodeRequestModel)?
        getPromoCode,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult? Function()? orderPlacing,
    TResult? Function(User user)? userDetailsPick,
    TResult? Function(ProductDetails productDetails)? productDetailsPick,
    TResult? Function(User user)? addressPick,
    TResult? Function(Payment payment)? paymentOption,
    TResult? Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult? Function()? promoCodeSuccess,
  }) {
    return userDetailsPick?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult Function()? orderPlacing,
    TResult Function(User user)? userDetailsPick,
    TResult Function(ProductDetails productDetails)? productDetailsPick,
    TResult Function(User user)? addressPick,
    TResult Function(Payment payment)? paymentOption,
    TResult Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult Function()? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (userDetailsPick != null) {
      return userDetailsPick(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromoCode value) getPromoCode,
    required TResult Function(AbandendOrder value) abandendOrder,
    required TResult Function(OrderPlacing value) orderPlacing,
    required TResult Function(UserDetailsPick value) userDetailsPick,
    required TResult Function(ProductDetailsPick value) productDetailsPick,
    required TResult Function(AddressPick value) addressPick,
    required TResult Function(PaymentOption value) paymentOption,
    required TResult Function(PickupDetailsPick value) pickupDetailsPick,
    required TResult Function(PromoCodeSuccess value) promoCodeSuccess,
  }) {
    return userDetailsPick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
    TResult? Function(OrderPlacing value)? orderPlacing,
    TResult? Function(UserDetailsPick value)? userDetailsPick,
    TResult? Function(ProductDetailsPick value)? productDetailsPick,
    TResult? Function(AddressPick value)? addressPick,
    TResult? Function(PaymentOption value)? paymentOption,
    TResult? Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult? Function(PromoCodeSuccess value)? promoCodeSuccess,
  }) {
    return userDetailsPick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    TResult Function(OrderPlacing value)? orderPlacing,
    TResult Function(UserDetailsPick value)? userDetailsPick,
    TResult Function(ProductDetailsPick value)? productDetailsPick,
    TResult Function(AddressPick value)? addressPick,
    TResult Function(PaymentOption value)? paymentOption,
    TResult Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult Function(PromoCodeSuccess value)? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (userDetailsPick != null) {
      return userDetailsPick(this);
    }
    return orElse();
  }
}

abstract class UserDetailsPick implements PlaceOrderEvent {
  const factory UserDetailsPick({required final User user}) =
      _$UserDetailsPickImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$UserDetailsPickImplCopyWith<_$UserDetailsPickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailsPickImplCopyWith<$Res> {
  factory _$$ProductDetailsPickImplCopyWith(_$ProductDetailsPickImpl value,
          $Res Function(_$ProductDetailsPickImpl) then) =
      __$$ProductDetailsPickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductDetails productDetails});
}

/// @nodoc
class __$$ProductDetailsPickImplCopyWithImpl<$Res>
    extends _$PlaceOrderEventCopyWithImpl<$Res, _$ProductDetailsPickImpl>
    implements _$$ProductDetailsPickImplCopyWith<$Res> {
  __$$ProductDetailsPickImplCopyWithImpl(_$ProductDetailsPickImpl _value,
      $Res Function(_$ProductDetailsPickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productDetails = null,
  }) {
    return _then(_$ProductDetailsPickImpl(
      productDetails: null == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as ProductDetails,
    ));
  }
}

/// @nodoc

class _$ProductDetailsPickImpl implements ProductDetailsPick {
  const _$ProductDetailsPickImpl({required this.productDetails});

  @override
  final ProductDetails productDetails;

  @override
  String toString() {
    return 'PlaceOrderEvent.productDetailsPick(productDetails: $productDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsPickImpl &&
            (identical(other.productDetails, productDetails) ||
                other.productDetails == productDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsPickImplCopyWith<_$ProductDetailsPickImpl> get copyWith =>
      __$$ProductDetailsPickImplCopyWithImpl<_$ProductDetailsPickImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromoCodeRequestModel promoCodeRequestModel)
        getPromoCode,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandendOrder,
    required TResult Function() orderPlacing,
    required TResult Function(User user) userDetailsPick,
    required TResult Function(ProductDetails productDetails) productDetailsPick,
    required TResult Function(User user) addressPick,
    required TResult Function(Payment payment) paymentOption,
    required TResult Function(PickUpDetails pickUpDetails) pickupDetailsPick,
    required TResult Function() promoCodeSuccess,
  }) {
    return productDetailsPick(productDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromoCodeRequestModel promoCodeRequestModel)?
        getPromoCode,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult? Function()? orderPlacing,
    TResult? Function(User user)? userDetailsPick,
    TResult? Function(ProductDetails productDetails)? productDetailsPick,
    TResult? Function(User user)? addressPick,
    TResult? Function(Payment payment)? paymentOption,
    TResult? Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult? Function()? promoCodeSuccess,
  }) {
    return productDetailsPick?.call(productDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult Function()? orderPlacing,
    TResult Function(User user)? userDetailsPick,
    TResult Function(ProductDetails productDetails)? productDetailsPick,
    TResult Function(User user)? addressPick,
    TResult Function(Payment payment)? paymentOption,
    TResult Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult Function()? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (productDetailsPick != null) {
      return productDetailsPick(productDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromoCode value) getPromoCode,
    required TResult Function(AbandendOrder value) abandendOrder,
    required TResult Function(OrderPlacing value) orderPlacing,
    required TResult Function(UserDetailsPick value) userDetailsPick,
    required TResult Function(ProductDetailsPick value) productDetailsPick,
    required TResult Function(AddressPick value) addressPick,
    required TResult Function(PaymentOption value) paymentOption,
    required TResult Function(PickupDetailsPick value) pickupDetailsPick,
    required TResult Function(PromoCodeSuccess value) promoCodeSuccess,
  }) {
    return productDetailsPick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
    TResult? Function(OrderPlacing value)? orderPlacing,
    TResult? Function(UserDetailsPick value)? userDetailsPick,
    TResult? Function(ProductDetailsPick value)? productDetailsPick,
    TResult? Function(AddressPick value)? addressPick,
    TResult? Function(PaymentOption value)? paymentOption,
    TResult? Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult? Function(PromoCodeSuccess value)? promoCodeSuccess,
  }) {
    return productDetailsPick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    TResult Function(OrderPlacing value)? orderPlacing,
    TResult Function(UserDetailsPick value)? userDetailsPick,
    TResult Function(ProductDetailsPick value)? productDetailsPick,
    TResult Function(AddressPick value)? addressPick,
    TResult Function(PaymentOption value)? paymentOption,
    TResult Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult Function(PromoCodeSuccess value)? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (productDetailsPick != null) {
      return productDetailsPick(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsPick implements PlaceOrderEvent {
  const factory ProductDetailsPick(
          {required final ProductDetails productDetails}) =
      _$ProductDetailsPickImpl;

  ProductDetails get productDetails;
  @JsonKey(ignore: true)
  _$$ProductDetailsPickImplCopyWith<_$ProductDetailsPickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressPickImplCopyWith<$Res> {
  factory _$$AddressPickImplCopyWith(
          _$AddressPickImpl value, $Res Function(_$AddressPickImpl) then) =
      __$$AddressPickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AddressPickImplCopyWithImpl<$Res>
    extends _$PlaceOrderEventCopyWithImpl<$Res, _$AddressPickImpl>
    implements _$$AddressPickImplCopyWith<$Res> {
  __$$AddressPickImplCopyWithImpl(
      _$AddressPickImpl _value, $Res Function(_$AddressPickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AddressPickImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AddressPickImpl implements AddressPick {
  const _$AddressPickImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'PlaceOrderEvent.addressPick(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressPickImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressPickImplCopyWith<_$AddressPickImpl> get copyWith =>
      __$$AddressPickImplCopyWithImpl<_$AddressPickImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromoCodeRequestModel promoCodeRequestModel)
        getPromoCode,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandendOrder,
    required TResult Function() orderPlacing,
    required TResult Function(User user) userDetailsPick,
    required TResult Function(ProductDetails productDetails) productDetailsPick,
    required TResult Function(User user) addressPick,
    required TResult Function(Payment payment) paymentOption,
    required TResult Function(PickUpDetails pickUpDetails) pickupDetailsPick,
    required TResult Function() promoCodeSuccess,
  }) {
    return addressPick(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromoCodeRequestModel promoCodeRequestModel)?
        getPromoCode,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult? Function()? orderPlacing,
    TResult? Function(User user)? userDetailsPick,
    TResult? Function(ProductDetails productDetails)? productDetailsPick,
    TResult? Function(User user)? addressPick,
    TResult? Function(Payment payment)? paymentOption,
    TResult? Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult? Function()? promoCodeSuccess,
  }) {
    return addressPick?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult Function()? orderPlacing,
    TResult Function(User user)? userDetailsPick,
    TResult Function(ProductDetails productDetails)? productDetailsPick,
    TResult Function(User user)? addressPick,
    TResult Function(Payment payment)? paymentOption,
    TResult Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult Function()? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (addressPick != null) {
      return addressPick(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromoCode value) getPromoCode,
    required TResult Function(AbandendOrder value) abandendOrder,
    required TResult Function(OrderPlacing value) orderPlacing,
    required TResult Function(UserDetailsPick value) userDetailsPick,
    required TResult Function(ProductDetailsPick value) productDetailsPick,
    required TResult Function(AddressPick value) addressPick,
    required TResult Function(PaymentOption value) paymentOption,
    required TResult Function(PickupDetailsPick value) pickupDetailsPick,
    required TResult Function(PromoCodeSuccess value) promoCodeSuccess,
  }) {
    return addressPick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
    TResult? Function(OrderPlacing value)? orderPlacing,
    TResult? Function(UserDetailsPick value)? userDetailsPick,
    TResult? Function(ProductDetailsPick value)? productDetailsPick,
    TResult? Function(AddressPick value)? addressPick,
    TResult? Function(PaymentOption value)? paymentOption,
    TResult? Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult? Function(PromoCodeSuccess value)? promoCodeSuccess,
  }) {
    return addressPick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    TResult Function(OrderPlacing value)? orderPlacing,
    TResult Function(UserDetailsPick value)? userDetailsPick,
    TResult Function(ProductDetailsPick value)? productDetailsPick,
    TResult Function(AddressPick value)? addressPick,
    TResult Function(PaymentOption value)? paymentOption,
    TResult Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult Function(PromoCodeSuccess value)? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (addressPick != null) {
      return addressPick(this);
    }
    return orElse();
  }
}

abstract class AddressPick implements PlaceOrderEvent {
  const factory AddressPick({required final User user}) = _$AddressPickImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$AddressPickImplCopyWith<_$AddressPickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentOptionImplCopyWith<$Res> {
  factory _$$PaymentOptionImplCopyWith(
          _$PaymentOptionImpl value, $Res Function(_$PaymentOptionImpl) then) =
      __$$PaymentOptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Payment payment});
}

/// @nodoc
class __$$PaymentOptionImplCopyWithImpl<$Res>
    extends _$PlaceOrderEventCopyWithImpl<$Res, _$PaymentOptionImpl>
    implements _$$PaymentOptionImplCopyWith<$Res> {
  __$$PaymentOptionImplCopyWithImpl(
      _$PaymentOptionImpl _value, $Res Function(_$PaymentOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
  }) {
    return _then(_$PaymentOptionImpl(
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ));
  }
}

/// @nodoc

class _$PaymentOptionImpl implements PaymentOption {
  const _$PaymentOptionImpl({required this.payment});

  @override
  final Payment payment;

  @override
  String toString() {
    return 'PlaceOrderEvent.paymentOption(payment: $payment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentOptionImpl &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentOptionImplCopyWith<_$PaymentOptionImpl> get copyWith =>
      __$$PaymentOptionImplCopyWithImpl<_$PaymentOptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromoCodeRequestModel promoCodeRequestModel)
        getPromoCode,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandendOrder,
    required TResult Function() orderPlacing,
    required TResult Function(User user) userDetailsPick,
    required TResult Function(ProductDetails productDetails) productDetailsPick,
    required TResult Function(User user) addressPick,
    required TResult Function(Payment payment) paymentOption,
    required TResult Function(PickUpDetails pickUpDetails) pickupDetailsPick,
    required TResult Function() promoCodeSuccess,
  }) {
    return paymentOption(payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromoCodeRequestModel promoCodeRequestModel)?
        getPromoCode,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult? Function()? orderPlacing,
    TResult? Function(User user)? userDetailsPick,
    TResult? Function(ProductDetails productDetails)? productDetailsPick,
    TResult? Function(User user)? addressPick,
    TResult? Function(Payment payment)? paymentOption,
    TResult? Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult? Function()? promoCodeSuccess,
  }) {
    return paymentOption?.call(payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult Function()? orderPlacing,
    TResult Function(User user)? userDetailsPick,
    TResult Function(ProductDetails productDetails)? productDetailsPick,
    TResult Function(User user)? addressPick,
    TResult Function(Payment payment)? paymentOption,
    TResult Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult Function()? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (paymentOption != null) {
      return paymentOption(payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromoCode value) getPromoCode,
    required TResult Function(AbandendOrder value) abandendOrder,
    required TResult Function(OrderPlacing value) orderPlacing,
    required TResult Function(UserDetailsPick value) userDetailsPick,
    required TResult Function(ProductDetailsPick value) productDetailsPick,
    required TResult Function(AddressPick value) addressPick,
    required TResult Function(PaymentOption value) paymentOption,
    required TResult Function(PickupDetailsPick value) pickupDetailsPick,
    required TResult Function(PromoCodeSuccess value) promoCodeSuccess,
  }) {
    return paymentOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
    TResult? Function(OrderPlacing value)? orderPlacing,
    TResult? Function(UserDetailsPick value)? userDetailsPick,
    TResult? Function(ProductDetailsPick value)? productDetailsPick,
    TResult? Function(AddressPick value)? addressPick,
    TResult? Function(PaymentOption value)? paymentOption,
    TResult? Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult? Function(PromoCodeSuccess value)? promoCodeSuccess,
  }) {
    return paymentOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    TResult Function(OrderPlacing value)? orderPlacing,
    TResult Function(UserDetailsPick value)? userDetailsPick,
    TResult Function(ProductDetailsPick value)? productDetailsPick,
    TResult Function(AddressPick value)? addressPick,
    TResult Function(PaymentOption value)? paymentOption,
    TResult Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult Function(PromoCodeSuccess value)? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (paymentOption != null) {
      return paymentOption(this);
    }
    return orElse();
  }
}

abstract class PaymentOption implements PlaceOrderEvent {
  const factory PaymentOption({required final Payment payment}) =
      _$PaymentOptionImpl;

  Payment get payment;
  @JsonKey(ignore: true)
  _$$PaymentOptionImplCopyWith<_$PaymentOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickupDetailsPickImplCopyWith<$Res> {
  factory _$$PickupDetailsPickImplCopyWith(_$PickupDetailsPickImpl value,
          $Res Function(_$PickupDetailsPickImpl) then) =
      __$$PickupDetailsPickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PickUpDetails pickUpDetails});
}

/// @nodoc
class __$$PickupDetailsPickImplCopyWithImpl<$Res>
    extends _$PlaceOrderEventCopyWithImpl<$Res, _$PickupDetailsPickImpl>
    implements _$$PickupDetailsPickImplCopyWith<$Res> {
  __$$PickupDetailsPickImplCopyWithImpl(_$PickupDetailsPickImpl _value,
      $Res Function(_$PickupDetailsPickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickUpDetails = null,
  }) {
    return _then(_$PickupDetailsPickImpl(
      pickUpDetails: null == pickUpDetails
          ? _value.pickUpDetails
          : pickUpDetails // ignore: cast_nullable_to_non_nullable
              as PickUpDetails,
    ));
  }
}

/// @nodoc

class _$PickupDetailsPickImpl implements PickupDetailsPick {
  const _$PickupDetailsPickImpl({required this.pickUpDetails});

  @override
  final PickUpDetails pickUpDetails;

  @override
  String toString() {
    return 'PlaceOrderEvent.pickupDetailsPick(pickUpDetails: $pickUpDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickupDetailsPickImpl &&
            (identical(other.pickUpDetails, pickUpDetails) ||
                other.pickUpDetails == pickUpDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickUpDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickupDetailsPickImplCopyWith<_$PickupDetailsPickImpl> get copyWith =>
      __$$PickupDetailsPickImplCopyWithImpl<_$PickupDetailsPickImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromoCodeRequestModel promoCodeRequestModel)
        getPromoCode,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandendOrder,
    required TResult Function() orderPlacing,
    required TResult Function(User user) userDetailsPick,
    required TResult Function(ProductDetails productDetails) productDetailsPick,
    required TResult Function(User user) addressPick,
    required TResult Function(Payment payment) paymentOption,
    required TResult Function(PickUpDetails pickUpDetails) pickupDetailsPick,
    required TResult Function() promoCodeSuccess,
  }) {
    return pickupDetailsPick(pickUpDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromoCodeRequestModel promoCodeRequestModel)?
        getPromoCode,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult? Function()? orderPlacing,
    TResult? Function(User user)? userDetailsPick,
    TResult? Function(ProductDetails productDetails)? productDetailsPick,
    TResult? Function(User user)? addressPick,
    TResult? Function(Payment payment)? paymentOption,
    TResult? Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult? Function()? promoCodeSuccess,
  }) {
    return pickupDetailsPick?.call(pickUpDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult Function()? orderPlacing,
    TResult Function(User user)? userDetailsPick,
    TResult Function(ProductDetails productDetails)? productDetailsPick,
    TResult Function(User user)? addressPick,
    TResult Function(Payment payment)? paymentOption,
    TResult Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult Function()? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (pickupDetailsPick != null) {
      return pickupDetailsPick(pickUpDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromoCode value) getPromoCode,
    required TResult Function(AbandendOrder value) abandendOrder,
    required TResult Function(OrderPlacing value) orderPlacing,
    required TResult Function(UserDetailsPick value) userDetailsPick,
    required TResult Function(ProductDetailsPick value) productDetailsPick,
    required TResult Function(AddressPick value) addressPick,
    required TResult Function(PaymentOption value) paymentOption,
    required TResult Function(PickupDetailsPick value) pickupDetailsPick,
    required TResult Function(PromoCodeSuccess value) promoCodeSuccess,
  }) {
    return pickupDetailsPick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
    TResult? Function(OrderPlacing value)? orderPlacing,
    TResult? Function(UserDetailsPick value)? userDetailsPick,
    TResult? Function(ProductDetailsPick value)? productDetailsPick,
    TResult? Function(AddressPick value)? addressPick,
    TResult? Function(PaymentOption value)? paymentOption,
    TResult? Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult? Function(PromoCodeSuccess value)? promoCodeSuccess,
  }) {
    return pickupDetailsPick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    TResult Function(OrderPlacing value)? orderPlacing,
    TResult Function(UserDetailsPick value)? userDetailsPick,
    TResult Function(ProductDetailsPick value)? productDetailsPick,
    TResult Function(AddressPick value)? addressPick,
    TResult Function(PaymentOption value)? paymentOption,
    TResult Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult Function(PromoCodeSuccess value)? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (pickupDetailsPick != null) {
      return pickupDetailsPick(this);
    }
    return orElse();
  }
}

abstract class PickupDetailsPick implements PlaceOrderEvent {
  const factory PickupDetailsPick(
      {required final PickUpDetails pickUpDetails}) = _$PickupDetailsPickImpl;

  PickUpDetails get pickUpDetails;
  @JsonKey(ignore: true)
  _$$PickupDetailsPickImplCopyWith<_$PickupDetailsPickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PromoCodeSuccessImplCopyWith<$Res> {
  factory _$$PromoCodeSuccessImplCopyWith(_$PromoCodeSuccessImpl value,
          $Res Function(_$PromoCodeSuccessImpl) then) =
      __$$PromoCodeSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PromoCodeSuccessImplCopyWithImpl<$Res>
    extends _$PlaceOrderEventCopyWithImpl<$Res, _$PromoCodeSuccessImpl>
    implements _$$PromoCodeSuccessImplCopyWith<$Res> {
  __$$PromoCodeSuccessImplCopyWithImpl(_$PromoCodeSuccessImpl _value,
      $Res Function(_$PromoCodeSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PromoCodeSuccessImpl implements PromoCodeSuccess {
  const _$PromoCodeSuccessImpl();

  @override
  String toString() {
    return 'PlaceOrderEvent.promoCodeSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PromoCodeSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PromoCodeRequestModel promoCodeRequestModel)
        getPromoCode,
    required TResult Function(
            AbandendOrderRequestModel abandendOrderRequestModel)
        abandendOrder,
    required TResult Function() orderPlacing,
    required TResult Function(User user) userDetailsPick,
    required TResult Function(ProductDetails productDetails) productDetailsPick,
    required TResult Function(User user) addressPick,
    required TResult Function(Payment payment) paymentOption,
    required TResult Function(PickUpDetails pickUpDetails) pickupDetailsPick,
    required TResult Function() promoCodeSuccess,
  }) {
    return promoCodeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PromoCodeRequestModel promoCodeRequestModel)?
        getPromoCode,
    TResult? Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult? Function()? orderPlacing,
    TResult? Function(User user)? userDetailsPick,
    TResult? Function(ProductDetails productDetails)? productDetailsPick,
    TResult? Function(User user)? addressPick,
    TResult? Function(Payment payment)? paymentOption,
    TResult? Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult? Function()? promoCodeSuccess,
  }) {
    return promoCodeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PromoCodeRequestModel promoCodeRequestModel)? getPromoCode,
    TResult Function(AbandendOrderRequestModel abandendOrderRequestModel)?
        abandendOrder,
    TResult Function()? orderPlacing,
    TResult Function(User user)? userDetailsPick,
    TResult Function(ProductDetails productDetails)? productDetailsPick,
    TResult Function(User user)? addressPick,
    TResult Function(Payment payment)? paymentOption,
    TResult Function(PickUpDetails pickUpDetails)? pickupDetailsPick,
    TResult Function()? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (promoCodeSuccess != null) {
      return promoCodeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromoCode value) getPromoCode,
    required TResult Function(AbandendOrder value) abandendOrder,
    required TResult Function(OrderPlacing value) orderPlacing,
    required TResult Function(UserDetailsPick value) userDetailsPick,
    required TResult Function(ProductDetailsPick value) productDetailsPick,
    required TResult Function(AddressPick value) addressPick,
    required TResult Function(PaymentOption value) paymentOption,
    required TResult Function(PickupDetailsPick value) pickupDetailsPick,
    required TResult Function(PromoCodeSuccess value) promoCodeSuccess,
  }) {
    return promoCodeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromoCode value)? getPromoCode,
    TResult? Function(AbandendOrder value)? abandendOrder,
    TResult? Function(OrderPlacing value)? orderPlacing,
    TResult? Function(UserDetailsPick value)? userDetailsPick,
    TResult? Function(ProductDetailsPick value)? productDetailsPick,
    TResult? Function(AddressPick value)? addressPick,
    TResult? Function(PaymentOption value)? paymentOption,
    TResult? Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult? Function(PromoCodeSuccess value)? promoCodeSuccess,
  }) {
    return promoCodeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromoCode value)? getPromoCode,
    TResult Function(AbandendOrder value)? abandendOrder,
    TResult Function(OrderPlacing value)? orderPlacing,
    TResult Function(UserDetailsPick value)? userDetailsPick,
    TResult Function(ProductDetailsPick value)? productDetailsPick,
    TResult Function(AddressPick value)? addressPick,
    TResult Function(PaymentOption value)? paymentOption,
    TResult Function(PickupDetailsPick value)? pickupDetailsPick,
    TResult Function(PromoCodeSuccess value)? promoCodeSuccess,
    required TResult orElse(),
  }) {
    if (promoCodeSuccess != null) {
      return promoCodeSuccess(this);
    }
    return orElse();
  }
}

abstract class PromoCodeSuccess implements PlaceOrderEvent {
  const factory PromoCodeSuccess() = _$PromoCodeSuccessImpl;
}

/// @nodoc
mixin _$PlaceOrderState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PromoCodeResponceModel? get promoCodeResponceModel =>
      throw _privateConstructorUsedError;
  OrderPlacedResponceModel? get orderPlacedResponceModel =>
      throw _privateConstructorUsedError;
  OrderPlacedRequestModel get orderPlacedRequestModel =>
      throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Payment get payment => throw _privateConstructorUsedError;
  PickUpDetails get pickUpDetails => throw _privateConstructorUsedError;
  ProductDetails get productDetails => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  Promo get promo => throw _privateConstructorUsedError;

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
      PromoCodeResponceModel? promoCodeResponceModel,
      OrderPlacedResponceModel? orderPlacedResponceModel,
      OrderPlacedRequestModel orderPlacedRequestModel,
      User user,
      Payment payment,
      PickUpDetails pickUpDetails,
      ProductDetails productDetails,
      String address,
      Promo promo});
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
    Object? orderPlacedResponceModel = freezed,
    Object? orderPlacedRequestModel = null,
    Object? user = null,
    Object? payment = null,
    Object? pickUpDetails = null,
    Object? productDetails = null,
    Object? address = null,
    Object? promo = null,
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
      orderPlacedResponceModel: freezed == orderPlacedResponceModel
          ? _value.orderPlacedResponceModel
          : orderPlacedResponceModel // ignore: cast_nullable_to_non_nullable
              as OrderPlacedResponceModel?,
      orderPlacedRequestModel: null == orderPlacedRequestModel
          ? _value.orderPlacedRequestModel
          : orderPlacedRequestModel // ignore: cast_nullable_to_non_nullable
              as OrderPlacedRequestModel,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      pickUpDetails: null == pickUpDetails
          ? _value.pickUpDetails
          : pickUpDetails // ignore: cast_nullable_to_non_nullable
              as PickUpDetails,
      productDetails: null == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as ProductDetails,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      promo: null == promo
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as Promo,
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
      PromoCodeResponceModel? promoCodeResponceModel,
      OrderPlacedResponceModel? orderPlacedResponceModel,
      OrderPlacedRequestModel orderPlacedRequestModel,
      User user,
      Payment payment,
      PickUpDetails pickUpDetails,
      ProductDetails productDetails,
      String address,
      Promo promo});
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
    Object? orderPlacedResponceModel = freezed,
    Object? orderPlacedRequestModel = null,
    Object? user = null,
    Object? payment = null,
    Object? pickUpDetails = null,
    Object? productDetails = null,
    Object? address = null,
    Object? promo = null,
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
      orderPlacedResponceModel: freezed == orderPlacedResponceModel
          ? _value.orderPlacedResponceModel
          : orderPlacedResponceModel // ignore: cast_nullable_to_non_nullable
              as OrderPlacedResponceModel?,
      orderPlacedRequestModel: null == orderPlacedRequestModel
          ? _value.orderPlacedRequestModel
          : orderPlacedRequestModel // ignore: cast_nullable_to_non_nullable
              as OrderPlacedRequestModel,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      pickUpDetails: null == pickUpDetails
          ? _value.pickUpDetails
          : pickUpDetails // ignore: cast_nullable_to_non_nullable
              as PickUpDetails,
      productDetails: null == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as ProductDetails,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      promo: null == promo
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as Promo,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.promoCodeResponceModel,
      this.orderPlacedResponceModel,
      required this.orderPlacedRequestModel,
      required this.user,
      required this.payment,
      required this.pickUpDetails,
      required this.productDetails,
      required this.address,
      required this.promo});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final PromoCodeResponceModel? promoCodeResponceModel;
  @override
  final OrderPlacedResponceModel? orderPlacedResponceModel;
  @override
  final OrderPlacedRequestModel orderPlacedRequestModel;
  @override
  final User user;
  @override
  final Payment payment;
  @override
  final PickUpDetails pickUpDetails;
  @override
  final ProductDetails productDetails;
  @override
  final String address;
  @override
  final Promo promo;

  @override
  String toString() {
    return 'PlaceOrderState(isLoading: $isLoading, hasError: $hasError, message: $message, promoCodeResponceModel: $promoCodeResponceModel, orderPlacedResponceModel: $orderPlacedResponceModel, orderPlacedRequestModel: $orderPlacedRequestModel, user: $user, payment: $payment, pickUpDetails: $pickUpDetails, productDetails: $productDetails, address: $address, promo: $promo)';
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
                other.promoCodeResponceModel == promoCodeResponceModel) &&
            (identical(
                    other.orderPlacedResponceModel, orderPlacedResponceModel) ||
                other.orderPlacedResponceModel == orderPlacedResponceModel) &&
            (identical(
                    other.orderPlacedRequestModel, orderPlacedRequestModel) ||
                other.orderPlacedRequestModel == orderPlacedRequestModel) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.pickUpDetails, pickUpDetails) ||
                other.pickUpDetails == pickUpDetails) &&
            (identical(other.productDetails, productDetails) ||
                other.productDetails == productDetails) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.promo, promo) || other.promo == promo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      message,
      promoCodeResponceModel,
      orderPlacedResponceModel,
      orderPlacedRequestModel,
      user,
      payment,
      pickUpDetails,
      productDetails,
      address,
      promo);

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
      final PromoCodeResponceModel? promoCodeResponceModel,
      final OrderPlacedResponceModel? orderPlacedResponceModel,
      required final OrderPlacedRequestModel orderPlacedRequestModel,
      required final User user,
      required final Payment payment,
      required final PickUpDetails pickUpDetails,
      required final ProductDetails productDetails,
      required final String address,
      required final Promo promo}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  PromoCodeResponceModel? get promoCodeResponceModel;
  @override
  OrderPlacedResponceModel? get orderPlacedResponceModel;
  @override
  OrderPlacedRequestModel get orderPlacedRequestModel;
  @override
  User get user;
  @override
  Payment get payment;
  @override
  PickUpDetails get pickUpDetails;
  @override
  ProductDetails get productDetails;
  @override
  String get address;
  @override
  Promo get promo;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
