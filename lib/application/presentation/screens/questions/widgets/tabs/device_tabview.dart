import 'package:beachdu/application/presentation/screens/questions/questions_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DeviceTabView extends StatelessWidget {
  const DeviceTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return const DeviceQuestionTile();
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

class DeviceQuestionTile extends StatefulWidget {
  const DeviceQuestionTile({
    super.key,
    this.text,
  });

  final String? text;

  @override
  State<DeviceQuestionTile> createState() => _DeviceQuestionTileState();
}

class _DeviceQuestionTileState extends State<DeviceQuestionTile> {
  bool? selected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: kRadius5,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.text ?? 'Are You Able to make and receive calls ?',
                style: textHeadBold1,
              ),
              kHeight10,
              Row(
                children: [
                  yesOrNoButton(yesOrNo: true),
                  kWidth20,
                  yesOrNoButton(yesOrNo: false),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget yesOrNoButton({required bool yesOrNo}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = yesOrNo ? true : false;
        });
      },
      child: ClipRRect(
        borderRadius: kRadius15,
        child: ColoredBox(
          color: selected == true && yesOrNo
              ? kGreenPrimary
              : selected == false && !yesOrNo
                  ? kRed
                  : yesOrNo
                      ? kGreenLight.withOpacity(0.5)
                      : kRedLight.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            child: Row(
              children: [
                Icon(
                  yesOrNo ? Icons.check : Icons.clear_outlined,
                  size: sWidth * 0.03,
                ),
                kWidth5,
                Text(
                  yesOrNo ? 'Yes' : 'No',
                  style: textHeadMedium1,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
