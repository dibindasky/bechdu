import 'package:beachdu/application/presentation/screens/auth/login_screen/widget/bottom_sections.dart';
import 'package:beachdu/application/presentation/screens/auth/login_screen/widget/logo_to_mobile_no.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/exit_app_daillogue/exit_app_dailogue.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController phoneController = TextEditingController();

  String initialCountry = 'NG';

  PhoneNumber number = PhoneNumber(isoCode: 'IN');

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
          bool shouldPop = await showConfirmationDialog(context);
          return shouldPop;
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LogoToMobileNumber(),
                InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    //print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    //print(value);
                  },
                  selectorConfig: const SelectorConfig(
                    trailingSpace: false,
                    showFlags: false,
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    useBottomSheetSafeArea: true,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: const TextStyle(color: kBlack),
                  initialValue: number,
                  textFieldController: phoneController,
                  formatInput: true,
                  keyboardType: const TextInputType.numberWithOptions(
                    signed: true,
                    decimal: true,
                  ),
                  inputBorder: OutlineInputBorder(
                    borderRadius: kRadius10,
                    borderSide: const BorderSide(
                      color: klightgrey,
                      width: 1.0,
                    ),
                  ),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
                const BottomSections()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
