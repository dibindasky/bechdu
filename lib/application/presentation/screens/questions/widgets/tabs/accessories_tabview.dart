import 'package:beachdu/application/presentation/screens/questions/questions_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AccessoriesTabView extends StatelessWidget {
  const AccessoriesTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Mention The Accessories you Have With The mobile!',
          style: textHeadBold1.copyWith(fontSize: sWidth * 0.056),
          textAlign: TextAlign.center,
        ),
        kHeight20,
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20, crossAxisSpacing: 20, crossAxisCount: 2),
              itemBuilder: (context, index) {
                return const GridTileAccessoriesQuestion();
              },
            ),
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

class GridTileAccessoriesQuestion extends StatefulWidget {
  const GridTileAccessoriesQuestion({
    super.key,
  });

  @override
  State<GridTileAccessoriesQuestion> createState() =>
      _GridTileAccessoriesQuestionState();
}

class _GridTileAccessoriesQuestionState
    extends State<GridTileAccessoriesQuestion> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: ClipRRect(
        borderRadius: kRadius5,
        child: ColoredBox(
          color: selected ? kGreenPrimary : kBluePrimary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.receipt_long,
                size: sWidth * 0.10,
                color: selected ? kBluePrimary : kGreenPrimary,
              ),
              Text(
                'Charger',
                style: textHeadBold1.copyWith(
                    color: kWhite, fontSize: sWidth * 0.05),
              )
            ],
          ),
        ),
      ),
    );
  }
}
