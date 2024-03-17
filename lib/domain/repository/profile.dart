import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/address_model/address_creation_request_model/address_creation_request_model.dart';
import 'package:beachdu/domain/model/address_model/address_creation_responce_model/address_creation_responce_model.dart';
import 'package:beachdu/domain/model/login/otp_verify_request_model/otp_verify_request_model.dart';
import 'package:beachdu/domain/model/profile/delete_account_responce_model/delete_account_responce_model.dart';
import 'package:beachdu/domain/model/profile/user_info/user_info.dart';
import 'package:beachdu/domain/model/profile/user_info_request_model/user_info_request_model.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileRepo {
  Future<Either<Failure, AddressCreationResponceModel>> addAddress({
    required AddressCreationRequestModel addressCreationRequestModel,
  });
  Future<Either<Failure, AddressCreationResponceModel>> deleteAddress({
    required int index,
  });
  Future<Either<Failure, UserInfo>> getUserInfo();
  Future<Either<Failure, UserInfo>> updateUser({
    required UserInfoRequestModel userInfoRequestModel,
  });
  Future<Either<Failure, DeleteAccountResponceModel>> deletAcocunt({
    required OtpVerifyRequestModel otpVerifyRequestModel,
  });
}
