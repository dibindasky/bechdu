import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/single_category_brands_responce_model.dart';
import 'package:beachdu/domain/model/get_models_responce_model/get_models_responce_model.dart';
import 'package:beachdu/domain/model/get_series_responce_model/get_series_responce_model.dart';
import 'package:beachdu/domain/model/get_varient_responce_model/get_varient_responce_model.dart';
import 'package:beachdu/domain/model/products_model/get_products_responce_model.dart';
import 'package:dartz/dartz.dart';

abstract class BrandsRepository {
  Future<Either<Failure, SingleCategoryBrandsResponceModel>>
      getSingleCategoryBrands({
    String? categoryType,
  });
  Future<Either<Failure, SingleCategoryBrandsResponceModel>> searchBrands({
    required String serachQuery,
  });
  Future<Either<Failure, GetProductsResponceModel>> getProducts({
    required String categoryType,
    required String brandName,
  });
  Future<Either<Failure, GetSeriesResponceModel>> getSeries({
    required String brandName,
    required String categoryType,
  });
  Future<Either<Failure, GetModelsResponceModel>> getModles({
    required String categoryType,
    required String brandName,
    required String seriesName,
  });
  Future<Either<Failure, GetVarientResponceModel>> getVarients({
    required String categoryType,
    required String brandName,
    required String seriesName,
    required String model,
  });
}
