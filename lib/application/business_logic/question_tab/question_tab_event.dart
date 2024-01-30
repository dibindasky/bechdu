part of 'question_tab_bloc.dart';

@freezed
class QuestionTabEvent with _$QuestionTabEvent {
  const factory QuestionTabEvent.tabChange() = _TabChange;
  const factory QuestionTabEvent.markedWuestions({
    required Map<String, dynamic> markedAnswers,
  }) = _MarkedAnswers;
}
