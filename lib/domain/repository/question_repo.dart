import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/get_base_price_model_responce/get_base_price_model_responce.dart';
import 'package:beachdu/domain/model/get_question_model/get_question_model.dart';
import 'package:beachdu/domain/model/pickup_question_model/pickup_question_model.dart';
import 'package:dartz/dartz.dart';

abstract class QuestionRepo {
  Future<Either<Failure, GetQuestionModel>> getQuestions({
    required String categoryType,
  });
  Future<Either<Failure, GetBasePriceModelResponce>> getBasePrice({
    required PickupQuestionModel pickeQuestionModel,
  });
}
