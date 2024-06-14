import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/final_price_screen/final_product_price_details.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/url_laucher.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:beachdu/application/presentation/widgets/top_image.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:flutter/gestures.dart';
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

class PrivacyPolicyCheckbox extends StatefulWidget {
  const PrivacyPolicyCheckbox({super.key});

  @override
  _PrivacyPolicyCheckboxState createState() => _PrivacyPolicyCheckboxState();
}

class _PrivacyPolicyCheckboxState extends State<PrivacyPolicyCheckbox> {
  bool isPrivacyPolicyAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(
                activeColor: kGreenPrimary,
                value: isPrivacyPolicyAccepted,
                onChanged: (value) {
                  setState(() {
                    isPrivacyPolicyAccepted = value ?? false;
                  });
                },
              ),
              kWidth10,
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Please confirm that you agree to our ',
                        style: textHeadInter,
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: textHeadInter.copyWith(color: kBluePrimary),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchURL(ApiEndPoints.privacyPolicy);
                          },
                      ),
                      TextSpan(
                        text: ' and ',
                        style: textHeadInter,
                      ),
                      TextSpan(
                        text: 'Terms of use',
                        style: textHeadInter.copyWith(color: kBluePrimary),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchURL(ApiEndPoints.termsAndConditions);
                          },
                      ),
                      TextSpan(
                        text:
                            '. By placing this order, you accept our privacy terms.',
                        style: textHeadInter,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          kHeight30,
          ElevatedButtonLong(
            wdth: sWidth * .6,
            onPressed: () {
              if (isPrivacyPolicyAccepted) {
                secondtabScreensNotifier.value = 4;
                secondtabScreensNotifier.notifyListeners();
              } else {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    iconPadding: const EdgeInsets.all(0),
                    backgroundColor: kWhiteextra,
                    title: Text(
                      'Please Accept Privacy Policy and Terms of Use',
                      style: textHeadBold1,
                    ),
                    actions: [
                      ClipRRect(
                        borderRadius: kRadius10,
                        child: ColoredBox(
                          color: kBluePrimary,
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Ok',
                                style: textHeadInter.copyWith(color: kWhite),
                              )),
                        ),
                      )
                    ],
                  ),
                );
              }
            },
            text: 'Continue to Details',
          ),
        ],
      ),
    );
  }
}
