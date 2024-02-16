import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class MyOrderExpansionTile extends StatefulWidget {
  const MyOrderExpansionTile({
    super.key,
  });

  @override
  State<MyOrderExpansionTile> createState() => _MyOrderExpansionTileState();
}

class _MyOrderExpansionTileState extends State<MyOrderExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: kWhite, borderRadius: kRadius10, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ]),
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Heading',
                    style: textHeadMedium1,
                  ),
                  Text(
                    '₹ 13,999',
                    style: textHeadRegular1,
                  ),
                ],
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: kRadius5,
                child: ColoredBox(
                  color: kRedLight.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: Text(
                      'Pickup Pending',
                      style: textHeadRegular1.copyWith(color: kRed),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Text('Pickup Partner'),
          Text(
            'Mukesh Sharma',
            style: textHeadBold1,
          ),
          const CircleAvatar(
            backgroundColor: kGreenPrimary,
            child: Icon(
              Icons.edit,
              color: kWhite,
            ),
          ),
        ],
      ),
    );
  }
}
