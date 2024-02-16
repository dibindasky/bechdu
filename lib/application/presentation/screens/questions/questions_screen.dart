import 'dart:developer';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/question_tabs/question_anwer_sesstion/answer_session.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
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
            toolbarHeight: 40,
            automaticallyImplyLeading: false,
          ),
          body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TopImage(fromWhere: FromWhere.questionScreen),
                kHeight10,
                QuestionScreenTabs(),
                kHeight20,
                QuestionTabAnswerSession(),
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
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingAnimation(width: 30);
        }
        if (state.hasError) {
          return const Center(
            child: Text('Fetch  Error got'),
          );
        } else if (state.getQuestionModel != null ||
            state.getQuestionModel!.sections != null) {
          const Text('No question');
          log('queston tab lngth ${state.getQuestionModel!.sections!.length}');
        }
        return SizedBox(
          width: sWidth,
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                state.getQuestionModel!.sections!.length,
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
                        state.getQuestionModel!.sections![index].heading!,
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
