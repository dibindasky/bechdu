import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/single_category_brands_responce_model.dart';
import 'package:beachdu/domain/model/get_products_respoce_model/get_products_respoce_model.dart';
import 'package:dartz/dartz.dart';

abstract class BrandsRepository {
  Future<Either<Failure, SingleCategoryBrandsResponceModel>>
      getSingleCategoryBrands({
    String? categoryType,
  });
  Future<Either<Failure, SingleCategoryBrandsResponceModel>> searchBrands({
    required String serachQuery,
  });
  Future<Either<Failure, GetProductsRespoceModel>> getProducts({
    required String categoryType,
    required String brandName,
    required String seriesName,
  });
  Future<Either<Failure, GetProductsRespoceModel>>
      getProductsBasedOnCategoryAndBrand({
    required String categoryType,
    required String brandName,
  });
  Future<Either<Failure, List<String>>> getSeries({
    required String brandName,
    required String categoryType,
  });
  Future<Either<Failure, List<String>>> getModles({
    required String categoryType,
    required String brandName,
    required String seriesName,
  });
  Future<Either<Failure, List<String>>> getVarients({
    required String categoryType,
    required String brandName,
    required String seriesName,
    required String model,
  });
}
