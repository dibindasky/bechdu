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
    return ExpansionTile(
      trailing: const Icon(Icons.arrow_drop_down),
      expandedAlignment: Alignment.center,
      leading: const Icon(
        Icons.mobile_friendly_sharp,
        color: kGreenPrimary,
        size: 17,
      ),
      backgroundColor: klightwhite,
      maintainState: true,
      shape: const BeveledRectangleBorder(),
      title: Row(
        children: [
          Text(
            name,
            style: textHeadBold1,
          ),
          kWidth10,
          Text(
            'Excellent',
            style: textHeadInter.copyWith(
              color: kGreenPrimary,
              fontSize: sWidth * .03,
            ),
          ),
        ],
      ),
      children: const [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Are You able to attend call?'),
                Text('Charger'),
                Text('Cable'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.remove, size: 18, color: kRed),
                Icon(Icons.add, size: 18, color: kGreenPrimary),
                Icon(Icons.add, size: 18, color: kGreenPrimary),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
