// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategory,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String searchQuery) search,
    required TResult Function(String categoryType, String brandName)
        getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String searchQuery)? search,
    TResult? Function(String categoryType, String brandName)? getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String searchQuery)? search,
    TResult Function(String categoryType, String brandName)? getProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(Search value) search,
    required TResult Function(GetProducts value) getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(Search value)? search,
    TResult? Function(GetProducts value)? getProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(Search value)? search,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBlocEventCopyWith<$Res> {
  factory $CategoryBlocEventCopyWith(
          CategoryBlocEvent value, $Res Function(CategoryBlocEvent) then) =
      _$CategoryBlocEventCopyWithImpl<$Res, CategoryBlocEvent>;
}

/// @nodoc
class _$CategoryBlocEventCopyWithImpl<$Res, $Val extends CategoryBlocEvent>
    implements $CategoryBlocEventCopyWith<$Res> {
  _$CategoryBlocEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$GetAllCategoryImplCopyWithImpl<$Res>
    extends _$CategoryBlocEventCopyWithImpl<$Res, _$GetAllCategoryImpl>
    implements _$$GetAllCategoryImplCopyWith<$Res> {
  __$$GetAllCategoryImplCopyWithImpl(
      _$GetAllCategoryImpl _value, $Res Function(_$GetAllCategoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllCategoryImpl
    with DiagnosticableTreeMixin
    implements GetAllCategory {
  const _$GetAllCategoryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocEvent.getAllCategory()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CategoryBlocEvent.getAllCategory'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategory,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String searchQuery) search,
    required TResult Function(String categoryType, String brandName)
        getProducts,
  }) {
    return getAllCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String searchQuery)? search,
    TResult? Function(String categoryType, String brandName)? getProducts,
  }) {
    return getAllCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String searchQuery)? search,
    TResult Function(String categoryType, String brandName)? getProducts,
    required TResult orElse(),
  }) {
    if (getAllCategory != null) {
      return getAllCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(Search value) search,
    required TResult Function(GetProducts value) getProducts,
  }) {
    return getAllCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(Search value)? search,
    TResult? Function(GetProducts value)? getProducts,
  }) {
    return getAllCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(Search value)? search,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (getAllCategory != null) {
      return getAllCategory(this);
    }
    return orElse();
  }
}

abstract class GetAllCategory implements CategoryBlocEvent {
  const factory GetAllCategory() = _$GetAllCategoryImpl;
}

/// @nodoc
abstract class _$$GetSingleCategoryBrandsImplCopyWith<$Res> {
  factory _$$GetSingleCategoryBrandsImplCopyWith(
          _$GetSingleCategoryBrandsImpl value,
          $Res Function(_$GetSingleCategoryBrandsImpl) then) =
      __$$GetSingleCategoryBrandsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? categoryType});
}

