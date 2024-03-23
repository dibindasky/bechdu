import 'dart:developer';
import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/presentation/screens/auth/login_screen/widget/bottom_sections.dart';
import 'package:beachdu/application/presentation/screens/auth/login_screen/widget/logo_to_mobile_no.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key, required this.loginWay});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final String initialCountry = 'NG';
  final LoginWay loginWay;
  final PhoneNumber phoneNumber = PhoneNumber(isoCode: 'IN');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LogoToMobileNumber(),
                InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {},
                  onInputValidated: (bool value) {},
                  selectorConfig: const SelectorConfig(
                    trailingSpace: false,
                    showFlags: false,
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    useBottomSheetSafeArea: true,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: const TextStyle(color: kBlack),
                  initialValue: phoneNumber,
                  textFieldController:
                      context.read<AuthBloc>().phoneNumberController,
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
                    log('On Saved: $number');
                  },
                ),
                BottomSections(loginWay: loginWay)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
