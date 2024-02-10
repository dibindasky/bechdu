import 'package:beachdu/application/presentation/screens/questions/question_tabs/yes_or_no/yes_or_no_tile.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class YesOrNoListMaker extends StatelessWidget {
  const YesOrNoListMaker({super.key, required this.map});

  final Map<String, dynamic> map;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              padding: const EdgeInsets.all(0),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: map['data'].length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return YesOrNoTile(map: map['data'][index]);
              },
            ),
            kHeight30,
          ],
        ),
      ),
    );
  }
}
