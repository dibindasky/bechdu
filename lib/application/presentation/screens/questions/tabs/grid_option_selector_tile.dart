import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridOptionSelectorTile extends StatelessWidget {
  const GridOptionSelectorTile(
      {super.key,
      required this.option,
      required this.onTap,
      required this.selected});

  final Question option;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionTabBloc, QuestionTabState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            onTap();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: selected ? kBluePrimary : knill,
                  border: Border.all(color: kBluePrimary, width: 2)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Center(
                  child: Text(
                    option.description ?? '',
                    style: textHeadBold1.copyWith(
                        color: selected ? kWhite : kBluePrimary),
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
