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
    required TResult Function(String selectedProduct) selectedProduct,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String categoryType, String brandName)
        getProducts,
    required TResult Function(String brandName, String categoryType) getSeries,
    required TResult Function(String seriesName) productUpdate,
    required TResult Function(
            String categoryType, String brandName, String seriesName)
        getModels,
    required TResult Function(String categoryType, String brandName,
            String seriesName, String model)
        getVarients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String selectedProduct)? selectedProduct,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String categoryType, String brandName)? getProducts,
    TResult? Function(String brandName, String categoryType)? getSeries,
    TResult? Function(String seriesName)? productUpdate,
    TResult? Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult? Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String selectedProduct)? selectedProduct,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String categoryType, String brandName)? getProducts,
    TResult Function(String brandName, String categoryType)? getSeries,
    TResult Function(String seriesName)? productUpdate,
    TResult Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(SelectedProduct value) selectedProduct,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetSeries value) getSeries,
    required TResult Function(ProductUpdate value) productUpdate,
    required TResult Function(GetModels value) getModels,
    required TResult Function(GetVarients value) getVarients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(SelectedProduct value)? selectedProduct,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetSeries value)? getSeries,
    TResult? Function(ProductUpdate value)? productUpdate,
    TResult? Function(GetModels value)? getModels,
    TResult? Function(GetVarients value)? getVarients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(SelectedProduct value)? selectedProduct,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetSeries value)? getSeries,
    TResult Function(ProductUpdate value)? productUpdate,
    TResult Function(GetModels value)? getModels,
    TResult Function(GetVarients value)? getVarients,
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
    required TResult Function(String selectedProduct) selectedProduct,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String categoryType, String brandName)
        getProducts,
    required TResult Function(String brandName, String categoryType) getSeries,
    required TResult Function(String seriesName) productUpdate,
    required TResult Function(
            String categoryType, String brandName, String seriesName)
        getModels,
    required TResult Function(String categoryType, String brandName,
            String seriesName, String model)
        getVarients,
  }) {
    return getAllCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String selectedProduct)? selectedProduct,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String categoryType, String brandName)? getProducts,
    TResult? Function(String brandName, String categoryType)? getSeries,
    TResult? Function(String seriesName)? productUpdate,
    TResult? Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult? Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
  }) {
    return getAllCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String selectedProduct)? selectedProduct,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String categoryType, String brandName)? getProducts,
    TResult Function(String brandName, String categoryType)? getSeries,
    TResult Function(String seriesName)? productUpdate,
    TResult Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
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
    required TResult Function(SelectedProduct value) selectedProduct,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetSeries value) getSeries,
    required TResult Function(ProductUpdate value) productUpdate,
    required TResult Function(GetModels value) getModels,
    required TResult Function(GetVarients value) getVarients,
  }) {
    return getAllCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(SelectedProduct value)? selectedProduct,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetSeries value)? getSeries,
    TResult? Function(ProductUpdate value)? productUpdate,
    TResult? Function(GetModels value)? getModels,
    TResult? Function(GetVarients value)? getVarients,
  }) {
    return getAllCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(SelectedProduct value)? selectedProduct,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetSeries value)? getSeries,
    TResult Function(ProductUpdate value)? productUpdate,
    TResult Function(GetModels value)? getModels,
    TResult Function(GetVarients value)? getVarients,
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
abstract class _$$SelectedProductImplCopyWith<$Res> {
  factory _$$SelectedProductImplCopyWith(_$SelectedProductImpl value,
          $Res Function(_$SelectedProductImpl) then) =
      __$$SelectedProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedProduct});
}

