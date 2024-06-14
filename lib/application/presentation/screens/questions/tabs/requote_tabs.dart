import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequoteTabs extends StatefulWidget {
  const RequoteTabs({
    super.key,
  });

  @override
  State<RequoteTabs> createState() => _RequoteTabsState();
}

class _RequoteTabsState extends State<RequoteTabs> {
  late ScrollController controller;
  @override
  void initState() {
    controller = ScrollController(initialScrollOffset: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

// variable responsible for controller assigning to singlechildscroll and
// animation start from the second tab
  int check = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionTabBloc, QuestionTabState>(
      buildWhen: (previous, current) =>
          previous.selectedTabIndex != current.selectedTabIndex,
      builder: (context, state) {
        if (check != 0) {
          // auto scroll tab according to the tab index
          final onePotion = controller.position.maxScrollExtent /
              (state.sections?.length ?? 0);
          controller.animateTo(
              state.selectedTabIndex == 0
                  ? controller.position.minScrollExtent
                  : state.selectedTabIndex ==
                          ((state.sections?.length ?? 0) - 1)
                      ? controller.position.maxScrollExtent
                      : onePotion * state.selectedTabIndex,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut);
        }
        check++;
        return PopScope(
          canPop: state.selectedTabIndex == 0,
          onPopInvoked: (didPop) {
            if (state.selectedTabIndex > 0) {
              context.read<QuestionTabBloc>().add(QuestionTabEvent.goBackIndex(
                  index: state.selectedTabIndex - 1));
            }
          },
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  state.sections?.length ?? 0,
                  (index) => InkWell(
                    onTap: () {
                      context
                          .read<QuestionTabBloc>()
                          .add(QuestionTabEvent.goBackIndex(index: index));
                    },
                    child: ClipRRect(
                      borderRadius: kRadius15,
                      child: ColoredBox(
                        color: index == state.selectedTabIndex
                            ? kGreenPrimary
                            : knill,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 3),
                          child: Text(
                            state.sections![index].heading ?? '',
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
          ),
        );
      },
    );
  }
}
