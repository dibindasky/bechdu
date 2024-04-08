import 'dart:convert';
import 'dart:typed_data';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/question.dart';
import 'package:beachdu/domain/model/pickup_question_model/selected_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridTileQuestion extends StatefulWidget {
  const GridTileQuestion({
    super.key,
    required this.option,
    required this.onTap,
    required this.selected,
  });

  final Question option;
  final VoidCallback onTap;
  final bool selected;

  @override
  State<GridTileQuestion> createState() => _GridTileQuestionState();
}

class _GridTileQuestionState extends State<GridTileQuestion> {
  @override
  void didUpdateWidget(GridTileQuestion oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.option != oldWidget.option) {
      final data = widget.option.image;
      String base64String = data ?? dummyImage;
      base64String =
          base64String.replaceFirst(RegExp(r'data:image/[^;]+;base64,'), '');
      imageBytes = base64Decode(base64String);
      setState(() {
        // selected = false;
      });
    }
  }

  Uint8List? imageBytes;

  @override
  void initState() {
    super.initState();
    final data = widget.option.image;
    String base64String = data ?? dummyImage;
    base64String =
        base64String.replaceFirst(RegExp(r'data:image/[^;]+;base64,'), '');
    imageBytes = base64Decode(base64String);
  }

  @override
  void deactivate() {
    super.deactivate();
    imageBytes = null;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionTabBloc, QuestionTabState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context.read<QuestionTabBloc>().add(
                  QuestionTabEvent.markAnswer(
                    selectedOption: SelectedOption(
                      description: widget.option.description,
                      type: widget.option.type,
                      value: null,
                      heading: state.sections![state.selectedTabIndex].heading,
                    ),
                  ),
                );
            widget.onTap();
          },
          child: ClipRRect(
            borderRadius: kRadius10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: widget.selected ? kGreenPrimary : kBlack,
                      width: widget.selected ? 4 : 1),
                  borderRadius: kRadius10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AspectRatio(
                      aspectRatio: 1.4,
                      child: FittedBox(
                        child: Image.memory(imageBytes!),
                      ),
                    ),
                    Text(
                      widget.option.description ?? '',
                      style: textHeadBold1.copyWith(
                        color: widget.selected ? kGreenPrimary : kBlack,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
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
