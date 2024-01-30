import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class YesOrNoTile extends StatefulWidget {
  const YesOrNoTile({super.key, required this.map});

  final Map<String, dynamic> map;

  @override
  State<YesOrNoTile> createState() => _YesOrNoTileState();
}

class _YesOrNoTileState extends State<YesOrNoTile> {
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
                widget.map['description'],
                style: textHeadBold1,
              ),
              kHeight10,
              Row(
                children: [
                  yesOrNoButton(yesOrNo: true),
                  kWidth20,
                  yesOrNoButton(yesOrNo: false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget yesOrNoButton({required bool yesOrNo}) {
    return InkWell(
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
