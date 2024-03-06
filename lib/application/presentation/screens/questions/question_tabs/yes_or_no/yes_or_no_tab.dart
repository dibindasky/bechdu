import 'package:beachdu/application/presentation/screens/questions/question_tabs/yes_or_no/yes_or_no_tile.dart';
import 'package:beachdu/domain/model/get_question_model/section.dart';
import 'package:flutter/material.dart';

class YesOrNoListMaker extends StatelessWidget {
  const YesOrNoListMaker({super.key, required this.section});

  final Section section;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              padding: const EdgeInsets.all(0),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: section.options!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return YesOrNoTile(
                  section: section,
                  question: section.options![index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
