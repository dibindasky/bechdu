// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) getAllCategory,
    required TResult Function(bool isLoad) homePageBanners,
    required TResult Function(bool isLoad) getBestSellingProducts,
    required TResult Function(String searchQuery) globalPrductSearch,
    required TResult Function() nextPage,
    required TResult Function() notification,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? getAllCategory,
    TResult? Function(bool isLoad)? homePageBanners,
    TResult? Function(bool isLoad)? getBestSellingProducts,
    TResult? Function(String searchQuery)? globalPrductSearch,
    TResult? Function()? nextPage,
    TResult? Function()? notification,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? getAllCategory,
    TResult Function(bool isLoad)? homePageBanners,
    TResult Function(bool isLoad)? getBestSellingProducts,
    TResult Function(String searchQuery)? globalPrductSearch,
    TResult Function()? nextPage,
    TResult Function()? notification,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(HomePageBanners value) homePageBanners,
    required TResult Function(GetBestSellingProducts value)
        getBestSellingProducts,
    required TResult Function(GlobalPrductSearch value) globalPrductSearch,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(Notification value) notification,
    required TResult Function(Clear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(HomePageBanners value)? homePageBanners,
    TResult? Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult? Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(Notification value)? notification,
    TResult? Function(Clear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(HomePageBanners value)? homePageBanners,
    TResult Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult Function(NextPage value)? nextPage,
    TResult Function(Notification value)? notification,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllCategoryImplCopyWith<$Res> {
  factory _$$GetAllCategoryImplCopyWith(_$GetAllCategoryImpl value,
          $Res Function(_$GetAllCategoryImpl) then) =
      __$$GetAllCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoad});
}

/// @nodoc
class __$$GetAllCategoryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetAllCategoryImpl>
    implements _$$GetAllCategoryImplCopyWith<$Res> {
  __$$GetAllCategoryImplCopyWithImpl(
      _$GetAllCategoryImpl _value, $Res Function(_$GetAllCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoad = null,
  }) {
    return _then(_$GetAllCategoryImpl(
      isLoad: null == isLoad
          ? _value.isLoad
          : isLoad // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetAllCategoryImpl implements GetAllCategory {
  const _$GetAllCategoryImpl({required this.isLoad});

  @override
  final bool isLoad;

  @override
  String toString() {
    return 'HomeEvent.getAllCategory(isLoad: $isLoad)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCategoryImpl &&
            (identical(other.isLoad, isLoad) || other.isLoad == isLoad));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoad);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCategoryImplCopyWith<_$GetAllCategoryImpl> get copyWith =>
      __$$GetAllCategoryImplCopyWithImpl<_$GetAllCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) getAllCategory,
    required TResult Function(bool isLoad) homePageBanners,
    required TResult Function(bool isLoad) getBestSellingProducts,
    required TResult Function(String searchQuery) globalPrductSearch,
    required TResult Function() nextPage,
    required TResult Function() notification,
    required TResult Function() clear,
  }) {
    return getAllCategory(isLoad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? getAllCategory,
    TResult? Function(bool isLoad)? homePageBanners,
    TResult? Function(bool isLoad)? getBestSellingProducts,
    TResult? Function(String searchQuery)? globalPrductSearch,
    TResult? Function()? nextPage,
    TResult? Function()? notification,
    TResult? Function()? clear,
  }) {
    return getAllCategory?.call(isLoad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? getAllCategory,
    TResult Function(bool isLoad)? homePageBanners,
    TResult Function(bool isLoad)? getBestSellingProducts,
    TResult Function(String searchQuery)? globalPrductSearch,
    TResult Function()? nextPage,
    TResult Function()? notification,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (getAllCategory != null) {
      return getAllCategory(isLoad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(HomePageBanners value) homePageBanners,
    required TResult Function(GetBestSellingProducts value)
        getBestSellingProducts,
    required TResult Function(GlobalPrductSearch value) globalPrductSearch,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(Notification value) notification,
    required TResult Function(Clear value) clear,
  }) {
    return getAllCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(HomePageBanners value)? homePageBanners,
    TResult? Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult? Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(Notification value)? notification,
    TResult? Function(Clear value)? clear,
  }) {
    return getAllCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(HomePageBanners value)? homePageBanners,
    TResult Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult Function(NextPage value)? nextPage,
    TResult Function(Notification value)? notification,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (getAllCategory != null) {
      return getAllCategory(this);
    }
    return orElse();
  }
}