/// @nodoc
class __$$SelectedProductImplCopyWithImpl<$Res>
    extends _$CategoryBlocEventCopyWithImpl<$Res, _$SelectedProductImpl>
    implements _$$SelectedProductImplCopyWith<$Res> {
  __$$SelectedProductImplCopyWithImpl(
      _$SelectedProductImpl _value, $Res Function(_$SelectedProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedProduct = null,
  }) {
    return _then(_$SelectedProductImpl(
      selectedProduct: null == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectedProductImpl
    with DiagnosticableTreeMixin
    implements SelectedProduct {
  const _$SelectedProductImpl({required this.selectedProduct});

  @override
  final String selectedProduct;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocEvent.selectedProduct(selectedProduct: $selectedProduct)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryBlocEvent.selectedProduct'))
      ..add(DiagnosticsProperty('selectedProduct', selectedProduct));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedProductImpl &&
            (identical(other.selectedProduct, selectedProduct) ||
                other.selectedProduct == selectedProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedProductImplCopyWith<_$SelectedProductImpl> get copyWith =>
      __$$SelectedProductImplCopyWithImpl<_$SelectedProductImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategory,
    required TResult Function(String selectedProduct) selectedProduct,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String categoryType, String brandName)
        getProducts,
    required TResult Function(String brandName, String categoryType) getSeries,
    required TResult Function(String seriesName) productUpdate,
    required TResult Function(
            String categoryType, String brandName, String seriesName)
        getModels,
    required TResult Function(String categoryType, String brandName,
            String seriesName, String model)
        getVarients,
  }) {
    return selectedProduct(this.selectedProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String selectedProduct)? selectedProduct,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String categoryType, String brandName)? getProducts,
    TResult? Function(String brandName, String categoryType)? getSeries,
    TResult? Function(String seriesName)? productUpdate,
    TResult? Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult? Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
  }) {
    return selectedProduct?.call(this.selectedProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String selectedProduct)? selectedProduct,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String categoryType, String brandName)? getProducts,
    TResult Function(String brandName, String categoryType)? getSeries,
    TResult Function(String seriesName)? productUpdate,
    TResult Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
    required TResult orElse(),
  }) {
    if (selectedProduct != null) {
      return selectedProduct(this.selectedProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(SelectedProduct value) selectedProduct,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetSeries value) getSeries,
    required TResult Function(ProductUpdate value) productUpdate,
    required TResult Function(GetModels value) getModels,
    required TResult Function(GetVarients value) getVarients,
  }) {
    return selectedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(SelectedProduct value)? selectedProduct,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetSeries value)? getSeries,
    TResult? Function(ProductUpdate value)? productUpdate,
    TResult? Function(GetModels value)? getModels,
    TResult? Function(GetVarients value)? getVarients,
  }) {
    return selectedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(SelectedProduct value)? selectedProduct,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetSeries value)? getSeries,
    TResult Function(ProductUpdate value)? productUpdate,
    TResult Function(GetModels value)? getModels,
    TResult Function(GetVarients value)? getVarients,
    required TResult orElse(),
  }) {
    if (selectedProduct != null) {
      return selectedProduct(this);
    }
    return orElse();
  }
}

abstract class SelectedProduct implements CategoryBlocEvent {
  const factory SelectedProduct({required final String selectedProduct}) =
      _$SelectedProductImpl;

