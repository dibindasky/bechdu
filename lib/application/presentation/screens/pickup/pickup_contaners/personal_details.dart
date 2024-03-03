import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/utils/validators.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<PlaceOrderBloc>().add(const PlaceOrderEvent.userNumber());
      },
    );
    return SizedBox(
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
            controller: context.read<AuthBloc>().phoneNumberController,
            inputType: TextInputType.number,
            text: 'xxxxxxxxx',
          ),
          Align(
            alignment: Alignment.center,
            child: CustomButton(
              onPressed: () {
                if (context
                        .read<PlaceOrderBloc>()
                        .emailController
                        .text
                        .isEmpty &&
                    context
                        .read<PlaceOrderBloc>()
                        .nameController
                        .text
                        .isEmpty) {
                  showSnack(
                    context: context,
                    message: 'Please fill required fields',
                  );
                } else {
                  String email =
                      context.read<PlaceOrderBloc>().emailController.text;
                  String name =
                      context.read<PlaceOrderBloc>().nameController.text;

                  String additionalNumber = context
                      .read<PlaceOrderBloc>()
                      .additionalNumberController
                      .text;
                  if (!isValidEmail(email)) {
                    return;
                  }

                  if (!isValidName(name)) {
                    showSnackk(context: context, message: 'Not valid email');
                    return;
                  }
                  User user = User(
                    email: email,
                    name: name,
                    addPhone: additionalNumber.isEmpty ? '' : additionalNumber,
                  );

                  // Dispatch the userDetailsPick event
                  context
                      .read<PlaceOrderBloc>()
                      .add(PlaceOrderEvent.userDetailsPick(user: user));

                  // Update the value of pickupDetailChangeNotifier
                  pickupDetailChangeNotifier.value =
                      PickupDetailContainers.address;
                  pickupDetailChangeNotifier.notifyListeners();
                }
              },
              text: 'Continue',
            ),
          ),
        ],
      ),
    );
  }
}

void showSnackk({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: Colors.red, // Or customize as needed
    ),
  );
}