abstract class GetAllCategory implements HomeEvent {
  const factory GetAllCategory({required final bool isLoad}) =
      _$GetAllCategoryImpl;

  bool get isLoad;
  @JsonKey(ignore: true)
  _$$GetAllCategoryImplCopyWith<_$GetAllCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomePageBannersImplCopyWith<$Res> {
  factory _$$HomePageBannersImplCopyWith(_$HomePageBannersImpl value,
          $Res Function(_$HomePageBannersImpl) then) =
      __$$HomePageBannersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoad});
}

/// @nodoc
class __$$HomePageBannersImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomePageBannersImpl>
    implements _$$HomePageBannersImplCopyWith<$Res> {
  __$$HomePageBannersImplCopyWithImpl(
      _$HomePageBannersImpl _value, $Res Function(_$HomePageBannersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoad = null,
  }) {
    return _then(_$HomePageBannersImpl(
      isLoad: null == isLoad
          ? _value.isLoad
          : isLoad // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomePageBannersImpl implements HomePageBanners {
  const _$HomePageBannersImpl({required this.isLoad});

  @override
  final bool isLoad;

  @override
  String toString() {
    return 'HomeEvent.homePageBanners(isLoad: $isLoad)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageBannersImpl &&
            (identical(other.isLoad, isLoad) || other.isLoad == isLoad));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoad);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageBannersImplCopyWith<_$HomePageBannersImpl> get copyWith =>
      __$$HomePageBannersImplCopyWithImpl<_$HomePageBannersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) getAllCategory,
    required TResult Function(bool isLoad) homePageBanners,
    required TResult Function(bool isLoad) getBestSellingProducts,
    required TResult Function(String searchQuery) globalPrductSearch,
    required TResult Function() nextPage,
    required TResult Function() notification,
    required TResult Function() clear,
  }) {
    return homePageBanners(isLoad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? getAllCategory,
    TResult? Function(bool isLoad)? homePageBanners,
    TResult? Function(bool isLoad)? getBestSellingProducts,
    TResult? Function(String searchQuery)? globalPrductSearch,
    TResult? Function()? nextPage,
    TResult? Function()? notification,
    TResult? Function()? clear,
  }) {
    return homePageBanners?.call(isLoad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? getAllCategory,
    TResult Function(bool isLoad)? homePageBanners,
    TResult Function(bool isLoad)? getBestSellingProducts,
    TResult Function(String searchQuery)? globalPrductSearch,
    TResult Function()? nextPage,
    TResult Function()? notification,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (homePageBanners != null) {
      return homePageBanners(isLoad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(HomePageBanners value) homePageBanners,
    required TResult Function(GetBestSellingProducts value)
        getBestSellingProducts,
    required TResult Function(GlobalPrductSearch value) globalPrductSearch,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(Notification value) notification,
    required TResult Function(Clear value) clear,
  }) {
    return homePageBanners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(HomePageBanners value)? homePageBanners,
    TResult? Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult? Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(Notification value)? notification,
    TResult? Function(Clear value)? clear,
  }) {
    return homePageBanners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(HomePageBanners value)? homePageBanners,
    TResult Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult Function(NextPage value)? nextPage,
    TResult Function(Notification value)? notification,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (homePageBanners != null) {
      return homePageBanners(this);
    }
    return orElse();
  }
}

abstract class HomePageBanners implements HomeEvent {
  const factory HomePageBanners({required final bool isLoad}) =
      _$HomePageBannersImpl;

  bool get isLoad;
  @JsonKey(ignore: true)
  _$$HomePageBannersImplCopyWith<_$HomePageBannersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBestSellingProductsImplCopyWith<$Res> {
  factory _$$GetBestSellingProductsImplCopyWith(
          _$GetBestSellingProductsImpl value,
          $Res Function(_$GetBestSellingProductsImpl) then) =
      __$$GetBestSellingProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoad});
}

