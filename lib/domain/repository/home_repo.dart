import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/best_selling_products_responce_model/best_selling_products_responce_model.dart';
import 'package:beachdu/domain/model/category_model/get_category_responce_model/get_category_responce_model.dart';
import 'package:beachdu/domain/model/home_banners_model/home_banner_responce_model/home_banner_responce_model.dart';
import 'package:beachdu/domain/model/search_model/search_param_model/search_param_model.dart';
import 'package:beachdu/domain/model/search_model/search_responce_model/search_responce_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, GetCategoryResponceModel>> getAllCategory();
  Future<Either<Failure, HomeBannerResponceModel>> getbanners();
  Future<Either<Failure, BestSellingProductsResponceModel>>
      getBestSellingProducts();
  Future<Either<Failure, SearchResponceModel>> globalProductSearch({
    required SearchParamModel searchParamModel,
  });
}
