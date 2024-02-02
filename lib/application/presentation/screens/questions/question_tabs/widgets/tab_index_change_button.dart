import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabIndexChangeButton extends StatelessWidget {
  const TabIndexChangeButton({
    super.key,
    this.height = 40,
    this.wdth,
    this.color = kBluePrimary,
    this.textStyle,
    this.padding,
    this.borderRadius,
  });
  final double? wdth;
  final double height;
  final Color color;
  final TextStyle? textStyle;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionTabBloc, QuestionTabState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            if (state.selectedTabIndex >= state.tabItems.length - 1) {
              secondtabScreensNotifier.value = 2;
              secondtabScreensNotifier.notifyListeners();
            } else {
              print('Added');
              print('${state.selectedTabIndex}');
              context
                  .read<QuestionTabBloc>()
                  .add(const QuestionTabEvent.tabChange());
            }
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(wdth ?? 220, height),
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? kRadius10,
            ),
          ),
          child: Text(
            'Continue',
            style: textHeadBold1.copyWith(color: kWhite),
          ),
        );
      },
    );
  }
}
