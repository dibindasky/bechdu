import 'package:beachdu/application/presentation/screens/questions/dynamic_tabs/widgets/tab_index_change_button.dart';
import 'package:beachdu/application/presentation/screens/questions/dynamic_tabs/yes_or_no/yes_or_no_tile.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: map['data'].length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return YesOrNoTile(map: map['data'][index]);
                },
              ),
            ),
            kHeight30,
            // const TabIndexChangeButton(),
            // kHeight30
          ],
        ),
      ),
    );
  }
}
