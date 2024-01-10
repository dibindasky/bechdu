import 'package:beachdu/application/presentation/screens/questions/widgets/product_preview.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/tabbar_questions.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/tabs/accessories_tabview.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/tabs/condition_tabview.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/tabs/device_tabview.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/tabs/display_tabview.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/tabs/functionality_tabview.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenQuestions extends StatefulWidget {
  const ScreenQuestions({super.key});

  @override
  State<ScreenQuestions> createState() => _ScreenQuestionsState();
}

late TabController tabControllerQuestion;

class _ScreenQuestionsState extends State<ScreenQuestions>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    tabControllerQuestion = TabController(length: 5, vsync: this);
    super.initState();
  }

  final List<Widget> tabChildren = [
    const DeviceTabView(),
    const DisplayTabView(),
    const FunctionalityTabView(),
    const AccessoriesTabView(),
    const ConditionTabView()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: const ProductPreviewQuestion(),
          leadingWidth: sWidth,
          toolbarHeight: sWidth * 0.40,
          bottom: PreferredSize(
            preferredSize:
                Size(MediaQuery.of(context).size.width, sWidth * 0.10),
            child: TabBarQuestion(tabController: tabControllerQuestion),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            // child: tabChildren[tabController.index],
            child: TabBarView(children: tabChildren),
          ),
        ),
      ),
    );
  }
}
