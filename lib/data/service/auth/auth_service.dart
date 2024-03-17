import 'package:beachdu/data/service/api_service.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/login/login_model/login_model.dart';
import 'package:beachdu/domain/model/login/otp_send_responce_model/otp_send_responce_model.dart';
import 'package:beachdu/domain/model/login/otp_verify_request_model/otp_verify_request_model.dart';
import 'package:beachdu/domain/model/login/otp_verify_responce_model/otp_verify_responce_model.dart';
import 'package:beachdu/domain/repository/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepo)
@singleton
class AuthService implements AuthRepo {
  final ApiService _apiService;

  AuthService(this._apiService);

  @override
  Future<Either<Failure, OtpSendResponceModel>> otpSend({
    required LoginModel loginModel,
  }) async {
    try {
      final responce = await _apiService.post(
        ApiEndPoints.sendOTP,
        data: loginModel.toJson(),
      );
      return Right(OtpSendResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, OtpVerifyResponceModel>> otpVerifying({
    required OtpVerifyRequestModel otpVerifyRequestModel,
  }) async {
    try {
      final responce = await _apiService.post(
        ApiEndPoints.verifyOTP,
        data: otpVerifyRequestModel.toJson(),
      );

      return Right(OtpVerifyResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.response?.data['error'] ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
