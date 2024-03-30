import 'package:beachdu/data/service/api_service.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/brands.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/single_category_brands_responce_model.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/get_products_respoce_model.dart';
import 'package:beachdu/domain/repository/brands_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: BrandsRepository)
@injectable
class BrandsService implements BrandsRepository {
  final ApiService _apiService;
  BrandsService(this._apiService);

  @override
  Future<Either<Failure, SingleCategoryBrandsResponceModel>>
      getSingleCategoryBrands({
    String? categoryType,
  }) async {
    try {
      final response = await _apiService.get(
          '${ApiEndPoints.getsingleCategoryBrands}${categoryType ?? 'mobile'}');
      final List<dynamic> responseData = response.data;
      final List<Brands> brandsList =
          responseData.map((item) => Brands.fromJson(item)).toList();
      return Right(SingleCategoryBrandsResponceModel(brands: brandsList));
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
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
  Future<Either<Failure, GetProductsRespoceModel>> getProducts({
    required String categoryType,
    required String brandName,
    required String seriesName,
  }) async {
    try {
      final responce = await _apiService.get(
        '${ApiEndPoints.getProducts}$categoryType/$brandName/$seriesName',
      );
      return Right(GetProductsRespoceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getSeries({
    required String brandName,
    required String categoryType,
  }) async {
    try {
      final responce = await _apiService
          .get('${ApiEndPoints.getSeries}$brandName/$categoryType');
      final data = responce.data as List<dynamic>;
      final retVal = data.map((e) => e.toString()).toList();
      return Right(retVal);
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getModles({
    required String categoryType,
    required String brandName,
    required String seriesName,
  }) async {
    try {
      final responce = await _apiService
          .get('${ApiEndPoints.getModels}$categoryType/$brandName/$seriesName');
      final data = responce.data as List<dynamic>;
      final retVal = data.map((e) => e.toString()).toList();
      return Right(retVal);
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getVarients({
    required String categoryType,
    required String brandName,
    required String seriesName,
    required String model,
  }) async {
    try {
      final responce = await _apiService.get(
          '${ApiEndPoints.getVarients}$categoryType/$brandName/$seriesName/$model');
      final data = responce.data as List<dynamic>;
      final retVal = data.map((e) => e.toString()).toList();
      return Right(retVal);
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }
}
