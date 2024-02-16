import 'dart:developer';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/question.dart';
import 'package:beachdu/domain/model/picke_question_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class YesOrNoTile extends StatefulWidget {
  const YesOrNoTile({super.key, required this.question});

  final Question question;

  @override
  State<YesOrNoTile> createState() => _YesOrNoTileState();
}

class _YesOrNoTileState extends State<YesOrNoTile> {
  bool? selected;

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
                      yesOrNoButton(
                        yesOrNo: true,
                      ),
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
            context
                .read<QuestionTabBloc>()
                .add(QuestionTabEvent.markedQuestions(
                  selectedOption: SelectedOption(
                    heading: stat.getQuestionModel!
                        .sections![stat.selectedTabIndex].heading,
                    description: stat.getQuestionModel!
                        .sections![stat.selectedTabIndex].description,
                    type: selected == yesOrNo ? 'add' : 'sub',
                    value: selected,
                  ),
                ));
            log('Ui selectedQuestions ${stat.selectedOption}');
            setState(() {
              selected = yesOrNo ? true : false;
            });
          },
          child: ClipRRect(
            borderRadius: kRadius15,
            child: ColoredBox(
              color: selected == true && yesOrNo
                  ? kGreenPrimary
                  : selected == false && !yesOrNo
                      ? kRed
                      : yesOrNo
                          ? kGreenLight.withOpacity(0.5)
                          : kRedLight.withOpacity(0.5),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Row(
                  children: [
                    Icon(
                      yesOrNo ? Icons.check : Icons.clear_outlined,
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
