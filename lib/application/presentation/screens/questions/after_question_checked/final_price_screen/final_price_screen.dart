import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/final_price_screen/final_product_container.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/final_price_screen/final_product_price_details.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FinalPriceScreen extends StatelessWidget {
  const FinalPriceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const FinalProductContiner(),
            kHeight10,
            const FinalProductPriceDetaails(),
            ElevatedButtonLong(
              wdth: 200,
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.pickUpDetailScreen);
              },
              text: 'Continue to Details',
            ),
          ],
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
      child: Row(
        children: [
          Checkbox(
            value: isPrivacyPolicyAccepted,
            onChanged: (bool? value) {
              setState(() {
                isPrivacyPolicyAccepted = value ?? false;
              });
            },
          ),
          const SizedBox(width: 8),
          const Text(
              'By signing up I agree to the\nTerms of use and Privacy Policy.'),
        ],
      ),
    );
  }
}
