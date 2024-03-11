import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
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
  final _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));
  @override
  Future<Either<Failure, GetQuestionModel>> getQuestions({
    required String categoryType,
  }) async {
    try {
      final responce =
          await _dio.get('${ApiEndPoints.getquestions}/$categoryType');
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
      final response = await _dio.post(ApiEndPoints.getBasePrice,
          data: pickeQuestionModel.toJson());
      log('getBasePrice ${response.data}');
      return Right(GetBasePriceModelResponce.fromJson(response.data));
    } on DioException catch (e) {
      log('getBasePrice DioError $e');
      return Left(Failure(message: e.message));
    } catch (e) {
      log('getBasePrice catch $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AbandendOrderResponceModel>> abandendOrder({
    required AbandendOrderRequestModel abandendOrderRequestModel,
  }) async {
    try {
      final accessToken =
          await SecureSotrage.getToken().then((token) => token.accessToken);
      _dio.options.headers.addAll(
        {
          'authorization': "Bearer $accessToken",
        },
      );
      final responce = await _dio.post(
        ApiEndPoints.abandendOrder,
        data: abandendOrderRequestModel.toJson(),
      );
      return Right(AbandendOrderResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('abandendOrder DioException $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('abandendOrder catch $e');
      return Left(Failure(message: '$e'));
    }
  }
}
