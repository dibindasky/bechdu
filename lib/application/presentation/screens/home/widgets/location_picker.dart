import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';

class LocationChooser extends StatelessWidget {
  const LocationChooser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.location_on_rounded,
            color: kBluePrimary,
          ),kWidth5,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Location',
                style: textHeadMedium1,
              ),
              DottedDashedLine(
                height: 1,
                width: sWidth * 0.8,
                axis: Axis.horizontal,
              )
            ],
          )
        ],
      ),
    );
  }
}