  String get selectedProduct;
  @JsonKey(ignore: true)
  _$$SelectedProductImplCopyWith<_$SelectedProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String selectedProduct) selectedProduct,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String categoryType, String brandName)
        getProducts,
    required TResult Function(String brandName, String categoryType) getSeries,
    required TResult Function(String seriesName) productUpdate,
    required TResult Function(
            String categoryType, String brandName, String seriesName)
        getModels,
    required TResult Function(String categoryType, String brandName,
            String seriesName, String model)
        getVarients,
  }) {
    return getSingleCategoryBrands(categoryType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String selectedProduct)? selectedProduct,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String categoryType, String brandName)? getProducts,
    TResult? Function(String brandName, String categoryType)? getSeries,
    TResult? Function(String seriesName)? productUpdate,
    TResult? Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult? Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
  }) {
    return getSingleCategoryBrands?.call(categoryType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String selectedProduct)? selectedProduct,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String categoryType, String brandName)? getProducts,
    TResult Function(String brandName, String categoryType)? getSeries,
    TResult Function(String seriesName)? productUpdate,
    TResult Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
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
    required TResult Function(SelectedProduct value) selectedProduct,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetSeries value) getSeries,
    required TResult Function(ProductUpdate value) productUpdate,
    required TResult Function(GetModels value) getModels,
    required TResult Function(GetVarients value) getVarients,
  }) {
    return getSingleCategoryBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(SelectedProduct value)? selectedProduct,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetSeries value)? getSeries,
    TResult? Function(ProductUpdate value)? productUpdate,
    TResult? Function(GetModels value)? getModels,
    TResult? Function(GetVarients value)? getVarients,
  }) {
    return getSingleCategoryBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(SelectedProduct value)? selectedProduct,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetSeries value)? getSeries,
    TResult Function(ProductUpdate value)? productUpdate,
    TResult Function(GetModels value)? getModels,
    TResult Function(GetVarients value)? getVarients,
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
    required TResult Function(String selectedProduct) selectedProduct,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String categoryType, String brandName)
        getProducts,
    required TResult Function(String brandName, String categoryType) getSeries,
    required TResult Function(String seriesName) productUpdate,
    required TResult Function(
            String categoryType, String brandName, String seriesName)
        getModels,
    required TResult Function(String categoryType, String brandName,
            String seriesName, String model)
        getVarients,
  }) {
    return getProducts(categoryType, brandName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String selectedProduct)? selectedProduct,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String categoryType, String brandName)? getProducts,
    TResult? Function(String brandName, String categoryType)? getSeries,
    TResult? Function(String seriesName)? productUpdate,
    TResult? Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult? Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
  }) {
    return getProducts?.call(categoryType, brandName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String selectedProduct)? selectedProduct,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String categoryType, String brandName)? getProducts,
    TResult Function(String brandName, String categoryType)? getSeries,
    TResult Function(String seriesName)? productUpdate,
    TResult Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
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
    required TResult Function(SelectedProduct value) selectedProduct,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetSeries value) getSeries,
    required TResult Function(ProductUpdate value) productUpdate,
    required TResult Function(GetModels value) getModels,
    required TResult Function(GetVarients value) getVarients,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(SelectedProduct value)? selectedProduct,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetSeries value)? getSeries,
    TResult? Function(ProductUpdate value)? productUpdate,
    TResult? Function(GetModels value)? getModels,
    TResult? Function(GetVarients value)? getVarients,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(SelectedProduct value)? selectedProduct,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetSeries value)? getSeries,
    TResult Function(ProductUpdate value)? productUpdate,
    TResult Function(GetModels value)? getModels,
    TResult Function(GetVarients value)? getVarients,
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
abstract class _$$GetSeriesImplCopyWith<$Res> {
  factory _$$GetSeriesImplCopyWith(
          _$GetSeriesImpl value, $Res Function(_$GetSeriesImpl) then) =
      __$$GetSeriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String brandName, String categoryType});
}

