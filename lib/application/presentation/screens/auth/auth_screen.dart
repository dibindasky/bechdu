import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/auth/widgets/custom_textfield_login.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ScreenAuth extends StatelessWidget {
  const ScreenAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(40),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 900, maxWidth: 400),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: sWidth * 0.50, child: Image.asset(beachdulogo)),
              kHeight50,
              CustomTextFormFieldLogin(
                controller: TextEditingController(),
                hintText: 'Email',
                prefixIcon: Icons.person,
              ),
              kHeight30,
              CustomTextFormFieldLogin(
                controller: TextEditingController(),
                hintText: 'Password',
                prefixIcon: Icons.lock,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password',
                    style: textHeadRegular1.copyWith(
                      color: kBluePrimary,
                      fontSize: sWidth * 0.035,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              kHeight20,
              ElevatedButtonLong(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.homeScreen);
                },
                text: 'Sign in',
              ),
              kHeight30,
              Text(
                'OR',
                style: textHeadBold1.copyWith(color: kBluePrimary),
              ),
              kHeight30,
              ElevatedButtonLong(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.homeScreen);
                },
                text: 'Sign up',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
