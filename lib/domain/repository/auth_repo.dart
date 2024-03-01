import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/login/login_model/login_model.dart';
import 'package:beachdu/domain/model/login/otp_send_responce_model/otp_send_responce_model.dart';
import 'package:beachdu/domain/model/login/otp_verify_request_model/otp_verify_request_model.dart';
import 'package:beachdu/domain/model/login/otp_verify_responce_model/otp_verify_responce_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, OtpSendResponceModel>> otpSend({
    required LoginModel loginModel,
  });
  Future<Either<Failure, OtpVerifyResponceModel>> otpVerifying({
    required OtpVerifyRequestModel otpVerifyRequestModel,
  });
}
