import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/single_category_brands_responce_model.dart';
import 'package:beachdu/domain/model/products_model/get_products_responce_model.dart';
import 'package:dartz/dartz.dart';

abstract class BrandsRepository {
  Future<Either<Failure, SingleCategoryBrandsResponceModel>>
      getSingleCategoryBrands({String? categoryType});
  Future<Either<Failure, SingleCategoryBrandsResponceModel>> searchBrands({
    required String serachQuery,
  });
  Future<Either<Failure, GetProductsResponceModel>> getProducts({
    required String categoryType,
    required String brandName,
  });
}
