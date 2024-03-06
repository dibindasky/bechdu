import 'dart:convert';
import 'dart:developer';

import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/question.dart';
import 'package:beachdu/domain/model/get_question_model/section.dart';
import 'package:beachdu/domain/model/pickup_question_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridTileQuestion extends StatefulWidget {
  const GridTileQuestion({
    super.key,
    required this.question,
    required this.section,
  });

  final Question question;
  final Section section;

  @override
  State<GridTileQuestion> createState() => _GridTileQuestionState();
}

class _GridTileQuestionState extends State<GridTileQuestion> {
  bool selected = false;
  @override
  void didUpdateWidget(GridTileQuestion oldWidget) {
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
    final data = widget.question.image;
    String base64String = data ?? dummyImage;
    base64String =
        base64String.replaceFirst(RegExp(r'data:image/[^;]+;base64,'), '');
    return GestureDetector(
      onTap: () {
        SelectedOption selectedOption = SelectedOption(
          heading: widget.section.heading,
          description: widget.question.description,
          type: widget.question.type,
        );
        context.read<QuestionTabBloc>().add(
              QuestionTabEvent.markedQuestions(
                selectedOption: selectedOption,
              ),
            );
        log('UI image section.heading ${widget.section.heading}');
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: selected ? kGreenPrimary : kBlack,
            width: 1.7,
          ),
          borderRadius: kRadius5,
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
                  child: SizedBox(
                      height: 70,
                      width: 20,
                      child: Image.memory(base64.decode(base64String))),
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
    );
  }
}
