import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/address_model/address_creation_request_model/address_creation_request_model.dart';
import 'package:beachdu/domain/model/address_model/address_creation_responce_model/address_creation_responce_model.dart';
import 'package:beachdu/domain/model/address_model/address_creation_responce_model/user.dart';
import 'package:beachdu/domain/model/profile/user_info/user_info.dart';
import 'package:beachdu/domain/repository/profile.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileRepo)
@singleton
class AddressService implements ProfileRepo {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));
  @override
  Future<Either<Failure, AddressCreationResponceModel>> addAddress({
    required AddressCreationRequestModel addressCreationRequestModel,
  }) async {
    try {
      final accessToken =
          await SecureSotrage.getToken().then((token) => token.accessToken);
      _dio.options.headers.addAll(
        {
          'authorization': 'Bearer $accessToken',
        },
      );
      final responce = await _dio.post(
        ApiEndPoints.addAddress,
        data: addressCreationRequestModel.toJson(),
      );
      log('address data after send ${addressCreationRequestModel.toJson()}');
      log('address data from api ${responce.data}');
      return Right(AddressCreationResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('address data DioException api $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('address data catch api $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AddressCreationResponceModel>> deleteAddress({
    required int index,
  }) async {
    try {
      final number = await SecureSotrage.getNumber();
      final accessToken =
          await SecureSotrage.getToken().then((token) => token.accessToken);
      _dio.options.headers.addAll(
        {
          'authorization': 'Bearer $accessToken',
        },
      );
      final responce = await _dio.delete(
        ApiEndPoints.deleteAddress
            .replaceFirst('{number}', number)
            .replaceFirst('{index}', '$index'),
      );
      log('address data after send');
      log('address data from api ${responce.data}');
      return Right(AddressCreationResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('address data DioException api $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('address data catch api $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserInfo>> getUserInfo() async {
    try {
      final number = await SecureSotrage.getNumber();
      final accessToken =
          await SecureSotrage.getToken().then((token) => token.accessToken);
      _dio.options.headers.addAll(
        {
          'authorization': 'Bearer $accessToken',
        },
      );
      final responce = await _dio
          .get(ApiEndPoints.getUserInfo.replaceFirst('{number}', number));
      log('getUserInfo data from api ${responce.data}');
      return Right(UserInfo.fromJson(responce.data));
    } on DioException catch (e) {
      log('getUserInfo data DioException api $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('getUserInfo data catch api $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
