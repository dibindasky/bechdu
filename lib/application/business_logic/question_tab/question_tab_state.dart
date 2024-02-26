part of 'question_tab_bloc.dart';

@freezed
class QuestionTabState with _$QuestionTabState {
  const factory QuestionTabState({
    required bool isLoading,
    required bool hasError,
    String? message,
    Product? product,
    required int answerCount,
    GetBasePriceModelResponce? basePriceModelResponce,
    required List<SelectedOption> selectedOption,
    GetQuestionModel? getQuestionModel,
    GetProductsRespoceModel? getProductsResponceModel,
    required int selectedTabIndex,
    AbandendOrderResponceModel? abandendOrderResponceModel,
  }) = _Initial;

  factory QuestionTabState.initial() => const QuestionTabState(
        isLoading: false,
        hasError: false,
        answerCount: 0,
        selectedTabIndex: 0,
        selectedOption: [],
      );
}
