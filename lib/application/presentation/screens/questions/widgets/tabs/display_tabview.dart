import 'package:beachdu/application/presentation/screens/questions/dynamic_tabs/questions_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/grid_tile_question.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DisplayTabView extends StatelessWidget {
  const DisplayTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Select screen/body defects that are applicable!',
          style: textHeadBoldBig,
        ),
        kHeight10,
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 1.3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return const GridTileQuestion();
            },
          ),
        ),
        SizedBox(
          width: sWidth * 0.50,
          child: ElevatedButtonLong(
            onPressed: () {},
            text: 'Continue',
            color: kGreenPrimary,
          ),
        ),
      ],
    );
  }
}
