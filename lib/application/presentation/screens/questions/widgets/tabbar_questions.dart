import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class TabBarQuestion extends StatelessWidget {
  const TabBarQuestion({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        tabAlignment: TabAlignment.center,
        automaticIndicatorColorAdjustment: false,
        // controller: tabController,
        dividerHeight: 0,
        labelStyle: textHeadBold1.copyWith(fontSize: sWidth * 0.031),
        indicator: BoxDecoration(
            color: kGreenPrimary, borderRadius: kRadius15),
        isScrollable: false,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.all(10),
        onTap: (value) {},
        overlayColor: const MaterialStatePropertyAll(knill),
        tabs: const [
          Tab(text: 'Device'),
          Tab(text: 'Display'),
          Tab(text: 'Functionality'),
          Tab(text: 'Accessories'),
          Tab(text: 'Condition'),
        ]);
  }
}
