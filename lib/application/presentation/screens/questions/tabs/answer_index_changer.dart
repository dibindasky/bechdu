import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/status_colored_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnswerIndexChanger extends StatelessWidget {
  const AnswerIndexChanger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth20,
        const Expanded(
          child: StatusColoredBox(
            // order id need to pass for cancelation

            text: 'Cancel',
            color: kRed,
            fontWeight: FontWeight.w700,
            verticalPadding: 10,
          ),
        ),
        kWidth20,
        Expanded(
          child: BlocConsumer<QuestionTabBloc, QuestionTabState>(
            listener: (context, state) {},
            builder: (context, state) {
              return StatusColoredBox(
                onTap: () {
                  context.read<QuestionTabBloc>().add(
                      QuestionTabEvent.changeIndex(
                          index: state.selectedTabIndex + 1));
                },
                text: 'Continue',
                color: kGreenPrimary,
                fontWeight: FontWeight.w700,
                verticalPadding: 10,
              );
            },
          ),
        ),
        kWidth20
      ],
    );
  }
}