/// @nodoc
class __$$GetSeriesImplCopyWithImpl<$Res>
    extends _$CategoryBlocEventCopyWithImpl<$Res, _$GetSeriesImpl>
    implements _$$GetSeriesImplCopyWith<$Res> {
  __$$GetSeriesImplCopyWithImpl(
      _$GetSeriesImpl _value, $Res Function(_$GetSeriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandName = null,
    Object? categoryType = null,
  }) {
    return _then(_$GetSeriesImpl(
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSeriesImpl with DiagnosticableTreeMixin implements GetSeries {
  const _$GetSeriesImpl({required this.brandName, required this.categoryType});

  @override
  final String brandName;
  @override
  final String categoryType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocEvent.getSeries(brandName: $brandName, categoryType: $categoryType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryBlocEvent.getSeries'))
      ..add(DiagnosticsProperty('brandName', brandName))
      ..add(DiagnosticsProperty('categoryType', categoryType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSeriesImpl &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brandName, categoryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSeriesImplCopyWith<_$GetSeriesImpl> get copyWith =>
      __$$GetSeriesImplCopyWithImpl<_$GetSeriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategory,
    required TResult Function(String selectedProduct) selectedProduct,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String categoryType, String brandName)
        getProducts,
    required TResult Function(String brandName, String categoryType) getSeries,
    required TResult Function(String seriesName) productUpdate,
    required TResult Function(
            String categoryType, String brandName, String seriesName)
        getModels,
    required TResult Function(String categoryType, String brandName,
            String seriesName, String model)
        getVarients,
  }) {
    return getSeries(brandName, categoryType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String selectedProduct)? selectedProduct,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String categoryType, String brandName)? getProducts,
    TResult? Function(String brandName, String categoryType)? getSeries,
    TResult? Function(String seriesName)? productUpdate,
    TResult? Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult? Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
  }) {
    return getSeries?.call(brandName, categoryType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String selectedProduct)? selectedProduct,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String categoryType, String brandName)? getProducts,
    TResult Function(String brandName, String categoryType)? getSeries,
    TResult Function(String seriesName)? productUpdate,
    TResult Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
    required TResult orElse(),
  }) {
    if (getSeries != null) {
      return getSeries(brandName, categoryType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(SelectedProduct value) selectedProduct,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetSeries value) getSeries,
    required TResult Function(ProductUpdate value) productUpdate,
    required TResult Function(GetModels value) getModels,
    required TResult Function(GetVarients value) getVarients,
  }) {
    return getSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(SelectedProduct value)? selectedProduct,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetSeries value)? getSeries,
    TResult? Function(ProductUpdate value)? productUpdate,
    TResult? Function(GetModels value)? getModels,
    TResult? Function(GetVarients value)? getVarients,
  }) {
    return getSeries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(SelectedProduct value)? selectedProduct,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetSeries value)? getSeries,
    TResult Function(ProductUpdate value)? productUpdate,
    TResult Function(GetModels value)? getModels,
    TResult Function(GetVarients value)? getVarients,
    required TResult orElse(),
  }) {
    if (getSeries != null) {
      return getSeries(this);
    }
    return orElse();
  }
}

abstract class GetSeries implements CategoryBlocEvent {
  const factory GetSeries(
      {required final String brandName,
      required final String categoryType}) = _$GetSeriesImpl;

  String get brandName;
  String get categoryType;
  @JsonKey(ignore: true)
  _$$GetSeriesImplCopyWith<_$GetSeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductUpdateImplCopyWith<$Res> {
  factory _$$ProductUpdateImplCopyWith(
          _$ProductUpdateImpl value, $Res Function(_$ProductUpdateImpl) then) =
      __$$ProductUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String seriesName});
}

/// @nodoc
class __$$ProductUpdateImplCopyWithImpl<$Res>
    extends _$CategoryBlocEventCopyWithImpl<$Res, _$ProductUpdateImpl>
    implements _$$ProductUpdateImplCopyWith<$Res> {
  __$$ProductUpdateImplCopyWithImpl(
      _$ProductUpdateImpl _value, $Res Function(_$ProductUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seriesName = null,
  }) {
    return _then(_$ProductUpdateImpl(
      seriesName: null == seriesName
          ? _value.seriesName
          : seriesName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductUpdateImpl
    with DiagnosticableTreeMixin
    implements ProductUpdate {
  const _$ProductUpdateImpl({required this.seriesName});

  @override
  final String seriesName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocEvent.productUpdate(seriesName: $seriesName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryBlocEvent.productUpdate'))
      ..add(DiagnosticsProperty('seriesName', seriesName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductUpdateImpl &&
            (identical(other.seriesName, seriesName) ||
                other.seriesName == seriesName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seriesName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductUpdateImplCopyWith<_$ProductUpdateImpl> get copyWith =>
      __$$ProductUpdateImplCopyWithImpl<_$ProductUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategory,
    required TResult Function(String selectedProduct) selectedProduct,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String categoryType, String brandName)
        getProducts,
    required TResult Function(String brandName, String categoryType) getSeries,
    required TResult Function(String seriesName) productUpdate,
    required TResult Function(
            String categoryType, String brandName, String seriesName)
        getModels,
    required TResult Function(String categoryType, String brandName,
            String seriesName, String model)
        getVarients,
  }) {
    return productUpdate(seriesName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String selectedProduct)? selectedProduct,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String categoryType, String brandName)? getProducts,
    TResult? Function(String brandName, String categoryType)? getSeries,
    TResult? Function(String seriesName)? productUpdate,
    TResult? Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult? Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
  }) {
    return productUpdate?.call(seriesName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String selectedProduct)? selectedProduct,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String categoryType, String brandName)? getProducts,
    TResult Function(String brandName, String categoryType)? getSeries,
    TResult Function(String seriesName)? productUpdate,
    TResult Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
    required TResult orElse(),
  }) {
    if (productUpdate != null) {
      return productUpdate(seriesName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(SelectedProduct value) selectedProduct,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetSeries value) getSeries,
    required TResult Function(ProductUpdate value) productUpdate,
    required TResult Function(GetModels value) getModels,
    required TResult Function(GetVarients value) getVarients,
  }) {
    return productUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(SelectedProduct value)? selectedProduct,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetSeries value)? getSeries,
    TResult? Function(ProductUpdate value)? productUpdate,
    TResult? Function(GetModels value)? getModels,
    TResult? Function(GetVarients value)? getVarients,
  }) {
    return productUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(SelectedProduct value)? selectedProduct,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetSeries value)? getSeries,
    TResult Function(ProductUpdate value)? productUpdate,
    TResult Function(GetModels value)? getModels,
    TResult Function(GetVarients value)? getVarients,
    required TResult orElse(),
  }) {
    if (productUpdate != null) {
      return productUpdate(this);
    }
    return orElse();
  }
}

