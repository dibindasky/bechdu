import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/category_model/get_category_responce_model/get_category_responce_model.dart';
import 'package:beachdu/domain/model/home_banners_model/home_banner_responce_model/home_banner_responce_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, GetCategoryResponceModel>> getAllCategory();
  Future<Either<Failure, HomeBannerResponceModel>> getbanners();
}
