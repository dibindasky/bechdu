import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/question_anwer_sesstion/answer_session.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/widget/question_top_image.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/widgets/top_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionTabs extends StatelessWidget {
  const QuestionTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        secondtabScreensNotifier.value = 0;
        secondtabScreensNotifier.notifyListeners();
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const TopImage(fromWhere: FromWhere.questionScreen),
                kHeight10,
                const QuestionScreenTabs(),
                kHeight20,
                const QuestionTabAnswerSession(),
                BlocBuilder<QuestionTabBloc, QuestionTabState>(
                  builder: (context, state) {
                    return CustomButton(
                      onPressed: () {
                        if (state.selectedTabIndex >=
                            state.tabItems.length - 1) {
                          secondtabScreensNotifier.value = 2;
                          secondtabScreensNotifier.notifyListeners();
                          context
                              .read<QuestionTabBloc>()
                              .add(const QuestionTabEvent.resetTabSelection());
                        } else {
                          context
                              .read<QuestionTabBloc>()
                              .add(const QuestionTabEvent.tabChange());
                        }
                      },
                      text: state.selectedTabIndex != state.tabItems.length - 1
                          ? 'Continue'
                          : 'Calculate price',
                    );
                  },
                ),
                kHeight10
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionScreenTabs extends StatelessWidget {
  const QuestionScreenTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionTabBloc, QuestionTabState>(
      buildWhen: (previous, current) =>
          previous.selectedTabIndex != current.selectedTabIndex,
      builder: (context, state) {
        return SizedBox(
          width: sWidth,
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                state.tabItems.length,
                (index) => ClipRRect(
                  borderRadius: kRadius15,
                  child: ColoredBox(
                    color:
                        index == state.selectedTabIndex ? kGreenPrimary : knill,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      child: Text(
                        state.tabItems[index]['sectionHeading'] as String,
                        style: textHeadSemiBold1.copyWith(
                          color:
                              index == state.selectedTabIndex ? kWhite : kBlack,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