abstract class ProductUpdate implements CategoryBlocEvent {
  const factory ProductUpdate({required final String seriesName}) =
      _$ProductUpdateImpl;

  String get seriesName;
  @JsonKey(ignore: true)
  _$$ProductUpdateImplCopyWith<_$ProductUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetModelsImplCopyWith<$Res> {
  factory _$$GetModelsImplCopyWith(
          _$GetModelsImpl value, $Res Function(_$GetModelsImpl) then) =
      __$$GetModelsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryType, String brandName, String seriesName});
}

/// @nodoc
class __$$GetModelsImplCopyWithImpl<$Res>
    extends _$CategoryBlocEventCopyWithImpl<$Res, _$GetModelsImpl>
    implements _$$GetModelsImplCopyWith<$Res> {
  __$$GetModelsImplCopyWithImpl(
      _$GetModelsImpl _value, $Res Function(_$GetModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = null,
    Object? brandName = null,
    Object? seriesName = null,
  }) {
    return _then(_$GetModelsImpl(
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      seriesName: null == seriesName
          ? _value.seriesName
          : seriesName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetModelsImpl with DiagnosticableTreeMixin implements GetModels {
  const _$GetModelsImpl(
      {required this.categoryType,
      required this.brandName,
      required this.seriesName});

  @override
  final String categoryType;
  @override
  final String brandName;
  @override
  final String seriesName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocEvent.getModels(categoryType: $categoryType, brandName: $brandName, seriesName: $seriesName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryBlocEvent.getModels'))
      ..add(DiagnosticsProperty('categoryType', categoryType))
      ..add(DiagnosticsProperty('brandName', brandName))
      ..add(DiagnosticsProperty('seriesName', seriesName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetModelsImpl &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.seriesName, seriesName) ||
                other.seriesName == seriesName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryType, brandName, seriesName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetModelsImplCopyWith<_$GetModelsImpl> get copyWith =>
      __$$GetModelsImplCopyWithImpl<_$GetModelsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategory,
    required TResult Function(String selectedProduct) selectedProduct,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String categoryType, String brandName)
        getProducts,
    required TResult Function(String brandName, String categoryType) getSeries,
    required TResult Function(String seriesName) productUpdate,
    required TResult Function(
            String categoryType, String brandName, String seriesName)
        getModels,
    required TResult Function(String categoryType, String brandName,
            String seriesName, String model)
        getVarients,
  }) {
    return getModels(categoryType, brandName, seriesName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String selectedProduct)? selectedProduct,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String categoryType, String brandName)? getProducts,
    TResult? Function(String brandName, String categoryType)? getSeries,
    TResult? Function(String seriesName)? productUpdate,
    TResult? Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult? Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
  }) {
    return getModels?.call(categoryType, brandName, seriesName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String selectedProduct)? selectedProduct,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String categoryType, String brandName)? getProducts,
    TResult Function(String brandName, String categoryType)? getSeries,
    TResult Function(String seriesName)? productUpdate,
    TResult Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
    required TResult orElse(),
  }) {
    if (getModels != null) {
      return getModels(categoryType, brandName, seriesName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(SelectedProduct value) selectedProduct,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetSeries value) getSeries,
    required TResult Function(ProductUpdate value) productUpdate,
    required TResult Function(GetModels value) getModels,
    required TResult Function(GetVarients value) getVarients,
  }) {
    return getModels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(SelectedProduct value)? selectedProduct,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetSeries value)? getSeries,
    TResult? Function(ProductUpdate value)? productUpdate,
    TResult? Function(GetModels value)? getModels,
    TResult? Function(GetVarients value)? getVarients,
  }) {
    return getModels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(SelectedProduct value)? selectedProduct,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetSeries value)? getSeries,
    TResult Function(ProductUpdate value)? productUpdate,
    TResult Function(GetModels value)? getModels,
    TResult Function(GetVarients value)? getVarients,
    required TResult orElse(),
  }) {
    if (getModels != null) {
      return getModels(this);
    }
    return orElse();
  }
}

