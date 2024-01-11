import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ConditionTabView extends StatefulWidget {
  const ConditionTabView({super.key});

  @override
  State<ConditionTabView> createState() => _ConditionTabViewState();
}

class _ConditionTabViewState extends State<ConditionTabView> {
  List<String> old = ['0-3 Months', '3-6 Months', '6-11 Months', '6-11 Months'];
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'How Old Is Your Mobile ?',
          style: textHeadBold1.copyWith(fontSize: sWidth * 0.056),
          textAlign: TextAlign.center,
        ),
        kHeight10,
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => setState(() {
                  selectedIndex = index;
                }),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: selectedIndex == index ? kBluePrimary : knill,
                        border: Border.all(color: kBluePrimary, width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Center(
                        child: Text(
                          old[index],
                          style: textHeadBold1.copyWith(
                              color: selectedIndex == index
                                  ? kWhite
                                  : kBluePrimary),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: sWidth * 0.50,
          child: ElevatedButtonLong(
            onPressed: () {
              Navigator.pushNamed(context, Routes.produtPreview);
            },
            text: 'Continue',
            color: kGreenPrimary,
          ),
        )
      ],
    );
  }
}
