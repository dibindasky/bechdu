import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/grid/grid_selection.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/image_selection/image_grid.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/yes_or_no/yes_or_no_tab.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionTabAnswerSession extends StatelessWidget {
  const QuestionTabAnswerSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionTabBloc, QuestionTabState>(
      listener: (context, state) {
        if (state.message != null) {
          showSnack(context: context, message: state.message!);
        }
      },
      builder: (context, state) {
        if (testQuestionMap[state.selectedTabIndex]['sectionType'] ==
            'yes/no') {
          return YesOrNoListMaker(map: testQuestionMap[state.selectedTabIndex]);
        } else if (testQuestionMap[state.selectedTabIndex]['sectionType'] ==
            'image') {
          return ImageGridMaker(map: testQuestionMap[state.selectedTabIndex]);
        } else {
          return GridOptionMaker(map: testQuestionMap[state.selectedTabIndex]);
        }
      },
    );
  }
}
