import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/grid/grid_tile.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/domain/model/get_question_model/section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridOptionMaker extends StatelessWidget {
  const GridOptionMaker({super.key, required this.section});

  final Section section;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              padding: const EdgeInsets.all(0),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: section.options!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => GridOptionSelectorTile(
                question: section.options![index],
              ),
            ),
            kHeight30,
            BlocConsumer<QuestionTabBloc, QuestionTabState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state.isLoading) {
                  return const LoadingAnimation(width: 30);
                } else if (state.hasError) {
                  return const Center(
                    child: Text('fetch error'),
                  );
                } else {
                  if (state.getQuestionModel != null ||
                      state.getQuestionModel!.sections != null) {
                    return CustomButton(
                      onPressed: () {
                        if (state.selectedTabIndex >=
                            state.getQuestionModel!.sections!.length - 1) {
                          secondtabScreensNotifier.value = 2;
                          secondtabScreensNotifier.notifyListeners();
                          context
                              .read<QuestionTabBloc>()
                              .add(const QuestionTabEvent.resetTabSelection());
                        } else {
                          if (state.getQuestionModel!
                                  .sections![state.selectedTabIndex].criteria ==
                              'All') {
                            context
                                .read<QuestionTabBloc>()
                                .add(const QuestionTabEvent.tabChange());
                          } else if (state.getQuestionModel!
                                  .sections![state.selectedTabIndex].criteria ==
                              'one') {
                            context
                                .read<QuestionTabBloc>()
                                .add(const QuestionTabEvent.tabChange());
                          } else {
                            context
                                .read<QuestionTabBloc>()
                                .add(const QuestionTabEvent.tabChange());
                          }
                        }
                      },
                      text: state.selectedTabIndex !=
                              state.getQuestionModel!.sections!.length - 1
                          ? 'Continue'
                          : 'Calculate price',
                    );
                  } else {
                    return const Center(
                      child: Text('Empty'),
                    );
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
