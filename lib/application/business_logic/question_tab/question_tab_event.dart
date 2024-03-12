part of 'question_tab_bloc.dart';

@freezed
class QuestionTabEvent with _$QuestionTabEvent {
  const factory QuestionTabEvent.tabChange() = TabChange;
  const factory QuestionTabEvent.tabMinus({required int index}) = TabMinus;
  const factory QuestionTabEvent.resetTabSelection() = ResetTabSelection;
  const factory QuestionTabEvent.getQuestions({
    required String categoryType,
    required Product product,
  }) = GetQuestions;
  const factory QuestionTabEvent.getAnswerCount({
    required int answerCount,
  }) = GetAnswerCount;
  const factory QuestionTabEvent.goBackIndex({required int index}) =
      GoBackIndex;
  const factory QuestionTabEvent.clearOneSection() = ClearOneSection;
  const factory QuestionTabEvent.markedQuestions(
      {required SelectedOption selectedOption}) = MarkedQuestions;
  const factory QuestionTabEvent.yesOrNo({
    required SelectedOption selectedOption,
  }) = YesOrNo;
  const factory QuestionTabEvent.countQuestionNumber({
    required int countQuestionNumber,
  }) = CountQuestionNumber;
  const factory QuestionTabEvent.getBasePrice({
    required AbandendOrderRequestModel abandendOrderRequestModel,
    required PickupQuestionModel pickupQuestionModel,
  }) = GetBasePrice;
  const factory QuestionTabEvent.abandentOrder({
    required AbandendOrderRequestModel abandendOrderRequestModel,
  }) = AbandentOrder;
  const factory QuestionTabEvent.clearNewOPtionList() = ClearNewOPtionList;
}
