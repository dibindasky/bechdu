import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/category_model/get_category_responce_model/get_category_responce_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, GetCategoryResponceModel>> getAllCategory();
}
