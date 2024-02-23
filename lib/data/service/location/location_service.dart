import 'dart:developer';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/repository/location_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LocationRepo)
@singleton
class LocationService implements LocationRepo {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));
  @override
  Future<Either<Failure, List<String>>> locationPick() async {
    try {
      final responce = await _dio.get(ApiEndPoints.cityNames);
      final data = responce.data as List<dynamic>;
      final retVal = data.map((e) => e.toString()).toList();
      //log('locationPick retVal $retVal');
      return Right(retVal);
    } on DioException catch (e) {
      //log('locationPick DioException $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      // log('locationPick catch $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<String>>> pincodePick({
    required String cityName,
  }) async {
    try {
      final response = await _dio
          .get(ApiEndPoints.pinCodes.replaceFirst('{location}', cityName));
      log('pincodePick retVal ${response.data}');
      final data = response.data[0]['pinCodes']; // Extracting the pinCodes list
      return Right(List<String>.from(data));
      // return Right(PincodeResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('pincodePick DioException $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('pincodePick catch $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
