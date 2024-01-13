import 'package:beachdu/application/presentation/screens/questions/questions_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/grid_tile_question.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FunctionalityTabView extends StatelessWidget {
  const FunctionalityTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Device Functionality & problems!',
            style: textHeadBoldBig,
          ),
        ),
        kHeight10,
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 1.41,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return const GridTileQuestion();
            },
          ),
        ),
        SizedBox(
          width: sWidth * 0.50,
          child: ElevatedButtonLong(
            onPressed: () {
              tabController.index++;
              questionsIndexNotifier.value++;
              questionsIndexNotifier.notifyListeners();
            },
            text: 'Continue',
            color: kGreenPrimary,
          ),
        )
      ],
    );
  }
}