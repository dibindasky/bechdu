import 'dart:developer';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/brands.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/single_category_brands_responce_model.dart';
import 'package:beachdu/domain/model/get_models_responce_model/get_models_responce_model.dart';
import 'package:beachdu/domain/model/get_series_responce_model/get_series_responce_model.dart';
import 'package:beachdu/domain/model/get_varient_responce_model/get_varient_responce_model.dart';
import 'package:beachdu/domain/model/products_model/get_products_responce_model.dart';
import 'package:beachdu/domain/repository/brands_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: BrandsRepository)
@injectable
class BrandsService implements BrandsRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<Failure, SingleCategoryBrandsResponceModel>>
      getSingleCategoryBrands({
    String? categoryType,
  }) async {
    try {
      final response = await _dio.get(
          '${ApiEndPoints.getsingleCategoryBrands}${categoryType ?? 'mobile'}');
      final List<dynamic> responseData = response.data;
      final List<Brands> brandsList =
          responseData.map((item) => Brands.fromJson(item)).toList();
      return Right(SingleCategoryBrandsResponceModel(brands: brandsList));
    } on DioException catch (e) {
      //log('Error getSingleCategory got 400 $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      //log('Error catch getSingleCategory $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SingleCategoryBrandsResponceModel>> searchBrands({
    required String serachQuery,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GetProductsResponceModel>> getProducts({
    required String categoryType,
    required String brandName,
  }) async {
    try {
      final responce =
          await _dio.get('${ApiEndPoints.getProducts}$categoryType/$brandName');
      //log(' getproducts data ${responce.data}');
      return Right(GetProductsResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('getProducts DioException $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('getProducts catch $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, GetModelsResponceModel>> getModles({
    required String categoryType,
    required String brandName,
    required String seriesName,
  }) async {
    log('${ApiEndPoints.getModels}$categoryType/$brandName/$seriesName');
    try {
      final responce = await _dio
          .get('${ApiEndPoints.getModels}$categoryType/$brandName/$seriesName');
      log('getModles data ${responce.data}');
      return Right(GetModelsResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('getModles DioException $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('getModles error catch $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, GetSeriesResponceModel>> getSeries({
    required String brandName,
    required String categoryType,
  }) async {
    try {
      final responce =
          await _dio.get('${ApiEndPoints.getSeries}$brandName/$categoryType');
      log('getSeries data ${responce.data}');
      return Right(GetSeriesResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('getSeries DioException $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('getSeries error catch $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, GetVarientResponceModel>> getVarients({
    required String categoryType,
    required String brandName,
    required String seriesName,
    required String model,
  }) async {
    try {
      final responce = await _dio.get(
          '${ApiEndPoints.getVarients}$categoryType/$brandName/$seriesName/$model');
      log('getVarients data ${responce.data}');
      return Right(GetVarientResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('getVarients DioException $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('getVarients error catch $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
