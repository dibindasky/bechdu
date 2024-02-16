// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart'
    as _i5;
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart'
    as _i11;
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart'
    as _i10;
import 'package:beachdu/data/service/brands/brands_service.dart' as _i4;
import 'package:beachdu/data/service/home/home_services.dart' as _i7;
import 'package:beachdu/data/service/questions/questions_service.dart' as _i9;
import 'package:beachdu/domain/repository/brands_repo.dart' as _i3;
import 'package:beachdu/domain/repository/home_repo.dart' as _i6;
import 'package:beachdu/domain/repository/question_repo.dart' as _i8;
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
    gh.lazySingleton<_i3.BrandsRepository>(() => _i4.BrandsService());
    gh.factory<_i5.CategoryBlocBloc>(
        () => _i5.CategoryBlocBloc(gh<_i3.BrandsRepository>()));
    gh.lazySingleton<_i6.HomeRepository>(() => _i7.HomeServices());
    gh.lazySingleton<_i8.QuestionRepo>(() => _i9.QuestionService());
    gh.factory<_i10.QuestionTabBloc>(
        () => _i10.QuestionTabBloc(gh<_i8.QuestionRepo>()));
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(gh<_i6.HomeRepository>()));
    return this;
  }
}
