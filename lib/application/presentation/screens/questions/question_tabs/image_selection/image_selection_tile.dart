import 'dart:convert';
import 'dart:developer';

import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/question.dart';
import 'package:beachdu/domain/model/get_question_model/section.dart';
import 'package:beachdu/domain/model/pickup_question_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
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
    if (widget.question != oldWidget.question) {
      final data = widget.question.image;
      String base64String = data ?? dummyImage;
      base64String =
          base64String.replaceFirst(RegExp(r'data:image/[^;]+;base64,'), '');
      imageBytes = base64Decode(base64String);
      setState(() {
        selected = false;
      });
    }
  }

  Uint8List? imageBytes;

  @override
  void initState() {
    super.initState();
    final data = widget.question.image;
    String base64String = data ?? dummyImage;
    base64String =
        base64String.replaceFirst(RegExp(r'data:image/[^;]+;base64,'), '');
    imageBytes = base64Decode(base64String);
  }

  @override
  void deactivate() {
    super.deactivate();
    imageBytes = null; // Clear image data when widget is removed
  }

  @override
  Widget build(BuildContext context) {
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
            width: selected ? 4 : 1.2,
          ),
          borderRadius: kRadius5,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: imageBytes != null
                    ? Image.memory(imageBytes!)
                    : const SizedBox(
                        child: Center(child: CircularProgressIndicator()),
                      ),
              ),
              FittedBox(
                child: Text(
                  widget.question.description ?? 'No tittle',
                  style: textHeadBold1.copyWith(
                    fontSize: sWidth * .036,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
