import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/home/best_selling_devices/best_selling.dart';
import 'package:beachdu/application/presentation/screens/home/home_screen.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/answer_index_changer.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/requote_tabs.dart';
import 'package:beachdu/application/presentation/screens/questions/tabs/requote_answer_session.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/application/presentation/widgets/top_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionTabs extends StatefulWidget {
  const QuestionTabs({super.key});

  @override
  State<QuestionTabs> createState() => _QuestionTabsState();
}

class _QuestionTabsState extends State<QuestionTabs> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (fromHome) {
          context.read<NavbarCubit>().changeNavigationIndex(0);
          setState(() {
            fromHome = false;
          });
        } else {
          secondtabScreensNotifier.value = 0;
          secondtabScreensNotifier.notifyListeners();
          brandSeriesProductValueNotifier.value = 2;
          brandSeriesProductValueNotifier.notifyListeners();
        }
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
                    child: Text('No products'),
                  );
                }
                return const Column(
                  children: [
                    TopImage(fromWhere: FromWhere.questionScreen),
                    kHeight20,
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
