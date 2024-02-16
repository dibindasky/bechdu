import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/preview_product_screen/expansion_tile.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/widgets/top_image.dart';
import 'package:flutter/material.dart';

class ScreenProductPreview extends StatelessWidget {
  const ScreenProductPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        secondtabScreensNotifier.value = 1;
        secondtabScreensNotifier.notifyListeners();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      offset: const Offset(0, 1),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                  border: Border.all(color: kBlack),
                  borderRadius: kRadius10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TopImage(fromWhere: FromWhere.recalculateWithAmount),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: testQuestionMap.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        List<String> names = [
                          'Divice',
                          'Display',
                          'Functionality',
                          'Accosories',
                          'Condition'
                        ];
                        return ExpansionTileCustom(names: names[index]);
                      },
                    ),
                  ],
                ),
              ),
              kHeight40,
              kHeight40,
              CustomButton(
                text: 'Continue',
                onPressed: () {
                  secondtabScreensNotifier.value = 3;
                  secondtabScreensNotifier.notifyListeners();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
