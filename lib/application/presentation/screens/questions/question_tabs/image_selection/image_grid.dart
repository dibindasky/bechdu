import 'package:beachdu/application/presentation/screens/questions/question_tabs/image_selection/image_selection.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/section.dart';
import 'package:flutter/material.dart';

class ImageGridMaker extends StatelessWidget {
  const ImageGridMaker({super.key, required this.section});

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
            kHeight20,
            GridView.builder(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              itemCount: section.options!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio:
                    section.options!.length <= 4 ? 1 / 1.2 : 1 / 1.5,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: section.options!.length <= 4 ? 2 : 3,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GridTileQuestion(
                  question: section.options![index],
                  section: section,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
