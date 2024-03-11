import 'dart:developer';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/question.dart';
import 'package:beachdu/domain/model/get_question_model/section.dart';
import 'package:beachdu/domain/model/pickup_question_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class YesOrNoTile extends StatefulWidget {
  const YesOrNoTile({
    super.key,
    required this.question,
    required this.section,
  });

  final Question question;
  final Section section;

  @override
  State<YesOrNoTile> createState() => _YesOrNoTileState();
}

class _YesOrNoTileState extends State<YesOrNoTile> {
  bool? selected;
  @override
  void didUpdateWidget(YesOrNoTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    //Reset the selection when a new question is provided
    if (widget.question != oldWidget.question) {
      setState(() {
        selected = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionTabBloc, QuestionTabState>(
      builder: (context, stateQuestion) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            borderRadius: kRadius5,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.question.description!,
                    style: textHeadBold1,
                  ),
                  kHeight10,
                  Row(
                    children: [
                      yesOrNoButton(yesOrNo: true),
                      kWidth20,
                      yesOrNoButton(yesOrNo: false),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget yesOrNoButton({required bool yesOrNo}) {
    return BlocBuilder<QuestionTabBloc, QuestionTabState>(
      builder: (context, stat) {
        return GestureDetector(
          onTap: () {
            // If the button is already selected, deselect it
            if (selected == yesOrNo) {
              SelectedOption selectedOption = SelectedOption(
                heading: widget.section.heading,
                description: widget.question.description,
                value: yesOrNo,
                type: widget.question.type,
              );
              context
                  .read<QuestionTabBloc>()
                  .add(QuestionTabEvent.markedQuestions(
                    selectedOption: selectedOption,
                  ));
              log('UI  yesOrNo');
              log('UI widget.question.type ${widget.question.type}');
              setState(() {
                selected = null;
              });
            } else {
              log('Yes or no ');
              SelectedOption selectedOption = SelectedOption(
                heading: widget.section.heading,
                description: widget.question.description,
                value: yesOrNo,
                type: widget.question.type,
              );
              log('Yes or no tape heading ${widget.section.heading}');
              context
                  .read<QuestionTabBloc>()
                  .add(QuestionTabEvent.markedQuestions(
                    selectedOption: selectedOption,
                  ));
              setState(() {
                selected = yesOrNo;
              });
              log('yes or no tile selectedOption ${selectedOption.description}');
            }
          },
          child: ClipRRect(
            borderRadius: kRadius15,
            child: ColoredBox(
              color: selected == true && yesOrNo
                  ? kGreenPrimary
                  : selected == false && !yesOrNo
                      ? kRed
                      : yesOrNo
                          ? kGreenLight.withOpacity(0.7)
                          : kRedLight.withOpacity(0.7),
              child: Padding(
                padding: selected == true && yesOrNo
                    ? const EdgeInsets.symmetric(horizontal: 12, vertical: 2)
                    : selected == false && !yesOrNo
                        ? const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 2)
                        : yesOrNo
                            ? const EdgeInsets.symmetric(horizontal: 10)
                            : const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      selected == true && yesOrNo
                          ? Icons.check
                          : selected == false && !yesOrNo
                              ? Icons.check
                              : Icons.clear_outlined,
                      size: sWidth * 0.03,
                    ),
                    kWidth5,
                    Text(
                      yesOrNo ? 'Yes' : 'No',
                      style: textHeadMedium1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
