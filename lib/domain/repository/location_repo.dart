import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/location/city_update_request_model/city_update_request_model.dart';
import 'package:beachdu/domain/model/location/city_update_responce_model/city_update_responce_model.dart';
import 'package:beachdu/domain/model/location/pincode_update_request_model/pincode_update_request_model.dart';
import 'package:beachdu/domain/model/location/pincode_update_responce_model/pincode_update_responce_model.dart';
import 'package:dartz/dartz.dart';

abstract class LocationRepo {
  Future<Either<Failure, List<String>>> locationPick();
  Future<Either<Failure, List<String>>> pincodePick({
    required String cityName,
  });
  Future<Either<Failure, CityUpdateResponceModel>> locationUpdation({
    required CityUpdateRequestModel cityUpdateRequestModel,
  });
  Future<Either<Failure, PincodeUpdateResponceModel>> pincodeUpdation({
    required PincodeUpdateRequestModel pincodeUpdateRequestModel,
  });
}
