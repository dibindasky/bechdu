import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ExpansionTileCustom extends StatefulWidget {
  const ExpansionTileCustom({super.key});

  @override
  State<ExpansionTileCustom> createState() => _ExpansionTileCustomState();
}

class _ExpansionTileCustomState extends State<ExpansionTileCustom> {
  bool isExpanded = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;
  bool isExpanded5 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 20),
          child: Text(
            'Device Diagnosis',
            style: textHeadBoldBig,
          ),
        ),
        ExpansionTile(
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded = expanding;
            });
          },
          trailing: Icon(
            isExpanded ? Icons.arrow_downward_outlined : Icons.arrow_forward,
            size: 18,
          ),
          title: const Row(
            children: [
              Text('Device'),
              kWidth10,
              Text('Excellent'),
            ],
          ),
        ),
        ExpansionTile(
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded2 = expanding;
            });
          },
          trailing: Icon(
            isExpanded2 ? Icons.arrow_downward_outlined : Icons.arrow_forward,
            size: 18,
          ),
          title: const Row(
            children: [
              Text('Display'),
              kWidth10,
              Text('Excellent'),
            ],
          ),
        ),
        ExpansionTile(
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded3 = expanding;
            });
          },
          trailing: Icon(
            isExpanded3 ? Icons.arrow_downward_outlined : Icons.arrow_forward,
            size: 18,
          ),
          title: const Row(
            children: [
              Text('Functionality'),
              kWidth10,
              Text('Excellent'),
            ],
          ),
        ),
        ExpansionTile(
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded4 = expanding;
            });
          },
          trailing: Icon(
            isExpanded4 ? Icons.arrow_downward_outlined : Icons.arrow_forward,
            size: 18,
          ),
          title: const Row(
            children: [
              Text('Accessories'),
              kWidth10,
              Text('Excellent'),
            ],
          ),
        ),
        ExpansionTile(
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded5 = expanding;
            });
          },
          trailing: Icon(
            isExpanded5 ? Icons.arrow_downward_outlined : Icons.arrow_forward,
            size: 18,
          ),
          title: const Row(
            children: [
              Text('Condition'),
              kWidth10,
              Text('Excellent'),
            ],
          ),
        ),
      ],
    );
  }
}
