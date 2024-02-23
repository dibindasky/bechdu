import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract class LocationRepo {
  Future<Either<Failure, List<String>>> locationPick();
  Future<Either<Failure, List<String>>> pincodePick({
    required String cityName,
  });
}
