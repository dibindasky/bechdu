import 'dart:developer';

import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/question.dart';
import 'package:beachdu/domain/model/picke_question_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridTileQuestion extends StatefulWidget {
  const GridTileQuestion({super.key, required this.question});

  final Question question;

  @override
  State<GridTileQuestion> createState() => _GridTileQuestionState();
}

class _GridTileQuestionState extends State<GridTileQuestion> {
  bool selected = false;
  @override
  void didUpdateWidget(GridTileQuestion oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Reset the selection when a new question is provided
    if (widget.question != oldWidget.question) {
      setState(() {
        selected = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SelectedOption selectedOption = SelectedOption(
          description: widget.question.description,
          type: widget.question.type,
        );
        context.read<QuestionTabBloc>().add(QuestionTabEvent.markedQuestions(
              selectedOption: selectedOption,
            ));
        log('Image tile selectedOption$selectedOption');
        setState(() {
          // change it to block now auto selection bug
          selected = !selected;
        });
      },
      child: ClipRRect(
        borderRadius: kRadius10,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: selected ? kGreenPrimary : kBlack,
              width: selected ? 3 : 1,
            ),
            borderRadius: kRadius10,
          ),
          child: ColoredBox(
            color: selected ? kGreenLight.withOpacity(0.3) : kWhite,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: FittedBox(
                      child: Image.asset(imageDiffectedPhone),
                    ),
                  ),
                  Text(
                    widget.question.description!,
                    style: textHeadBold1.copyWith(fontSize: sWidth * .026),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