abstract class GetModels implements CategoryBlocEvent {
  const factory GetModels(
      {required final String categoryType,
      required final String brandName,
      required final String seriesName}) = _$GetModelsImpl;

  String get categoryType;
  String get brandName;
  String get seriesName;
  @JsonKey(ignore: true)
  _$$GetModelsImplCopyWith<_$GetModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetVarientsImplCopyWith<$Res> {
  factory _$$GetVarientsImplCopyWith(
          _$GetVarientsImpl value, $Res Function(_$GetVarientsImpl) then) =
      __$$GetVarientsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String categoryType, String brandName, String seriesName, String model});
}

/// @nodoc
class __$$GetVarientsImplCopyWithImpl<$Res>
    extends _$CategoryBlocEventCopyWithImpl<$Res, _$GetVarientsImpl>
    implements _$$GetVarientsImplCopyWith<$Res> {
  __$$GetVarientsImplCopyWithImpl(
      _$GetVarientsImpl _value, $Res Function(_$GetVarientsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = null,
    Object? brandName = null,
    Object? seriesName = null,
    Object? model = null,
  }) {
    return _then(_$GetVarientsImpl(
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      seriesName: null == seriesName
          ? _value.seriesName
          : seriesName // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetVarientsImpl with DiagnosticableTreeMixin implements GetVarients {
  const _$GetVarientsImpl(
      {required this.categoryType,
      required this.brandName,
      required this.seriesName,
      required this.model});

  @override
  final String categoryType;
  @override
  final String brandName;
  @override
  final String seriesName;
  @override
  final String model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocEvent.getVarients(categoryType: $categoryType, brandName: $brandName, seriesName: $seriesName, model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryBlocEvent.getVarients'))
      ..add(DiagnosticsProperty('categoryType', categoryType))
      ..add(DiagnosticsProperty('brandName', brandName))
      ..add(DiagnosticsProperty('seriesName', seriesName))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVarientsImpl &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.seriesName, seriesName) ||
                other.seriesName == seriesName) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryType, brandName, seriesName, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetVarientsImplCopyWith<_$GetVarientsImpl> get copyWith =>
      __$$GetVarientsImplCopyWithImpl<_$GetVarientsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategory,
    required TResult Function(String selectedProduct) selectedProduct,
    required TResult Function(String? categoryType) getSingleCategoryBrands,
    required TResult Function(String categoryType, String brandName)
        getProducts,
    required TResult Function(String brandName, String categoryType) getSeries,
    required TResult Function(String seriesName) productUpdate,
    required TResult Function(
            String categoryType, String brandName, String seriesName)
        getModels,
    required TResult Function(String categoryType, String brandName,
            String seriesName, String model)
        getVarients,
  }) {
    return getVarients(categoryType, brandName, seriesName, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String selectedProduct)? selectedProduct,
    TResult? Function(String? categoryType)? getSingleCategoryBrands,
    TResult? Function(String categoryType, String brandName)? getProducts,
    TResult? Function(String brandName, String categoryType)? getSeries,
    TResult? Function(String seriesName)? productUpdate,
    TResult? Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult? Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
  }) {
    return getVarients?.call(categoryType, brandName, seriesName, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String selectedProduct)? selectedProduct,
    TResult Function(String? categoryType)? getSingleCategoryBrands,
    TResult Function(String categoryType, String brandName)? getProducts,
    TResult Function(String brandName, String categoryType)? getSeries,
    TResult Function(String seriesName)? productUpdate,
    TResult Function(String categoryType, String brandName, String seriesName)?
        getModels,
    TResult Function(String categoryType, String brandName, String seriesName,
            String model)?
        getVarients,
    required TResult orElse(),
  }) {
    if (getVarients != null) {
      return getVarients(categoryType, brandName, seriesName, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(SelectedProduct value) selectedProduct,
    required TResult Function(GetSingleCategoryBrands value)
        getSingleCategoryBrands,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(GetSeries value) getSeries,
    required TResult Function(ProductUpdate value) productUpdate,
    required TResult Function(GetModels value) getModels,
    required TResult Function(GetVarients value) getVarients,
  }) {
    return getVarients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(SelectedProduct value)? selectedProduct,
    TResult? Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(GetSeries value)? getSeries,
    TResult? Function(ProductUpdate value)? productUpdate,
    TResult? Function(GetModels value)? getModels,
    TResult? Function(GetVarients value)? getVarients,
  }) {
    return getVarients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(SelectedProduct value)? selectedProduct,
    TResult Function(GetSingleCategoryBrands value)? getSingleCategoryBrands,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(GetSeries value)? getSeries,
    TResult Function(ProductUpdate value)? productUpdate,
    TResult Function(GetModels value)? getModels,
    TResult Function(GetVarients value)? getVarients,
    required TResult orElse(),
  }) {
    if (getVarients != null) {
      return getVarients(this);
    }
    return orElse();
  }
}

