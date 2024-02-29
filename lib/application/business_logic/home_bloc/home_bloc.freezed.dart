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
    required TResult Function() getAllCategory,
    required TResult Function(String category) selectedactegory,
    required TResult Function() homePageBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String category)? selectedactegory,
    TResult? Function()? homePageBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String category)? selectedactegory,
    TResult Function()? homePageBanners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(Selectedactegory value) selectedactegory,
    required TResult Function(HomePageBanners value) homePageBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(Selectedactegory value)? selectedactegory,
    TResult? Function(HomePageBanners value)? homePageBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(Selectedactegory value)? selectedactegory,
    TResult Function(HomePageBanners value)? homePageBanners,
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
}

/// @nodoc
class __$$GetAllCategoryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetAllCategoryImpl>
    implements _$$GetAllCategoryImplCopyWith<$Res> {
  __$$GetAllCategoryImplCopyWithImpl(
      _$GetAllCategoryImpl _value, $Res Function(_$GetAllCategoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllCategoryImpl implements GetAllCategory {
  const _$GetAllCategoryImpl();

  @override
  String toString() {
    return 'HomeEvent.getAllCategory()';
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
    required TResult Function(String category) selectedactegory,
    required TResult Function() homePageBanners,
  }) {
    return getAllCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String category)? selectedactegory,
    TResult? Function()? homePageBanners,
  }) {
    return getAllCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String category)? selectedactegory,
    TResult Function()? homePageBanners,
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
    required TResult Function(Selectedactegory value) selectedactegory,
    required TResult Function(HomePageBanners value) homePageBanners,
  }) {
    return getAllCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(Selectedactegory value)? selectedactegory,
    TResult? Function(HomePageBanners value)? homePageBanners,
  }) {
    return getAllCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(Selectedactegory value)? selectedactegory,
    TResult Function(HomePageBanners value)? homePageBanners,
    required TResult orElse(),
  }) {
    if (getAllCategory != null) {
      return getAllCategory(this);
    }
    return orElse();
  }
}

abstract class GetAllCategory implements HomeEvent {
  const factory GetAllCategory() = _$GetAllCategoryImpl;
}

/// @nodoc
abstract class _$$SelectedactegoryImplCopyWith<$Res> {
  factory _$$SelectedactegoryImplCopyWith(_$SelectedactegoryImpl value,
          $Res Function(_$SelectedactegoryImpl) then) =
      __$$SelectedactegoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$SelectedactegoryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SelectedactegoryImpl>
    implements _$$SelectedactegoryImplCopyWith<$Res> {
  __$$SelectedactegoryImplCopyWithImpl(_$SelectedactegoryImpl _value,
      $Res Function(_$SelectedactegoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$SelectedactegoryImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectedactegoryImpl implements Selectedactegory {
  const _$SelectedactegoryImpl({required this.category});

  @override
  final String category;

  @override
  String toString() {
    return 'HomeEvent.selectedactegory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedactegoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedactegoryImplCopyWith<_$SelectedactegoryImpl> get copyWith =>
      __$$SelectedactegoryImplCopyWithImpl<_$SelectedactegoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategory,
    required TResult Function(String category) selectedactegory,
    required TResult Function() homePageBanners,
  }) {
    return selectedactegory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String category)? selectedactegory,
    TResult? Function()? homePageBanners,
  }) {
    return selectedactegory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String category)? selectedactegory,
    TResult Function()? homePageBanners,
    required TResult orElse(),
  }) {
    if (selectedactegory != null) {
      return selectedactegory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(Selectedactegory value) selectedactegory,
    required TResult Function(HomePageBanners value) homePageBanners,
  }) {
    return selectedactegory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(Selectedactegory value)? selectedactegory,
    TResult? Function(HomePageBanners value)? homePageBanners,
  }) {
    return selectedactegory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(Selectedactegory value)? selectedactegory,
    TResult Function(HomePageBanners value)? homePageBanners,
    required TResult orElse(),
  }) {
    if (selectedactegory != null) {
      return selectedactegory(this);
    }
    return orElse();
  }
}

