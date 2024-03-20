import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequoteTabs extends StatelessWidget {
  const RequoteTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionTabBloc, QuestionTabState>(
      buildWhen: (previous, current) =>
          previous.selectedTabIndex != current.selectedTabIndex,
      builder: (context, state) {
        return PopScope(
          canPop: state.selectedTabIndex == 0,
          onPopInvoked: (didPop) {
            if (state.selectedTabIndex > 0) {
              context.read<QuestionTabBloc>().add(QuestionTabEvent.goBackIndex(
                  index: state.selectedTabIndex - 1));
            }
          },
          child: SizedBox(
            width: sWidth,
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    state.sections?.length ?? 0,
                    (index) => InkWell(
                      onTap: () {
                        // context
                        //     .read<QuestionTabBloc>()
                        //     .add(const QuestionTabEvent.resetTabSelection());
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
                                      : kBlack),
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
