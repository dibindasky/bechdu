// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beachdu/application/business_logic/auth/auth_bloc.dart' as _i19;
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart'
    as _i7;
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart'
    as _i20;
import 'package:beachdu/application/business_logic/location/location_bloc.dart'
    as _i21;
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart'
    as _i22;
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart'
    as _i23;
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart'
    as _i18;
import 'package:beachdu/data/service/auth/auth_service.dart' as _i4;
import 'package:beachdu/data/service/brands/brands_service.dart' as _i6;
import 'package:beachdu/data/service/home/home_services.dart' as _i9;
import 'package:beachdu/data/service/location/location_service.dart' as _i11;
import 'package:beachdu/data/service/place_oreder/place_order_service.dart'
    as _i13;
import 'package:beachdu/data/service/profile/profile_service.dart' as _i15;
import 'package:beachdu/data/service/questions/questions_service.dart' as _i17;
import 'package:beachdu/domain/repository/auth_repo.dart' as _i3;
import 'package:beachdu/domain/repository/brands_repo.dart' as _i5;
import 'package:beachdu/domain/repository/home_repo.dart' as _i8;
import 'package:beachdu/domain/repository/location_repo.dart' as _i10;
import 'package:beachdu/domain/repository/place_order.dart' as _i12;
import 'package:beachdu/domain/repository/profile.dart' as _i14;
import 'package:beachdu/domain/repository/question_repo.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AuthRepo>(() => _i4.AuthService());
    gh.lazySingleton<_i5.BrandsRepository>(() => _i6.BrandsService());
    gh.factory<_i7.CategoryBlocBloc>(
        () => _i7.CategoryBlocBloc(gh<_i5.BrandsRepository>()));
    gh.lazySingleton<_i8.HomeRepository>(() => _i9.HomeServices());
    gh.lazySingleton<_i10.LocationRepo>(() => _i11.LocationService());
    gh.lazySingleton<_i12.PlaceOrderRepo>(() => _i13.PlaceOrderService());
    gh.lazySingleton<_i14.ProfileRepo>(() => _i15.AddressService());
    gh.lazySingleton<_i16.QuestionRepo>(() => _i17.QuestionService());
    gh.factory<_i18.QuestionTabBloc>(
        () => _i18.QuestionTabBloc(gh<_i16.QuestionRepo>()));
    gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(gh<_i3.AuthRepo>()));
    gh.factory<_i20.HomeBloc>(() => _i20.HomeBloc(gh<_i8.HomeRepository>()));
    gh.factory<_i21.LocationBloc>(
        () => _i21.LocationBloc(gh<_i10.LocationRepo>()));
    gh.factory<_i22.PlaceOrderBloc>(
        () => _i22.PlaceOrderBloc(gh<_i12.PlaceOrderRepo>()));
    gh.factory<_i23.ProfileBloc>(
        () => _i23.ProfileBloc(gh<_i14.ProfileRepo>()));
    return this;
  }
}
