part of 'question_tab_bloc.dart';

@freezed
class QuestionTabState with _$QuestionTabState {
  const factory QuestionTabState({
    required bool isLoading,
    required bool hasError,
    String? message,
    required int selectedTabIndex,
    required List<Map<String, dynamic>> tabItems,
    required List<Map<String, dynamic>> bottomtabItems,
  }) = _Initial;

  factory QuestionTabState.initial() => QuestionTabState(
        isLoading: false,
        hasError: false,
        selectedTabIndex: 0,
        tabItems: testQuestionMap,
        bottomtabItems: [],
      );
}
