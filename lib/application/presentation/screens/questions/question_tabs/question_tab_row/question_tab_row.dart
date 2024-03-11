import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionScreenTabs extends StatelessWidget {
  const QuestionScreenTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionTabBloc, QuestionTabState>(
      builder: (context, state) {
        return SizedBox(
          width: sWidth,
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                state.getQuestionModel!.sections!.length,
                (index) => InkWell(
                  onTap: () {
                    if (state.selectedTabIndex < index) {
                      context
                          .read<QuestionTabBloc>()
                          .add(const QuestionTabEvent.resetTabSelection());
                      context
                          .read<QuestionTabBloc>()
                          .add(QuestionTabEvent.tabMinus(index: index));
                    }
                  },
                  child: ClipRRect(
                    borderRadius: kRadius15,
                    child: ColoredBox(
                      color: index == state.selectedTabIndex
                          ? kGreenPrimary
                          : knill,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 3,
                        ),
                        child: Text(
                          state.getQuestionModel!.sections![index].heading!,
                          style: textHeadSemiBold1.copyWith(
                            color: index == state.selectedTabIndex
                                ? kWhite
                                : kBlack,
                          ),
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
