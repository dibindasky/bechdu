import 'dart:developer';

import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/question.dart';
import 'package:beachdu/domain/model/picke_question_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridOptionSelectorTile extends StatefulWidget {
  const GridOptionSelectorTile({super.key, required this.question});

  final Question question;

  @override
  State<GridOptionSelectorTile> createState() => _GridOptionSelectorTileState();
}

class _GridOptionSelectorTileState extends State<GridOptionSelectorTile> {
  bool isSelected = false;

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
        log('Grid tile selectedOption$selectedOption');
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isSelected ? kBluePrimary : knill,
            border: Border.all(color: kBluePrimary, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text(
                widget.question.description!,
                style: textHeadBold1.copyWith(
                    color: isSelected ? kWhite : kBluePrimary),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