abstract class GetVarients implements CategoryBlocEvent {
  const factory GetVarients(
      {required final String categoryType,
      required final String brandName,
      required final String seriesName,
      required final String model}) = _$GetVarientsImpl;

  String get categoryType;
  String get brandName;
  String get seriesName;
  String get model;
  @JsonKey(ignore: true)
  _$$GetVarientsImplCopyWith<_$GetVarientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryBlocState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isPro => throw _privateConstructorUsedError;
  String? get selectedProduct => throw _privateConstructorUsedError;
  SingleCategoryBrandsResponceModel? get getSingleCategoryResponce =>
      throw _privateConstructorUsedError;
  GetProductsResponceModel? get getProductsResponceModel =>
      throw _privateConstructorUsedError;
  List<List<String>> get allItems => throw _privateConstructorUsedError;
  List<String>? get sortedPro => throw _privateConstructorUsedError;

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
      bool? isPro,
      String? selectedProduct,
      SingleCategoryBrandsResponceModel? getSingleCategoryResponce,
      GetProductsResponceModel? getProductsResponceModel,
      List<List<String>> allItems,
      List<String>? sortedPro});
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
    Object? isPro = freezed,
    Object? selectedProduct = freezed,
    Object? getSingleCategoryResponce = freezed,
    Object? getProductsResponceModel = freezed,
    Object? allItems = null,
    Object? sortedPro = freezed,
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
      isPro: freezed == isPro
          ? _value.isPro
          : isPro // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      getSingleCategoryResponce: freezed == getSingleCategoryResponce
          ? _value.getSingleCategoryResponce
          : getSingleCategoryResponce // ignore: cast_nullable_to_non_nullable
              as SingleCategoryBrandsResponceModel?,
      getProductsResponceModel: freezed == getProductsResponceModel
          ? _value.getProductsResponceModel
          : getProductsResponceModel // ignore: cast_nullable_to_non_nullable
              as GetProductsResponceModel?,
      allItems: null == allItems
          ? _value.allItems
          : allItems // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      sortedPro: freezed == sortedPro
          ? _value.sortedPro
          : sortedPro // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      bool? isPro,
      String? selectedProduct,
      SingleCategoryBrandsResponceModel? getSingleCategoryResponce,
      GetProductsResponceModel? getProductsResponceModel,
      List<List<String>> allItems,
      List<String>? sortedPro});
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
    Object? isPro = freezed,
    Object? selectedProduct = freezed,
    Object? getSingleCategoryResponce = freezed,
    Object? getProductsResponceModel = freezed,
    Object? allItems = null,
    Object? sortedPro = freezed,
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
      isPro: freezed == isPro
          ? _value.isPro
          : isPro // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      getSingleCategoryResponce: freezed == getSingleCategoryResponce
          ? _value.getSingleCategoryResponce
          : getSingleCategoryResponce // ignore: cast_nullable_to_non_nullable
              as SingleCategoryBrandsResponceModel?,
      getProductsResponceModel: freezed == getProductsResponceModel
          ? _value.getProductsResponceModel
          : getProductsResponceModel // ignore: cast_nullable_to_non_nullable
              as GetProductsResponceModel?,
      allItems: null == allItems
          ? _value._allItems
          : allItems // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      sortedPro: freezed == sortedPro
          ? _value._sortedPro
          : sortedPro // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.isPro,
      this.selectedProduct,
      this.getSingleCategoryResponce,
      this.getProductsResponceModel,
      required final List<List<String>> allItems,
      final List<String>? sortedPro})
      : _allItems = allItems,
        _sortedPro = sortedPro;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final bool? isPro;
  @override
  final String? selectedProduct;
  @override
  final SingleCategoryBrandsResponceModel? getSingleCategoryResponce;
  @override
  final GetProductsResponceModel? getProductsResponceModel;
  final List<List<String>> _allItems;
  @override
  List<List<String>> get allItems {
    if (_allItems is EqualUnmodifiableListView) return _allItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allItems);
  }

  final List<String>? _sortedPro;
  @override
  List<String>? get sortedPro {
    final value = _sortedPro;
    if (value == null) return null;
    if (_sortedPro is EqualUnmodifiableListView) return _sortedPro;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocState(isLoading: $isLoading, hasError: $hasError, message: $message, isPro: $isPro, selectedProduct: $selectedProduct, getSingleCategoryResponce: $getSingleCategoryResponce, getProductsResponceModel: $getProductsResponceModel, allItems: $allItems, sortedPro: $sortedPro)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryBlocState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('hasError', hasError))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('isPro', isPro))
      ..add(DiagnosticsProperty('selectedProduct', selectedProduct))
      ..add(DiagnosticsProperty(
          'getSingleCategoryResponce', getSingleCategoryResponce))
      ..add(DiagnosticsProperty(
          'getProductsResponceModel', getProductsResponceModel))
      ..add(DiagnosticsProperty('allItems', allItems))
      ..add(DiagnosticsProperty('sortedPro', sortedPro));
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
            (identical(other.isPro, isPro) || other.isPro == isPro) &&
            (identical(other.selectedProduct, selectedProduct) ||
                other.selectedProduct == selectedProduct) &&
            (identical(other.getSingleCategoryResponce,
                    getSingleCategoryResponce) ||
                other.getSingleCategoryResponce == getSingleCategoryResponce) &&
            (identical(
                    other.getProductsResponceModel, getProductsResponceModel) ||
                other.getProductsResponceModel == getProductsResponceModel) &&
            const DeepCollectionEquality().equals(other._allItems, _allItems) &&
            const DeepCollectionEquality()
                .equals(other._sortedPro, _sortedPro));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      message,
      isPro,
      selectedProduct,
      getSingleCategoryResponce,
      getProductsResponceModel,
      const DeepCollectionEquality().hash(_allItems),
      const DeepCollectionEquality().hash(_sortedPro));

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
      final bool? isPro,
      final String? selectedProduct,
      final SingleCategoryBrandsResponceModel? getSingleCategoryResponce,
      final GetProductsResponceModel? getProductsResponceModel,
      required final List<List<String>> allItems,
      final List<String>? sortedPro}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  bool? get isPro;
  @override
  String? get selectedProduct;
  @override
  SingleCategoryBrandsResponceModel? get getSingleCategoryResponce;
  @override
  GetProductsResponceModel? get getProductsResponceModel;
  @override
  List<List<String>> get allItems;
  @override
  List<String>? get sortedPro;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