/// @nodoc
class __$$GetSingleCategoryBrandsImplCopyWithImpl<$Res>
    extends _$CategoryBlocEventCopyWithImpl<$Res, _$GetSingleCategoryBrandsImpl>
    implements _$$GetSingleCategoryBrandsImplCopyWith<$Res> {
  __$$GetSingleCategoryBrandsImplCopyWithImpl(
      _$GetSingleCategoryBrandsImpl _value,
      $Res Function(_$GetSingleCategoryBrandsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = freezed,
  }) {
    return _then(_$GetSingleCategoryBrandsImpl(
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetSingleCategoryBrandsImpl
    with DiagnosticableTreeMixin
    implements GetSingleCategoryBrands {
  const _$GetSingleCategoryBrandsImpl({this.categoryType});

  @override
  final String? categoryType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocEvent.getSingleCategoryBrands(categoryType: $categoryType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CategoryBlocEvent.getSingleCategoryBrands'))
      ..add(DiagnosticsProperty('categoryType', categoryType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSingleCategoryBrandsImpl &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSingleCategoryBrandsImplCopyWith<_$GetSingleCategoryBrandsImpl>
      get copyWith => __$$GetSingleCategoryBrandsImplCopyWithImpl<
          _$GetSingleCategoryBrandsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategory,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String searchQuery) search,
    required TResult Function(String categoryType, String brandName)
        getProducts,
  }) {
    return getSingleCategoryBrands(categoryType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String searchQuery)? search,
    TResult? Function(String categoryType, String brandName)? getProducts,
  }) {
    return getSingleCategoryBrands?.call(categoryType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String searchQuery)? search,
    TResult Function(String categoryType, String brandName)? getProducts,
    required TResult orElse(),
  }) {
    if (getSingleCategoryBrands != null) {
      return getSingleCategoryBrands(categoryType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(Search value) search,
    required TResult Function(GetProducts value) getProducts,
  }) {
    return getSingleCategoryBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(Search value)? search,
    TResult? Function(GetProducts value)? getProducts,
  }) {
    return getSingleCategoryBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(Search value)? search,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (getSingleCategoryBrands != null) {
      return getSingleCategoryBrands(this);
    }
    return orElse();
  }
}

abstract class GetSingleCategoryBrands implements CategoryBlocEvent {
  const factory GetSingleCategoryBrands({final String? categoryType}) =
      _$GetSingleCategoryBrandsImpl;

  String? get categoryType;
  @JsonKey(ignore: true)
  _$$GetSingleCategoryBrandsImplCopyWith<_$GetSingleCategoryBrandsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$CategoryBlocEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(_$SearchImpl(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl with DiagnosticableTreeMixin implements Search {
  const _$SearchImpl({required this.searchQuery});

  @override
  final String searchQuery;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocEvent.search(searchQuery: $searchQuery)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryBlocEvent.search'))
      ..add(DiagnosticsProperty('searchQuery', searchQuery));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategory,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String searchQuery) search,
    required TResult Function(String categoryType, String brandName)
        getProducts,
  }) {
    return search(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String searchQuery)? search,
    TResult? Function(String categoryType, String brandName)? getProducts,
  }) {
    return search?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String searchQuery)? search,
    TResult Function(String categoryType, String brandName)? getProducts,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(Search value) search,
    required TResult Function(GetProducts value) getProducts,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(Search value)? search,
    TResult? Function(GetProducts value)? getProducts,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(Search value)? search,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements CategoryBlocEvent {
  const factory Search({required final String searchQuery}) = _$SearchImpl;

  String get searchQuery;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsImplCopyWith<$Res> {
  factory _$$GetProductsImplCopyWith(
          _$GetProductsImpl value, $Res Function(_$GetProductsImpl) then) =
      __$$GetProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryType, String brandName});
}

/// @nodoc
class __$$GetProductsImplCopyWithImpl<$Res>
    extends _$CategoryBlocEventCopyWithImpl<$Res, _$GetProductsImpl>
    implements _$$GetProductsImplCopyWith<$Res> {
  __$$GetProductsImplCopyWithImpl(
      _$GetProductsImpl _value, $Res Function(_$GetProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = null,
    Object? brandName = null,
  }) {
    return _then(_$GetProductsImpl(
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProductsImpl with DiagnosticableTreeMixin implements GetProducts {
  const _$GetProductsImpl(
      {required this.categoryType, required this.brandName});

  @override
  final String categoryType;
  @override
  final String brandName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocEvent.getProducts(categoryType: $categoryType, brandName: $brandName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryBlocEvent.getProducts'))
      ..add(DiagnosticsProperty('categoryType', categoryType))
      ..add(DiagnosticsProperty('brandName', brandName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsImpl &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryType, brandName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsImplCopyWith<_$GetProductsImpl> get copyWith =>
      __$$GetProductsImplCopyWithImpl<_$GetProductsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategory,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String searchQuery) search,
    required TResult Function(String categoryType, String brandName)
        getProducts,
  }) {
    return getProducts(categoryType, brandName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String searchQuery)? search,
    TResult? Function(String categoryType, String brandName)? getProducts,
  }) {
    return getProducts?.call(categoryType, brandName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String searchQuery)? search,
    TResult Function(String categoryType, String brandName)? getProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(categoryType, brandName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(Search value) search,
    required TResult Function(GetProducts value) getProducts,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(Search value)? search,
    TResult? Function(GetProducts value)? getProducts,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(Search value)? search,
    TResult Function(GetProducts value)? getProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class GetProducts implements CategoryBlocEvent {
  const factory GetProducts(
      {required final String categoryType,
      required final String brandName}) = _$GetProductsImpl;

  String get categoryType;
  String get brandName;
  @JsonKey(ignore: true)
  _$$GetProductsImplCopyWith<_$GetProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryBlocState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SingleCategoryBrandsResponceModel? get getSingleCategoryResponce =>
      throw _privateConstructorUsedError;
  GetProductsResponceModel? get getProductsResponceModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryBlocStateCopyWith<CategoryBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBlocStateCopyWith<$Res> {
  factory $CategoryBlocStateCopyWith(
          CategoryBlocState value, $Res Function(CategoryBlocState) then) =
      _$CategoryBlocStateCopyWithImpl<$Res, CategoryBlocState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      SingleCategoryBrandsResponceModel? getSingleCategoryResponce,
      GetProductsResponceModel? getProductsResponceModel});
}

/// @nodoc
class _$CategoryBlocStateCopyWithImpl<$Res, $Val extends CategoryBlocState>
    implements $CategoryBlocStateCopyWith<$Res> {
  _$CategoryBlocStateCopyWithImpl(this._value, this._then);

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
    Object? getSingleCategoryResponce = freezed,
    Object? getProductsResponceModel = freezed,
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
      getSingleCategoryResponce: freezed == getSingleCategoryResponce
          ? _value.getSingleCategoryResponce
          : getSingleCategoryResponce // ignore: cast_nullable_to_non_nullable
              as SingleCategoryBrandsResponceModel?,
      getProductsResponceModel: freezed == getProductsResponceModel
          ? _value.getProductsResponceModel
          : getProductsResponceModel // ignore: cast_nullable_to_non_nullable
              as GetProductsResponceModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CategoryBlocStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      SingleCategoryBrandsResponceModel? getSingleCategoryResponce,
      GetProductsResponceModel? getProductsResponceModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CategoryBlocStateCopyWithImpl<$Res, _$InitialImpl>
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
    Object? getSingleCategoryResponce = freezed,
    Object? getProductsResponceModel = freezed,
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
      getSingleCategoryResponce: freezed == getSingleCategoryResponce
          ? _value.getSingleCategoryResponce
          : getSingleCategoryResponce // ignore: cast_nullable_to_non_nullable
              as SingleCategoryBrandsResponceModel?,
      getProductsResponceModel: freezed == getProductsResponceModel
          ? _value.getProductsResponceModel
          : getProductsResponceModel // ignore: cast_nullable_to_non_nullable
              as GetProductsResponceModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.getSingleCategoryResponce,
      this.getProductsResponceModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final SingleCategoryBrandsResponceModel? getSingleCategoryResponce;
  @override
  final GetProductsResponceModel? getProductsResponceModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocState(isLoading: $isLoading, hasError: $hasError, message: $message, getSingleCategoryResponce: $getSingleCategoryResponce, getProductsResponceModel: $getProductsResponceModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryBlocState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('hasError', hasError))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty(
          'getSingleCategoryResponce', getSingleCategoryResponce))
      ..add(DiagnosticsProperty(
          'getProductsResponceModel', getProductsResponceModel));
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
            (identical(other.getSingleCategoryResponce,
                    getSingleCategoryResponce) ||
                other.getSingleCategoryResponce == getSingleCategoryResponce) &&
            (identical(
                    other.getProductsResponceModel, getProductsResponceModel) ||
                other.getProductsResponceModel == getProductsResponceModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, message,
      getSingleCategoryResponce, getProductsResponceModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CategoryBlocState {
  const factory _Initial(
          {required final bool isLoading,
          required final bool hasError,
          final String? message,
          final SingleCategoryBrandsResponceModel? getSingleCategoryResponce,
          final GetProductsResponceModel? getProductsResponceModel}) =
      _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  SingleCategoryBrandsResponceModel? get getSingleCategoryResponce;
  @override
  GetProductsResponceModel? get getProductsResponceModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