/// @nodoc
class __$$GetBestSellingProductsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetBestSellingProductsImpl>
    implements _$$GetBestSellingProductsImplCopyWith<$Res> {
  __$$GetBestSellingProductsImplCopyWithImpl(
      _$GetBestSellingProductsImpl _value,
      $Res Function(_$GetBestSellingProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoad = null,
  }) {
    return _then(_$GetBestSellingProductsImpl(
      isLoad: null == isLoad
          ? _value.isLoad
          : isLoad // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetBestSellingProductsImpl implements GetBestSellingProducts {
  const _$GetBestSellingProductsImpl({required this.isLoad});

  @override
  final bool isLoad;

  @override
  String toString() {
    return 'HomeEvent.getBestSellingProducts(isLoad: $isLoad)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBestSellingProductsImpl &&
            (identical(other.isLoad, isLoad) || other.isLoad == isLoad));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoad);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBestSellingProductsImplCopyWith<_$GetBestSellingProductsImpl>
      get copyWith => __$$GetBestSellingProductsImplCopyWithImpl<
          _$GetBestSellingProductsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) getAllCategory,
    required TResult Function(bool isLoad) homePageBanners,
    required TResult Function(bool isLoad) getBestSellingProducts,
    required TResult Function(String searchQuery) globalPrductSearch,
    required TResult Function() nextPage,
    required TResult Function() notification,
    required TResult Function() clear,
  }) {
    return getBestSellingProducts(isLoad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? getAllCategory,
    TResult? Function(bool isLoad)? homePageBanners,
    TResult? Function(bool isLoad)? getBestSellingProducts,
    TResult? Function(String searchQuery)? globalPrductSearch,
    TResult? Function()? nextPage,
    TResult? Function()? notification,
    TResult? Function()? clear,
  }) {
    return getBestSellingProducts?.call(isLoad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? getAllCategory,
    TResult Function(bool isLoad)? homePageBanners,
    TResult Function(bool isLoad)? getBestSellingProducts,
    TResult Function(String searchQuery)? globalPrductSearch,
    TResult Function()? nextPage,
    TResult Function()? notification,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (getBestSellingProducts != null) {
      return getBestSellingProducts(isLoad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(HomePageBanners value) homePageBanners,
    required TResult Function(GetBestSellingProducts value)
        getBestSellingProducts,
    required TResult Function(GlobalPrductSearch value) globalPrductSearch,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(Notification value) notification,
    required TResult Function(Clear value) clear,
  }) {
    return getBestSellingProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(HomePageBanners value)? homePageBanners,
    TResult? Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult? Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(Notification value)? notification,
    TResult? Function(Clear value)? clear,
  }) {
    return getBestSellingProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(HomePageBanners value)? homePageBanners,
    TResult Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult Function(NextPage value)? nextPage,
    TResult Function(Notification value)? notification,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (getBestSellingProducts != null) {
      return getBestSellingProducts(this);
    }
    return orElse();
  }
}

abstract class GetBestSellingProducts implements HomeEvent {
  const factory GetBestSellingProducts({required final bool isLoad}) =
      _$GetBestSellingProductsImpl;

