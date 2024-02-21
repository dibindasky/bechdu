import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/login/login_model/login_model.dart';
import 'package:beachdu/domain/model/login/login_responce_model/login_responce_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, LoginResponceModel>> login({
    required LoginModel loginModel,
  });
}
