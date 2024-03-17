import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/data/service/api_service.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/location/city_update_request_model/city_update_request_model.dart';
import 'package:beachdu/domain/model/location/city_update_responce_model/city_update_responce_model.dart';
import 'package:beachdu/domain/model/location/pincode_update_request_model/pincode_update_request_model.dart';
import 'package:beachdu/domain/model/location/pincode_update_responce_model/pincode_update_responce_model.dart';
import 'package:beachdu/domain/repository/location_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LocationRepo)
@singleton
class LocationService implements LocationRepo {
  final ApiService _apiService;
  LocationService(this._apiService);
  @override
  Future<Either<Failure, List<String>>> locationPick() async {
    try {
      final responce = await _apiService.get(ApiEndPoints.getCityNames);
      final data = responce.data as List<dynamic>;
      final retVal = data.map((e) => e.toString()).toList();
      //log('locationPick retVal $retVal');
      return Right(retVal);
    } on DioException catch (e) {
      return Left(Failure(message: e.response?.data['error'] ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<String>>> pincodePick({
    required String cityName,
  }) async {
    try {
      final response = await _apiService
          .get(ApiEndPoints.getPinCodes.replaceFirst('{location}', cityName));
      log('pincodePick retVal ${response.data}');
      final data = response.data[0]['pinCodes'];
      return Right(List<String>.from(data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, CityUpdateResponceModel>> locationUpdation({
    required CityUpdateRequestModel cityUpdateRequestModel,
  }) async {
    try {
      final number = await SecureSotrage.getNumber();
      final response = await _apiService.put(
        addHeader: true,
        ApiEndPoints.cityUpdate.replaceFirst('{number}', number),
        data: cityUpdateRequestModel.toJson(),
      );
      return Right(CityUpdateResponceModel.fromJson(response.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, PincodeUpdateResponceModel>> pincodeUpdation({
    required PincodeUpdateRequestModel pincodeUpdateRequestModel,
  }) async {
    try {
      final number = await SecureSotrage.getNumber();
      final response = await _apiService.put(
        addHeader: true,
        ApiEndPoints.picodeUpdate.replaceFirst('{number}', number),
        data: pincodeUpdateRequestModel.toJson(),
      );
      log('pincodeUpdation data ${response.data}');
      return Right(PincodeUpdateResponceModel.fromJson(response.data));
    } on DioException catch (e) {
      log('pincodeUpdation DioException $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('pincodeUpdation catch $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
