import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/answer_index_changer.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/requote_tabs.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/requote_answer_session.dart';
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
        context
            .read<QuestionTabBloc>()
            .add(const QuestionTabEvent.resetTabSelection());
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 40,
            automaticallyImplyLeading: false,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BlocBuilder<QuestionTabBloc, QuestionTabState>(
              builder: (context, questionTabBloc) {
                if (questionTabBloc.isLoading) {
                  return LoadingAnimation(width: 50);
                } else if (questionTabBloc.product == null) {
                  return const Center(
                    child: CircularProgressIndicator(color: kGreenPrimary),
                  );
                }
                return const Column(
                  children: [
                    TopImage(fromWhere: FromWhere.questionScreen),
                    kHeight10,
                    RequoteTabs(),
                    kHeight20,
                    RequoteAnswerSessio(),
                    kHeight5,
                    AnswerIndexChanger(),
                    kHeight20,
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
