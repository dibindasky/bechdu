import 'package:beachdu/application/presentation/screens/questions/widgets/product_preview.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/tabs/accessories_tabview.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/tabs/condition_tabview.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/tabs/device_tabview.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/tabs/display_tabview.dart';
import 'package:beachdu/application/presentation/screens/questions/widgets/tabs/functionality_tabview.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> questionsIndexNotifier = ValueNotifier(0);

class ScreenQuestions extends StatefulWidget {
  const ScreenQuestions({super.key});

  @override
  State<ScreenQuestions> createState() => _ScreenQuestionsState();
}

late TabController tabController;

class _ScreenQuestionsState extends State<ScreenQuestions>
    with TickerProviderStateMixin {
  final List<Widget> tabChildren = [
    const DeviceTabView(),
    const DisplayTabView(),
    const FunctionalityTabView(),
    const AccessoriesTabView(),
    const ConditionTabView()
  ];
  late AnimationController _animationControllerFade;
  late Animation<double> _animationFade;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    _animationControllerFade = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animationFade =
        Tween<double>(begin: 0, end: 1).animate(_animationControllerFade);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    _animationControllerFade.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ProductPreviewQuestion(),
        leadingWidth: sWidth,
        toolbarHeight: sWidth * 0.40,
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, sWidth * 0.10),
          child: ValueListenableBuilder(
            valueListenable: questionsIndexNotifier,
            builder: (context, value, _) {
              return TabBar(
                tabAlignment: TabAlignment.center,
                automaticIndicatorColorAdjustment: false,
                controller: tabController,
                dividerHeight: 0,
                labelStyle: textHeadBold1.copyWith(fontSize: sWidth < 400 ?  sWidth * 0.031 :  sWidth * 0.024),
                indicator: BoxDecoration(
                    color: kGreenPrimary, borderRadius: kRadius15),
                isScrollable: false,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(10),
                onTap: (value) {
                  questionsIndexNotifier.value = value;
                  questionsIndexNotifier.notifyListeners();
                  setState(() {});
                },
                overlayColor: const MaterialStatePropertyAll(knill),
                tabs: const [
                  Tab(text: 'Device'),
                  Tab(text: 'Display'),
                  Tab(text: 'Functionality'),
                  Tab(text: 'Accessories'),
                  Tab(text: 'Condition'),
                ],
              );
            },
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ValueListenableBuilder(
              valueListenable: questionsIndexNotifier,
              builder: (context, value, _) {
                return tabChildren[tabController.index];
              }),
        ),
      ),
    );
  }
}
