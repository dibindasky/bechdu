import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/final_price_screen/final_product_price_details.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/final_price_screen/privacy_policy_ckeckbox.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/widgets/top_image.dart';
import 'package:flutter/material.dart';

class FinalPriceScreen extends StatelessWidget {
  const FinalPriceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: WillPopScope(
        onWillPop: () async {
          secondtabScreensNotifier.value = 2;
          secondtabScreensNotifier.notifyListeners();
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 40,
            automaticallyImplyLeading: false,
          ),
          body: const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      TopImage(fromWhere: FromWhere.checkoutAndPickupScreen),
                      FinalProductPriceDetaails(),
                      kHeight40,
                      kHeight40,
                      PrivacyPolicyCheckbox(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
