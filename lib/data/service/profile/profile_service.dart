import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/data/service/api_service.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/address_model/address_creation_request_model/address_creation_request_model.dart';
import 'package:beachdu/domain/model/address_model/address_creation_responce_model/address_creation_responce_model.dart';
import 'package:beachdu/domain/model/login/otp_verify_request_model/otp_verify_request_model.dart';
import 'package:beachdu/domain/model/profile/delete_account_responce_model/delete_account_responce_model.dart';
import 'package:beachdu/domain/model/profile/user_info/user_info.dart';
import 'package:beachdu/domain/model/profile/user_info_request_model/user_info_request_model.dart';
import 'package:beachdu/domain/repository/profile.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileRepo)
@singleton
class AddressService implements ProfileRepo {
  final ApiService _apiService;

  AddressService(this._apiService);
  @override
  Future<Either<Failure, AddressCreationResponceModel>> addAddress({
    required AddressCreationRequestModel addressCreationRequestModel,
  }) async {
    try {
      final responce = await _apiService.post(
        addHeader: true,
        ApiEndPoints.addAddress,
        data: addressCreationRequestModel.toJson(),
      );
      return Right(AddressCreationResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AddressCreationResponceModel>> deleteAddress({
    required int index,
  }) async {
    try {
      final number = await SecureSotrage.getNumber();
      final responce = await _apiService.delete(
        addHeader: true,
        ApiEndPoints.deleteAddress
            .replaceFirst('{number}', number)
            .replaceFirst('{index}', '$index'),
      );
      return Right(AddressCreationResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserInfo>> getUserInfo() async {
    try {
      final number = await SecureSotrage.getNumber();
      final responce = await _apiService.get(
          addHeader: true,
          ApiEndPoints.getUserInfo.replaceFirst('{number}', number));

      return Right(UserInfo.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserInfo>> updateUser({
    required UserInfoRequestModel userInfoRequestModel,
  }) async {
    try {
      final number = await SecureSotrage.getNumber();
      final responce = await _apiService.post(
        addHeader: true,
        ApiEndPoints.updateUserInfo.replaceFirst('{number}', number),
        data: userInfoRequestModel.toJson(),
      );
      return Right(UserInfo.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, DeleteAccountResponceModel>> deletAcocunt({
    required OtpVerifyRequestModel otpVerifyRequestModel,
  }) async {
    try {
      final responce = await _apiService.post(
        addHeader: true,
        ApiEndPoints.deleteAccount,
        data: otpVerifyRequestModel.toJson(),
      );
      log('deletAcocunt data ${responce.data}');
      return Right(DeleteAccountResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
