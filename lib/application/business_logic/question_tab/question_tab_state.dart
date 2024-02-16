part of 'question_tab_bloc.dart';

@freezed
class QuestionTabState with _$QuestionTabState {
  const factory QuestionTabState({
    required bool isLoading,
    required bool hasError,
    String? message,
    Product? product,
    int? answerCount,
    required List<SelectedOption> selectedOption,
    GetQuestionModel? getQuestionModel,
    GetProductsResponceModel? getProductsResponceModel,
    required int selectedTabIndex,
  }) = _Initial;

  factory QuestionTabState.initial() => const QuestionTabState(
        isLoading: false,
        hasError: false,
        selectedTabIndex: 0,
        selectedOption: [],
      );
}
