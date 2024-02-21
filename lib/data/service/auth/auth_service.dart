import 'dart:developer';

import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/login/login_model/login_model.dart';
import 'package:beachdu/domain/model/login/login_responce_model/login_responce_model.dart';
import 'package:beachdu/domain/repository/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepo)
@singleton
class AuthService implements AuthRepo {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));
  @override
  Future<Either<Failure, LoginResponceModel>> login({
    required LoginModel loginModel,
  }) async {
    try {
      final responce =
          await _dio.post(ApiEndPoints.login, data: loginModel.toJson());
      log('login Respoce data ${responce.data}');
      return Right(LoginResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('login DioException $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('login catch $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
