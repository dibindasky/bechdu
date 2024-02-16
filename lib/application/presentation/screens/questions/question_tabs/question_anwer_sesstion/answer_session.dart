import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/grid/grid_selection.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/image_selection/image_grid.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/yes_or_no/yes_or_no_tab.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionTabAnswerSession extends StatelessWidget {
  const QuestionTabAnswerSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionTabBloc, QuestionTabState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingAnimation(width: 100);
        } else if (state.hasError) {
          return const Center(
            child: Text('Fetch error'),
          );
        } else {
          if (state.getQuestionModel != null ||
              state.getQuestionModel!.sections != null) {
            if (state
                    .getQuestionModel!.sections![state.selectedTabIndex].type ==
                'yes/no') {
              return YesOrNoListMaker(
                section:
                    state.getQuestionModel!.sections![state.selectedTabIndex],
              );
            } else if (state
                    .getQuestionModel!.sections![state.selectedTabIndex].type ==
                'image') {
              return ImageGridMaker(
                section:
                    state.getQuestionModel!.sections![state.selectedTabIndex],
              );
            } else {
              return GridOptionMaker(
                section:
                    state.getQuestionModel!.sections![state.selectedTabIndex],
              );
            }
          } else {
            return const Center(
              child: Text("question tab error"),
            );
          }
        }
      },
    );
  }
}
