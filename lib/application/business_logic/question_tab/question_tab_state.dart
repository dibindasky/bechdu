part of 'question_tab_bloc.dart';

@freezed
class QuestionTabState with _$QuestionTabState {
  const factory QuestionTabState({
    required bool isLoading,
    required bool hasError,
    required bool done,
    required bool lastChecking,
    String? message,
    Product? product,
    required int answerCount,
    GetBasePriceModelResponce? basePriceModelResponce,
    required List<SelectedOption> selectedOption,
    GetQuestionModel? getQuestionModel,
    GetProductsRespoceModel? getProductsResponceModel,
    required int selectedTabIndex,
    AbandendOrderResponceModel? abandendOrderResponceModel,
    List<Section>? sections,
    required Map<String, List<SelectedOption>> selectedAnswers,
  }) = _Initial;

  factory QuestionTabState.initial() => const QuestionTabState(
        isLoading: false,
        hasError: false,
        lastChecking: false,
        done: false,
        answerCount: 0,
        selectedTabIndex: 0,
        selectedOption: [],
        selectedAnswers: {},
      );
}
