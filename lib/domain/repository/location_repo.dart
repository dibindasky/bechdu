import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/pincode_responce_model/pincode_responce_model.dart';
import 'package:dartz/dartz.dart';

abstract class LocationRepo {
  Future<Either<Failure, List<String>>> locationPick();
  Future<Either<Failure, PincodeResponceModel>> pincodePick({
    required String cityName,
  });
}
