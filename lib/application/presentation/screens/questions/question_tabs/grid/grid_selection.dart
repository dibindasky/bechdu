import 'package:beachdu/application/presentation/screens/questions/question_tabs/grid/grid_tile.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/section.dart';
import 'package:flutter/material.dart';

class GridOptionMaker extends StatelessWidget {
  const GridOptionMaker({super.key, required this.section});

  final Section section;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              '${section.description}',
              style: textHeadBoldBig,
            ),
            kHeight10,
            ListView.builder(
              padding: const EdgeInsets.all(0),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: section.options!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => GridOptionSelectorTile(
                question: section.options![index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
