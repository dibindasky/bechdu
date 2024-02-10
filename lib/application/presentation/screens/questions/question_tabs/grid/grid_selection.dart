import 'package:beachdu/application/presentation/screens/questions/question_tabs/grid/grid_tile.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class GridOptionMaker extends StatelessWidget {
  const GridOptionMaker({super.key, required this.map});

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
              itemBuilder: (context, index) => GridOptionSelectorTile(
                map: map['data'][index] as Map<String, dynamic>,
              ),
            ),
            kHeight30,
          ],
        ),
      ),
    );
  }
}
