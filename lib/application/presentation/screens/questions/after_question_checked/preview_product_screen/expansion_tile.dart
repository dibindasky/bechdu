import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ExpansionTileCustom extends StatelessWidget {
  const ExpansionTileCustom({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          trailing: const Icon(
            Icons.arrow_drop_down,
            color: kWhite,
          ),
          expandedAlignment: Alignment.center,
          leading: const Icon(
            Icons.mobile_friendly_sharp,
            color: kGreenPrimary,
            size: 17,
          ),
          backgroundColor: klightwhite,
          maintainState: true,
          shape: const BeveledRectangleBorder(),
          title: Text(
            name,
            style: textHeadBold1,
          ),
        ),
      ],
    );
  }
}
