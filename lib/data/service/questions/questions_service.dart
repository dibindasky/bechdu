import 'dart:developer';

import 'package:beachdu/data/service/api_service.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/get_base_price_model_responce/get_base_price_model_responce.dart';
import 'package:beachdu/domain/model/get_question_model/get_question_model.dart';
import 'package:beachdu/domain/model/order_model/abandend_order_request_model/abandend_order_request_model.dart';
import 'package:beachdu/domain/model/order_model/abandend_order_responce_model/abandend_order_responce_model.dart';
import 'package:beachdu/domain/model/pickup_question_model/pickup_question_model.dart';
import 'package:beachdu/domain/repository/question_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: QuestionRepo)
@injectable
class QuestionService implements QuestionRepo {
  final ApiService _apiService;
  QuestionService(this._apiService);
  @override
  Future<Either<Failure, GetQuestionModel>> getQuestions({
    required String categoryType,
  }) async {
    try {
      final responce =
          await _apiService.get('${ApiEndPoints.getquestions}/$categoryType');
      return Right(GetQuestionModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, GetBasePriceModelResponce>> getBasePrice({
    required PickupQuestionModel pickeQuestionModel,
  }) async {
    try {
      log('getBasePrice rqust data ${pickeQuestionModel.toJson()}');
      final response = await _apiService.post(ApiEndPoints.getBasePrice,
          data: pickeQuestionModel.toJson());
      return Right(GetBasePriceModelResponce.fromJson(response.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AbandendOrderResponceModel>> abandendOrder({
    required AbandendOrderRequestModel abandendOrderRequestModel,
  }) async {
    try {
      log('abandendOrder rqust data ${abandendOrderRequestModel.toJson()}');
      final responce = await _apiService.post(
        addHeader: true,
        ApiEndPoints.abandendOrder,
        data: abandendOrderRequestModel.toJson(),
      );
      return Right(AbandendOrderResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: '$e'));
    }
  }
}
