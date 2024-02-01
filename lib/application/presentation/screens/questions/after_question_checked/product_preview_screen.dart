import 'package:beachdu/application/presentation/screens/navbar/bottombar.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/expansion_tile_Product_preview.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/final_price_screen/final_price_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/product_container.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ScreenProductPreview extends StatelessWidget {
  const ScreenProductPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: sHeight * .61,
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
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductContainer(),
                  ExpansionTileCustom(),
                ],
              ),
            ),
            ElevatedButtonLong(
              wdth: 200,
              onPressed: () {
                //Navigator.of(context).pushNamed(Routes.finalPriceScreen);
                body[1] = const FinalPriceScreen();
                // bottomBarNotifier.notifyListeners();
              },
              text: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}
