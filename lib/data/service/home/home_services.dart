import 'dart:developer';

import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/category_model/get_category_responce_model/get_category_responce_model.dart';
import 'package:beachdu/domain/model/home_banners_model/home_banner_responce_model/home_banner_responce_model.dart';
import 'package:beachdu/domain/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeRepository)
@injectable
class HomeServices implements HomeRepository {
  final _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));
  @override
  Future<Either<Failure, GetCategoryResponceModel>> getAllCategory() async {
    try {
      final response = await _dio.get(ApiEndPoints.getAllCategory);
      if (response.statusCode == 200) {
        return Right(GetCategoryResponceModel.fromJson(response.data));
      } else {
        return Left(Failure(message: errorMessage));
      }
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: '$errorMessage getAllCategory'));
    }
  }

  @override
  Future<Either<Failure, HomeBannerResponceModel>> getbanners() async {
    try {
      final accessToken =
          await SecureSotrage.getToken().then((token) => token.accessToken);
      _dio.options.headers.addAll(
        {
          'authorization': 'Bearer $accessToken',
        },
      );
      final responce = await _dio.get(ApiEndPoints.homePageBanners);
      log('getbanners data ${responce.data}');
      return Right(HomeBannerResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('getbanners DioException $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('getbanners catch $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
