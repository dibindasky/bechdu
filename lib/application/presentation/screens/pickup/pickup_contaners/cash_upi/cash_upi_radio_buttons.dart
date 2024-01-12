import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class MyRadioButtons extends StatefulWidget {
  const MyRadioButtons({super.key});

  @override
  _MyRadioButtonsState createState() => _MyRadioButtonsState();
}

class _MyRadioButtonsState extends State<MyRadioButtons> {
  String selectedRadio = '';

  void handleRadioValueChanged(String? value) {
    setState(() {
      selectedRadio = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: customRadioButton('Cash', 'Option 1')),
        kWidth10,
        Expanded(child: customRadioButton('UPI', 'Option 2')),
      ],
    );
  }

  Widget customRadioButton(String label, String value) {
    return InkWell(
      onTap: () {
        handleRadioValueChanged(value);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: textFieldBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Text(
              label,
              style: textHeadSemiBold1.copyWith(fontSize: sWidth * .034),
            ),
            const Spacer(),
            selectedRadio == value
                ? const CircleAvatar(
                    backgroundColor: kRadioButtnOuter,
                    radius: 10,
                    child: CircleAvatar(
                      backgroundColor: kGreenPrimary,
                      radius: 6,
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
