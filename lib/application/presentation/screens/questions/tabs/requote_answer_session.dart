import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/grid_options_maker.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/image_grid_maker.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/yes_or_no_list_maker.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequoteAnswerSessio extends StatelessWidget {
  const RequoteAnswerSessio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionTabBloc, QuestionTabState>(
      listener: (context, state) {
        if (state.message != null) {
          showSnack(
              context: context,
              message: state.message!,
              color: state.hasError ? kRed : kGreenPrimary);
        }
      },
      buildWhen: (previous, current) =>
          previous.selectedTabIndex != current.selectedTabIndex,
      builder: (context, state) {
        if (state.sections != null) {
          print('session maker===========');
          if (state.sections![state.selectedTabIndex].type == 'yes/no') {
            return YesOrNoListMaker(
                list: state.sections![state.selectedTabIndex].options!);
          } else if (state.sections![state.selectedTabIndex].type == 'image') {
            return ImageGridMaker(
                list: state.sections![state.selectedTabIndex].options!);
          } else {
            return GridOptionMaker(
                list: state.sections![state.selectedTabIndex].options!);
          }
        }
        return const Text('data');
      },
    );
  }
}
