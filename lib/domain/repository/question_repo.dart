import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/get_question_model/get_question_model.dart';
import 'package:dartz/dartz.dart';

abstract class QuestionRepo {
  Future<Either<Failure, GetQuestionModel>> getQuestions({
    required String categoryType,
  });
}