  bool get isLoad;
  @JsonKey(ignore: true)
  _$$GetBestSellingProductsImplCopyWith<_$GetBestSellingProductsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GlobalPrductSearchImplCopyWith<$Res> {
  factory _$$GlobalPrductSearchImplCopyWith(_$GlobalPrductSearchImpl value,
          $Res Function(_$GlobalPrductSearchImpl) then) =
      __$$GlobalPrductSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class __$$GlobalPrductSearchImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GlobalPrductSearchImpl>
    implements _$$GlobalPrductSearchImplCopyWith<$Res> {
  __$$GlobalPrductSearchImplCopyWithImpl(_$GlobalPrductSearchImpl _value,
      $Res Function(_$GlobalPrductSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(_$GlobalPrductSearchImpl(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GlobalPrductSearchImpl implements GlobalPrductSearch {
  const _$GlobalPrductSearchImpl({required this.searchQuery});

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'HomeEvent.globalPrductSearch(searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalPrductSearchImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalPrductSearchImplCopyWith<_$GlobalPrductSearchImpl> get copyWith =>
      __$$GlobalPrductSearchImplCopyWithImpl<_$GlobalPrductSearchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) getAllCategory,
    required TResult Function(bool isLoad) homePageBanners,
    required TResult Function(bool isLoad) getBestSellingProducts,
    required TResult Function(String searchQuery) globalPrductSearch,
    required TResult Function() nextPage,
    required TResult Function() notification,
    required TResult Function() clear,
  }) {
    return globalPrductSearch(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? getAllCategory,
    TResult? Function(bool isLoad)? homePageBanners,
    TResult? Function(bool isLoad)? getBestSellingProducts,
    TResult? Function(String searchQuery)? globalPrductSearch,
    TResult? Function()? nextPage,
    TResult? Function()? notification,
    TResult? Function()? clear,
  }) {
    return globalPrductSearch?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? getAllCategory,
    TResult Function(bool isLoad)? homePageBanners,
    TResult Function(bool isLoad)? getBestSellingProducts,
    TResult Function(String searchQuery)? globalPrductSearch,
    TResult Function()? nextPage,
    TResult Function()? notification,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (globalPrductSearch != null) {
      return globalPrductSearch(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(HomePageBanners value) homePageBanners,
    required TResult Function(GetBestSellingProducts value)
        getBestSellingProducts,
    required TResult Function(GlobalPrductSearch value) globalPrductSearch,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(Notification value) notification,
    required TResult Function(Clear value) clear,
  }) {
    return globalPrductSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(HomePageBanners value)? homePageBanners,
    TResult? Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult? Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(Notification value)? notification,
    TResult? Function(Clear value)? clear,
  }) {
    return globalPrductSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(HomePageBanners value)? homePageBanners,
    TResult Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult Function(NextPage value)? nextPage,
    TResult Function(Notification value)? notification,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (globalPrductSearch != null) {
      return globalPrductSearch(this);
    }
    return orElse();
  }
}

abstract class GlobalPrductSearch implements HomeEvent {
  const factory GlobalPrductSearch({required final String searchQuery}) =
      _$GlobalPrductSearchImpl;

  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GlobalPrductSearchImplCopyWith<_$GlobalPrductSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPageImplCopyWith<$Res> {
  factory _$$NextPageImplCopyWith(
          _$NextPageImpl value, $Res Function(_$NextPageImpl) then) =
      __$$NextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$NextPageImpl>
    implements _$$NextPageImplCopyWith<$Res> {
  __$$NextPageImplCopyWithImpl(
      _$NextPageImpl _value, $Res Function(_$NextPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageImpl implements NextPage {
  const _$NextPageImpl();

  @override
  String toString() {
    return 'HomeEvent.nextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) getAllCategory,
    required TResult Function(bool isLoad) homePageBanners,
    required TResult Function(bool isLoad) getBestSellingProducts,
    required TResult Function(String searchQuery) globalPrductSearch,
    required TResult Function() nextPage,
    required TResult Function() notification,
    required TResult Function() clear,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? getAllCategory,
    TResult? Function(bool isLoad)? homePageBanners,
    TResult? Function(bool isLoad)? getBestSellingProducts,
    TResult? Function(String searchQuery)? globalPrductSearch,
    TResult? Function()? nextPage,
    TResult? Function()? notification,
    TResult? Function()? clear,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? getAllCategory,
    TResult Function(bool isLoad)? homePageBanners,
    TResult Function(bool isLoad)? getBestSellingProducts,
    TResult Function(String searchQuery)? globalPrductSearch,
    TResult Function()? nextPage,
    TResult Function()? notification,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(HomePageBanners value) homePageBanners,
    required TResult Function(GetBestSellingProducts value)
        getBestSellingProducts,
    required TResult Function(GlobalPrductSearch value) globalPrductSearch,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(Notification value) notification,
    required TResult Function(Clear value) clear,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(HomePageBanners value)? homePageBanners,
    TResult? Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult? Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(Notification value)? notification,
    TResult? Function(Clear value)? clear,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(HomePageBanners value)? homePageBanners,
    TResult Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult Function(NextPage value)? nextPage,
    TResult Function(Notification value)? notification,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class NextPage implements HomeEvent {
  const factory NextPage() = _$NextPageImpl;
}

/// @nodoc
abstract class _$$NotificationImplCopyWith<$Res> {
  factory _$$NotificationImplCopyWith(
          _$NotificationImpl value, $Res Function(_$NotificationImpl) then) =
      __$$NotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$NotificationImpl>
    implements _$$NotificationImplCopyWith<$Res> {
  __$$NotificationImplCopyWithImpl(
      _$NotificationImpl _value, $Res Function(_$NotificationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotificationImpl implements Notification {
  const _$NotificationImpl();

  @override
  String toString() {
    return 'HomeEvent.notification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoad) getAllCategory,
    required TResult Function(bool isLoad) homePageBanners,
    required TResult Function(bool isLoad) getBestSellingProducts,
    required TResult Function(String searchQuery) globalPrductSearch,
    required TResult Function() nextPage,
    required TResult Function() notification,
    required TResult Function() clear,
  }) {
    return notification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? getAllCategory,
    TResult? Function(bool isLoad)? homePageBanners,
    TResult? Function(bool isLoad)? getBestSellingProducts,
    TResult? Function(String searchQuery)? globalPrductSearch,
    TResult? Function()? nextPage,
    TResult? Function()? notification,
    TResult? Function()? clear,
  }) {
    return notification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? getAllCategory,
    TResult Function(bool isLoad)? homePageBanners,
    TResult Function(bool isLoad)? getBestSellingProducts,
    TResult Function(String searchQuery)? globalPrductSearch,
    TResult Function()? nextPage,
    TResult Function()? notification,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (notification != null) {
      return notification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(HomePageBanners value) homePageBanners,
    required TResult Function(GetBestSellingProducts value)
        getBestSellingProducts,
    required TResult Function(GlobalPrductSearch value) globalPrductSearch,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(Notification value) notification,
    required TResult Function(Clear value) clear,
  }) {
    return notification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(HomePageBanners value)? homePageBanners,
    TResult? Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult? Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(Notification value)? notification,
    TResult? Function(Clear value)? clear,
  }) {
    return notification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(HomePageBanners value)? homePageBanners,
    TResult Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult Function(NextPage value)? nextPage,
    TResult Function(Notification value)? notification,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (notification != null) {
      return notification(this);
    }
    return orElse();
  }
}

abstract class Notification implements HomeEvent {
  const factory Notification() = _$NotificationImpl;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ClearImpl>
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
    return 'HomeEvent.clear()';
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
    required TResult Function(bool isLoad) getAllCategory,
    required TResult Function(bool isLoad) homePageBanners,
    required TResult Function(bool isLoad) getBestSellingProducts,
    required TResult Function(String searchQuery) globalPrductSearch,
    required TResult Function() nextPage,
    required TResult Function() notification,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoad)? getAllCategory,
    TResult? Function(bool isLoad)? homePageBanners,
    TResult? Function(bool isLoad)? getBestSellingProducts,
    TResult? Function(String searchQuery)? globalPrductSearch,
    TResult? Function()? nextPage,
    TResult? Function()? notification,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoad)? getAllCategory,
    TResult Function(bool isLoad)? homePageBanners,
    TResult Function(bool isLoad)? getBestSellingProducts,
    TResult Function(String searchQuery)? globalPrductSearch,
    TResult Function()? nextPage,
    TResult Function()? notification,
    TResult Function()? clear,
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
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(HomePageBanners value) homePageBanners,
    required TResult Function(GetBestSellingProducts value)
        getBestSellingProducts,
    required TResult Function(GlobalPrductSearch value) globalPrductSearch,
    required TResult Function(NextPage value) nextPage,
    required TResult Function(Notification value) notification,
    required TResult Function(Clear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(HomePageBanners value)? homePageBanners,
    TResult? Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult? Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult? Function(NextPage value)? nextPage,
    TResult? Function(Notification value)? notification,
    TResult? Function(Clear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(HomePageBanners value)? homePageBanners,
    TResult Function(GetBestSellingProducts value)? getBestSellingProducts,
    TResult Function(GlobalPrductSearch value)? globalPrductSearch,
    TResult Function(NextPage value)? nextPage,
    TResult Function(Notification value)? notification,
    TResult Function(Clear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class Clear implements HomeEvent {
  const factory Clear() = _$ClearImpl;
}

/// @nodoc
mixin _$HomeState {
  bool get notificationLoad => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get loadMore => throw _privateConstructorUsedError;
  bool get bannerLoad => throw _privateConstructorUsedError;
  bool get whatToSellLoad => throw _privateConstructorUsedError;
  bool get bestSellingLoad => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get selectedCategory => throw _privateConstructorUsedError;
  List<Notifications>? get notifications => throw _privateConstructorUsedError;
  GetCategoryResponceModel? get getCategoryResponceModel =>
      throw _privateConstructorUsedError;
  HomeBannerResponceModel? get homeBannerResponceModel =>
      throw _privateConstructorUsedError;
  BestSellingProductsResponceModel? get bestSellingProductsResponceModel =>
      throw _privateConstructorUsedError;
  SearchResponceModel? get searchResponceModel =>
      throw _privateConstructorUsedError;
  GlobalProductSearchResponceModel? get globalProductSearchResponceModel =>
      throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool notificationLoad,
      bool hasError,
      bool loadMore,
      bool bannerLoad,
      bool whatToSellLoad,
      bool bestSellingLoad,
      String? message,
      String? selectedCategory,
      List<Notifications>? notifications,
      GetCategoryResponceModel? getCategoryResponceModel,
      HomeBannerResponceModel? homeBannerResponceModel,
      BestSellingProductsResponceModel? bestSellingProductsResponceModel,
      SearchResponceModel? searchResponceModel,
      GlobalProductSearchResponceModel? globalProductSearchResponceModel,
      List<Product>? products});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationLoad = null,
    Object? hasError = null,
    Object? loadMore = null,
    Object? bannerLoad = null,
    Object? whatToSellLoad = null,
    Object? bestSellingLoad = null,
    Object? message = freezed,
    Object? selectedCategory = freezed,
    Object? notifications = freezed,
    Object? getCategoryResponceModel = freezed,
    Object? homeBannerResponceModel = freezed,
    Object? bestSellingProductsResponceModel = freezed,
    Object? searchResponceModel = freezed,
    Object? globalProductSearchResponceModel = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      notificationLoad: null == notificationLoad
          ? _value.notificationLoad
          : notificationLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      bannerLoad: null == bannerLoad
          ? _value.bannerLoad
          : bannerLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      whatToSellLoad: null == whatToSellLoad
          ? _value.whatToSellLoad
          : whatToSellLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      bestSellingLoad: null == bestSellingLoad
          ? _value.bestSellingLoad
          : bestSellingLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notifications>?,
      getCategoryResponceModel: freezed == getCategoryResponceModel
          ? _value.getCategoryResponceModel
          : getCategoryResponceModel // ignore: cast_nullable_to_non_nullable
              as GetCategoryResponceModel?,
      homeBannerResponceModel: freezed == homeBannerResponceModel
          ? _value.homeBannerResponceModel
          : homeBannerResponceModel // ignore: cast_nullable_to_non_nullable
              as HomeBannerResponceModel?,
      bestSellingProductsResponceModel: freezed ==
              bestSellingProductsResponceModel
          ? _value.bestSellingProductsResponceModel
          : bestSellingProductsResponceModel // ignore: cast_nullable_to_non_nullable
              as BestSellingProductsResponceModel?,
      searchResponceModel: freezed == searchResponceModel
          ? _value.searchResponceModel
          : searchResponceModel // ignore: cast_nullable_to_non_nullable
              as SearchResponceModel?,
      globalProductSearchResponceModel: freezed ==
              globalProductSearchResponceModel
          ? _value.globalProductSearchResponceModel
          : globalProductSearchResponceModel // ignore: cast_nullable_to_non_nullable
              as GlobalProductSearchResponceModel?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool notificationLoad,
      bool hasError,
      bool loadMore,
      bool bannerLoad,
      bool whatToSellLoad,
      bool bestSellingLoad,
      String? message,
      String? selectedCategory,
      List<Notifications>? notifications,
      GetCategoryResponceModel? getCategoryResponceModel,
      HomeBannerResponceModel? homeBannerResponceModel,
      BestSellingProductsResponceModel? bestSellingProductsResponceModel,
      SearchResponceModel? searchResponceModel,
      GlobalProductSearchResponceModel? globalProductSearchResponceModel,
      List<Product>? products});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationLoad = null,
    Object? hasError = null,
    Object? loadMore = null,
    Object? bannerLoad = null,
    Object? whatToSellLoad = null,
    Object? bestSellingLoad = null,
    Object? message = freezed,
    Object? selectedCategory = freezed,
    Object? notifications = freezed,
    Object? getCategoryResponceModel = freezed,
    Object? homeBannerResponceModel = freezed,
    Object? bestSellingProductsResponceModel = freezed,
    Object? searchResponceModel = freezed,
    Object? globalProductSearchResponceModel = freezed,
    Object? products = freezed,
  }) {
    return _then(_$InitialImpl(
      notificationLoad: null == notificationLoad
          ? _value.notificationLoad
          : notificationLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      bannerLoad: null == bannerLoad
          ? _value.bannerLoad
          : bannerLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      whatToSellLoad: null == whatToSellLoad
          ? _value.whatToSellLoad
          : whatToSellLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      bestSellingLoad: null == bestSellingLoad
          ? _value.bestSellingLoad
          : bestSellingLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: freezed == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notifications>?,
      getCategoryResponceModel: freezed == getCategoryResponceModel
          ? _value.getCategoryResponceModel
          : getCategoryResponceModel // ignore: cast_nullable_to_non_nullable
              as GetCategoryResponceModel?,
      homeBannerResponceModel: freezed == homeBannerResponceModel
          ? _value.homeBannerResponceModel
          : homeBannerResponceModel // ignore: cast_nullable_to_non_nullable
              as HomeBannerResponceModel?,
      bestSellingProductsResponceModel: freezed ==
              bestSellingProductsResponceModel
          ? _value.bestSellingProductsResponceModel
          : bestSellingProductsResponceModel // ignore: cast_nullable_to_non_nullable
              as BestSellingProductsResponceModel?,
      searchResponceModel: freezed == searchResponceModel
          ? _value.searchResponceModel
          : searchResponceModel // ignore: cast_nullable_to_non_nullable
              as SearchResponceModel?,
      globalProductSearchResponceModel: freezed ==
              globalProductSearchResponceModel
          ? _value.globalProductSearchResponceModel
          : globalProductSearchResponceModel // ignore: cast_nullable_to_non_nullable
              as GlobalProductSearchResponceModel?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.notificationLoad,
      required this.hasError,
      required this.loadMore,
      required this.bannerLoad,
      required this.whatToSellLoad,
      required this.bestSellingLoad,
      this.message,
      this.selectedCategory,
      final List<Notifications>? notifications,
      this.getCategoryResponceModel,
      this.homeBannerResponceModel,
      this.bestSellingProductsResponceModel,
      this.searchResponceModel,
      this.globalProductSearchResponceModel,
      final List<Product>? products})
      : _notifications = notifications,
        _products = products;

  @override
  final bool notificationLoad;
  @override
  final bool hasError;
  @override
  final bool loadMore;
  @override
  final bool bannerLoad;
  @override
  final bool whatToSellLoad;
  @override
  final bool bestSellingLoad;
  @override
  final String? message;
  @override
  final String? selectedCategory;
  final List<Notifications>? _notifications;
  @override
  List<Notifications>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final GetCategoryResponceModel? getCategoryResponceModel;
  @override
  final HomeBannerResponceModel? homeBannerResponceModel;
  @override
  final BestSellingProductsResponceModel? bestSellingProductsResponceModel;
  @override
  final SearchResponceModel? searchResponceModel;
  @override
  final GlobalProductSearchResponceModel? globalProductSearchResponceModel;
  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState(notificationLoad: $notificationLoad, hasError: $hasError, loadMore: $loadMore, bannerLoad: $bannerLoad, whatToSellLoad: $whatToSellLoad, bestSellingLoad: $bestSellingLoad, message: $message, selectedCategory: $selectedCategory, notifications: $notifications, getCategoryResponceModel: $getCategoryResponceModel, homeBannerResponceModel: $homeBannerResponceModel, bestSellingProductsResponceModel: $bestSellingProductsResponceModel, searchResponceModel: $searchResponceModel, globalProductSearchResponceModel: $globalProductSearchResponceModel, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.notificationLoad, notificationLoad) ||
                other.notificationLoad == notificationLoad) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.loadMore, loadMore) ||
                other.loadMore == loadMore) &&
            (identical(other.bannerLoad, bannerLoad) ||
                other.bannerLoad == bannerLoad) &&
            (identical(other.whatToSellLoad, whatToSellLoad) ||
                other.whatToSellLoad == whatToSellLoad) &&
            (identical(other.bestSellingLoad, bestSellingLoad) ||
                other.bestSellingLoad == bestSellingLoad) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(
                    other.getCategoryResponceModel, getCategoryResponceModel) ||
                other.getCategoryResponceModel == getCategoryResponceModel) &&
            (identical(
                    other.homeBannerResponceModel, homeBannerResponceModel) ||
                other.homeBannerResponceModel == homeBannerResponceModel) &&
            (identical(other.bestSellingProductsResponceModel,
                    bestSellingProductsResponceModel) ||
                other.bestSellingProductsResponceModel ==
                    bestSellingProductsResponceModel) &&
            (identical(other.searchResponceModel, searchResponceModel) ||
                other.searchResponceModel == searchResponceModel) &&
            (identical(other.globalProductSearchResponceModel,
                    globalProductSearchResponceModel) ||
                other.globalProductSearchResponceModel ==
                    globalProductSearchResponceModel) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      notificationLoad,
      hasError,
      loadMore,
      bannerLoad,
      whatToSellLoad,
      bestSellingLoad,
      message,
      selectedCategory,
      const DeepCollectionEquality().hash(_notifications),
      getCategoryResponceModel,
      homeBannerResponceModel,
      bestSellingProductsResponceModel,
      searchResponceModel,
      globalProductSearchResponceModel,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final bool notificationLoad,
      required final bool hasError,
      required final bool loadMore,
      required final bool bannerLoad,
      required final bool whatToSellLoad,
      required final bool bestSellingLoad,
      final String? message,
      final String? selectedCategory,
      final List<Notifications>? notifications,
      final GetCategoryResponceModel? getCategoryResponceModel,
      final HomeBannerResponceModel? homeBannerResponceModel,
      final BestSellingProductsResponceModel? bestSellingProductsResponceModel,
      final SearchResponceModel? searchResponceModel,
      final GlobalProductSearchResponceModel? globalProductSearchResponceModel,
      final List<Product>? products}) = _$InitialImpl;

  @override
  bool get notificationLoad;
  @override
  bool get hasError;
  @override
  bool get loadMore;
  @override
  bool get bannerLoad;
  @override
  bool get whatToSellLoad;
  @override
  bool get bestSellingLoad;
  @override
  String? get message;
  @override
  String? get selectedCategory;
  @override
  List<Notifications>? get notifications;
  @override
  GetCategoryResponceModel? get getCategoryResponceModel;
  @override
  HomeBannerResponceModel? get homeBannerResponceModel;
  @override
  BestSellingProductsResponceModel? get bestSellingProductsResponceModel;
  @override
  SearchResponceModel? get searchResponceModel;
  @override
  GlobalProductSearchResponceModel? get globalProductSearchResponceModel;
  @override
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
