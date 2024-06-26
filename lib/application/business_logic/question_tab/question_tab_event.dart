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
  const factory QuestionTabEvent.goBackIndex({required int index}) =
      GoBackIndex;
  const factory QuestionTabEvent.markAnswer(
      {required SelectedOption selectedOption}) = MarkAnswer;
  const factory QuestionTabEvent.clearOneSection() = ClearOneSection;
  const factory QuestionTabEvent.yesOrNo({
    required SelectedOption selectedOption,
  }) = YesOrNo;
  const factory QuestionTabEvent.changeIndex({required int index}) =
      ChangeIndex;
  const factory QuestionTabEvent.getBasePrice({
    required PickupQuestionModel pickupQuestionModel,
    required AbandendOrderRequestModel abandendOrderRequestModel,
  }) = GetBasePrice;
  const factory QuestionTabEvent.abandentOrder({
    required AbandendOrderRequestModel abandendOrderRequestModel,
  }) = AbandentOrder;
  const factory QuestionTabEvent.clearNewOPtionList() = ClearNewOPtionList;
  const factory QuestionTabEvent.clear() = Clear;
}
