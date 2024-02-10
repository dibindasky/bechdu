import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/brands.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/single_category_brands_responce_model.dart';
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
      //log('getProducts DioException $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      //log('getProducts catch $e');
      return Left(Failure(message: errorMessage));
    }
  }
}
