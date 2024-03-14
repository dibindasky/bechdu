import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalDetails extends StatefulWidget {
  PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    context.read<ProfileBloc>().add(const ProfileEvent.getUserInfo());
    context.read<PlaceOrderBloc>().nameController.text =
        context.read<PlaceOrderBloc>().nameController.text.isEmpty
            ? context.read<ProfileBloc>().profileNameController.text
            : context.read<PlaceOrderBloc>().nameController.text;
    context.read<PlaceOrderBloc>().emailController.text =
        context.read<PlaceOrderBloc>().emailController.text.isEmpty
            ? context.read<ProfileBloc>().profileEmailController.text
            : context.read<PlaceOrderBloc>().emailController.text;
    context.read<PlaceOrderBloc>().additionalNumberController.text =
        context.read<PlaceOrderBloc>().additionalNumberController.text.isEmpty
            ? context.read<ProfileBloc>().profileAddPhoneController.text
            : context.read<PlaceOrderBloc>().additionalNumberController.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<PlaceOrderBloc>().add(const PlaceOrderEvent.userNumber());
      },
    );
    return SizedBox(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NAME',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            TTextFormField(
              controller: context.read<PlaceOrderBloc>().nameController,
              text: 'Enter name',
            ),
            Text(
              'EMAIL ADDRESS',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            TTextFormField(
              controller: context.read<PlaceOrderBloc>().emailController,
              text: 'Enter email',
              inputType: TextInputType.emailAddress,
            ),
            Text(
              'PHONE NUMBER',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
              builder: (context, state) {
                return Container(
                  padding: const EdgeInsets.only(left: 10),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: textFieldBorderColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${state.number}',
                      style: textHeadSemiBold1.copyWith(
                        fontSize: sWidth * 0.04,
                      ),
                    ),
                  ),
                );
              },
            ),
            kHeight5,
            Text(
              'ADDITIONAL PHONE NUMBER',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            TTextFormField(
              validator: (value) {
                if (value != null && value.isNotEmpty) {
                  if (value.length != 10 || !isValidPhoneNumber(value)) {
                    return 'Additional number is not valid';
                  }
                }
                return null;
              },
              controller:
                  context.read<PlaceOrderBloc>().additionalNumberController,
              inputType: TextInputType.number,
              text: 'Additional number',
            ),
            kHeight10,
            Align(
                alignment: Alignment.center,
                child: CustomButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      pickupDetailChangeNotifier.value =
                          PickupDetailContainers.address;
                      pickupDetailChangeNotifier.notifyListeners();
                    }
                  },
                  text: 'Continue',
                )),
          ],
        ),
      ),
    );
  }
}
