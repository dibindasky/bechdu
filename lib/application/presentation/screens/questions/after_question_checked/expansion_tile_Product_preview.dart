import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ExpansionTileCustom extends StatelessWidget {
  const ExpansionTileCustom({
    super.key,
    required this.names,
  });
  final String names;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      maintainState: true,
      shape: const BeveledRectangleBorder(),
      title: Row(
        children: [
          Text(names),
          kWidth10,
          const Text('Excellent'),
        ],
      ),
      children: const [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Box'),
            Text('Charger'),
            Text('Cable'),
          ],
        ),
      ],
    );
  }
}
