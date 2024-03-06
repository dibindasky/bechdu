import 'dart:developer';

import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/question.dart';
import 'package:beachdu/domain/model/get_question_model/section.dart';
import 'package:beachdu/domain/model/pickup_question_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridOptionSelectorTile extends StatefulWidget {
  const GridOptionSelectorTile({
    super.key,
    required this.question,
    required this.index,
    required this.func,
    required this.section,
  });
  final Question question;
  final bool index;
  final VoidCallback func;
  final Section section;

  @override
  State<GridOptionSelectorTile> createState() => _GridOptionSelectorTileState();
}

class _GridOptionSelectorTileState extends State<GridOptionSelectorTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.func();
        SelectedOption selectedOption = SelectedOption(
          heading: widget.section.heading,
          description: widget.question.description,
          type: widget.question.type,
          selectioType: 'one',
        );
        context.read<QuestionTabBloc>().add(QuestionTabEvent.markedQuestions(
              selectedOption: selectedOption,
            ));
        log('UI grid widget.question.type ${widget.question.type}');
        log('UI grid section.heading ${widget.section.heading}');
        log('UI grid  description ${widget.question.description}');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: widget.index ? kBluePrimary : knill,
            border: Border.all(color: kBluePrimary, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text(
                widget.question.description!,
                style: textHeadBold1.copyWith(
                  color: widget.index ? kWhite : kBluePrimary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
