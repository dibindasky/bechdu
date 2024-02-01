import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/questions/dynamic_tabs/question_anwer_sesstion/answer_session.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/product_preview.dart';
import 'package:beachdu/application/presentation/screens/questions/dynamic_tabs/widgets/tab_index_change_button.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionTabs extends StatelessWidget {
  const QuestionTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ProductPreviewQuestion(),
            QuestionScreenTabs(),
            kHeight20,
            QuestionTabAnswerSession(),
            TabIndexChangeButton(),
          ],
        ),
      ),
    );
  }
}

class QuestionScreenTabs extends StatelessWidget {
  const QuestionScreenTabs({
    super.key,
  });

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
