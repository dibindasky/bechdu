import 'dart:developer';
import 'package:beachdu/data/service/api_service.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/best_selling_products_responce_model/best_selling_products_responce_model.dart';
import 'package:beachdu/domain/model/category_model/get_category_responce_model/get_category_responce_model.dart';
import 'package:beachdu/domain/model/home_banners_model/home_banner_responce_model/home_banner_responce_model.dart';
import 'package:beachdu/domain/model/notification/notification_responce_model/notification_responce_model.dart';
import 'package:beachdu/domain/model/page_size_query_model/page_size_query_model.dart';
import 'package:beachdu/domain/model/search_model/search_param_model/search_param_model.dart';
import 'package:beachdu/domain/model/search_model/search_responce_model/search_responce_model.dart';
import 'package:beachdu/domain/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeRepository)
@injectable
class HomeServices implements HomeRepository {
  final ApiService _apiService;

  HomeServices(this._apiService);

  @override
  Future<Either<Failure, GetCategoryResponceModel>> getAllCategory() async {
    try {
      final response = await _apiService.get(ApiEndPoints.getAllCategory);
      if (response.statusCode == 200) {
        return Right(GetCategoryResponceModel.fromJson(response.data));
      } else {
        return Left(Failure(message: errorMessage));
      }
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: '$errorMessage Get All category error'));
    }
  }

  @override
  Future<Either<Failure, HomeBannerResponceModel>> getbanners() async {
    try {
      final responce = await _apiService.get(ApiEndPoints.homePageBanners);
      return Right(HomeBannerResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, BestSellingProductsResponceModel>>
      getBestSellingProducts() async {
    try {
      final responce = await _apiService
          .get(ApiEndPoints.getBestSellingProducts, addHeader: true);

      return Right(BestSellingProductsResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, SearchResponceModel>> globalProductSearch({
    required SearchParamModel searchParamModel,
  }) async {
    try {
      final responce = await _apiService.get(
        ApiEndPoints.globalProductSearch,
        queryParameters: searchParamModel.toJson(),
      );
      return Right(SearchResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, NotificationResponceModel>> getAllnotification(
      {required String number,
      required PageSizeQueryModel pageSizeQueryModel}) async {
    try {
      final responce = await _apiService.get(
        ApiEndPoints.notifications
            .replaceFirst('{number}', number)
            .replaceAll('{pageSize}', pageSizeQueryModel.pageSize.toString()),
        addHeader: true,
      );
      log('done noti');
      return Right(NotificationResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException noti');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('catch noti');
      return Left(Failure(message: errorMessage));
    }
  }
}