abstract class Selectedactegory implements HomeEvent {
  const factory Selectedactegory({required final String category}) =
      _$SelectedactegoryImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$SelectedactegoryImplCopyWith<_$SelectedactegoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomePageBannersImplCopyWith<$Res> {
  factory _$$HomePageBannersImplCopyWith(_$HomePageBannersImpl value,
          $Res Function(_$HomePageBannersImpl) then) =
      __$$HomePageBannersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomePageBannersImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomePageBannersImpl>
    implements _$$HomePageBannersImplCopyWith<$Res> {
  __$$HomePageBannersImplCopyWithImpl(
      _$HomePageBannersImpl _value, $Res Function(_$HomePageBannersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomePageBannersImpl implements HomePageBanners {
  const _$HomePageBannersImpl();

  @override
  String toString() {
    return 'HomeEvent.homePageBanners()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomePageBannersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllCategory,
    required TResult Function(String category) selectedactegory,
    required TResult Function() homePageBanners,
  }) {
    return homePageBanners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllCategory,
    TResult? Function(String category)? selectedactegory,
    TResult? Function()? homePageBanners,
  }) {
    return homePageBanners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllCategory,
    TResult Function(String category)? selectedactegory,
    TResult Function()? homePageBanners,
    required TResult orElse(),
  }) {
    if (homePageBanners != null) {
      return homePageBanners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCategory value) getAllCategory,
    required TResult Function(Selectedactegory value) selectedactegory,
    required TResult Function(HomePageBanners value) homePageBanners,
  }) {
    return homePageBanners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCategory value)? getAllCategory,
    TResult? Function(Selectedactegory value)? selectedactegory,
    TResult? Function(HomePageBanners value)? homePageBanners,
  }) {
    return homePageBanners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCategory value)? getAllCategory,
    TResult Function(Selectedactegory value)? selectedactegory,
    TResult Function(HomePageBanners value)? homePageBanners,
    required TResult orElse(),
  }) {
    if (homePageBanners != null) {
      return homePageBanners(this);
    }
    return orElse();
  }
}

abstract class HomePageBanners implements HomeEvent {
  const factory HomePageBanners() = _$HomePageBannersImpl;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get selectedCategory => throw _privateConstructorUsedError;
  GetCategoryResponceModel? get getCategoryResponceModel =>
      throw _privateConstructorUsedError;
  HomeBannerResponceModel? get homeBannerResponceModel =>
      throw _privateConstructorUsedError;

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
      {bool isLoading,
      bool hasError,
      String? message,
      String? selectedCategory,
      GetCategoryResponceModel? getCategoryResponceModel,
      HomeBannerResponceModel? homeBannerResponceModel});
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
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? selectedCategory = freezed,
    Object? getCategoryResponceModel = freezed,
    Object? homeBannerResponceModel = freezed,
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
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      getCategoryResponceModel: freezed == getCategoryResponceModel
          ? _value.getCategoryResponceModel
          : getCategoryResponceModel // ignore: cast_nullable_to_non_nullable
              as GetCategoryResponceModel?,
      homeBannerResponceModel: freezed == homeBannerResponceModel
          ? _value.homeBannerResponceModel
          : homeBannerResponceModel // ignore: cast_nullable_to_non_nullable
              as HomeBannerResponceModel?,
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
      {bool isLoading,
      bool hasError,
      String? message,
      String? selectedCategory,
      GetCategoryResponceModel? getCategoryResponceModel,
      HomeBannerResponceModel? homeBannerResponceModel});
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
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? selectedCategory = freezed,
    Object? getCategoryResponceModel = freezed,
    Object? homeBannerResponceModel = freezed,
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
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      getCategoryResponceModel: freezed == getCategoryResponceModel
          ? _value.getCategoryResponceModel
          : getCategoryResponceModel // ignore: cast_nullable_to_non_nullable
              as GetCategoryResponceModel?,
      homeBannerResponceModel: freezed == homeBannerResponceModel
          ? _value.homeBannerResponceModel
          : homeBannerResponceModel // ignore: cast_nullable_to_non_nullable
              as HomeBannerResponceModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.selectedCategory,
      this.getCategoryResponceModel,
      this.homeBannerResponceModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final String? selectedCategory;
  @override
  final GetCategoryResponceModel? getCategoryResponceModel;
  @override
  final HomeBannerResponceModel? homeBannerResponceModel;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, hasError: $hasError, message: $message, selectedCategory: $selectedCategory, getCategoryResponceModel: $getCategoryResponceModel, homeBannerResponceModel: $homeBannerResponceModel)';
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
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(
                    other.getCategoryResponceModel, getCategoryResponceModel) ||
                other.getCategoryResponceModel == getCategoryResponceModel) &&
            (identical(
                    other.homeBannerResponceModel, homeBannerResponceModel) ||
                other.homeBannerResponceModel == homeBannerResponceModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, message,
      selectedCategory, getCategoryResponceModel, homeBannerResponceModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      final String? message,
      final String? selectedCategory,
      final GetCategoryResponceModel? getCategoryResponceModel,
      final HomeBannerResponceModel? homeBannerResponceModel}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  String? get selectedCategory;
  @override
  GetCategoryResponceModel? get getCategoryResponceModel;
  @override
  HomeBannerResponceModel? get homeBannerResponceModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
