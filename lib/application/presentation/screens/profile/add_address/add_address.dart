import 'package:beachdu/application/presentation/screens/navbar/bottombar.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/screens/profile/profile_screen.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AddAddressScreen extends StatelessWidget {
  AddAddressScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          leading: IconButton(
            onPressed: () {
              body[3] = const ScreenProfile();
              bottomBarNotifier.notifyListeners();
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          title: Text(
            'Create address',
            style: textHeadBoldBig,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'STATE',
                      style: textHeadMedium1.copyWith(
                        fontSize: sWidth * .033,
                      ),
                    ),
                    const TTextFormField(
                      text: 'Kerala',
                    ),
                    Text(
                      'DISTRICT',
                      style: textHeadMedium1.copyWith(
                        fontSize: sWidth * .033,
                      ),
                    ),
                    const TTextFormField(
                      text: 'Wayanad',
                    ),
                    Text(
                      'LANDMARK',
                      style: textHeadMedium1.copyWith(
                        fontSize: sWidth * .033,
                      ),
                    ),
                    const TTextFormField(
                      text: 'School',
                    ),
                    Text(
                      'PINCODE',
                      style: textHeadMedium1.copyWith(
                        fontSize: sWidth * .033,
                      ),
                    ),
                    const TTextFormField(
                      text: 'xxxxxx',
                    ),
                  ],
                ),
              ),
              ElevatedButtonLong(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState!.save();
                  }
                },
                text: 'Save',
              ),
              kHeight40
            ],
          ),
        ),
      ),
    );
  }
}
