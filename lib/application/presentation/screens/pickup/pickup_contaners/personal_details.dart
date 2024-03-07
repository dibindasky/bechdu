import 'dart:developer';

import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_screen.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/utils/validators.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/promo.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<ProfileBloc>().add(const ProfileEvent.getUserInfo());
        context.read<PlaceOrderBloc>().add(const PlaceOrderEvent.userNumber());
      },
    );
    return SizedBox(
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, profileState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NAME',
                style: textHeadMedium1.copyWith(
                  fontSize: sWidth * .033,
                ),
              ),
              TTextFormField(
                controller: profileState.addressCreationResponceModel != null
                    ? context.read<ProfileBloc>().profileNameController
                    : context.read<PlaceOrderBloc>().nameController,
                text: 'Enter name',
              ),
              Text(
                'EMAIL ADDRESS',
                style: textHeadMedium1.copyWith(
                  fontSize: sWidth * .033,
                ),
              ),
              TTextFormField(
                controller: profileState.addressCreationResponceModel != null
                    ? context.read<ProfileBloc>().profileEmailController
                    : context.read<PlaceOrderBloc>().emailController,
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
                controller: profileState.addressCreationResponceModel != null
                    ? context.read<ProfileBloc>().profileAddPhoneController
                    : context.read<PlaceOrderBloc>().additionalNumberController,
                inputType: TextInputType.number,
                text: '00000 00000',
              ),
              Align(
                alignment: Alignment.center,
                child: BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
                  builder: (context, placeOrderBloc) {
                    return CustomButton(
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
                            message: 'Please fill required feilds',
                            color: kRed,
                          );
                        } else {
                          String email = context
                              .read<PlaceOrderBloc>()
                              .emailController
                              .text;
                          String name = context
                              .read<PlaceOrderBloc>()
                              .nameController
                              .text;
                          String addPhone = context
                              .read<PlaceOrderBloc>()
                              .additionalNumberController
                              .text;

                          if (addPhone.isNotEmpty &&
                              !isValidPhoneNumber(addPhone)) {
                            showSnack(
                              context: context,
                              message: 'Not valid additional number',
                              color: kRed,
                            );
                          }

                          if (name.length < 3) {
                            showSnack(
                              context: context,
                              message: 'Not a valid name',
                              color: kRed,
                            );
                            return;
                          }

                          if (!isValidEmail(email)) {
                            showSnack(
                              context: context,
                              message: 'Not a valid email',
                              color: kRed,
                            );
                            return;
                          }

                          User user = User(
                            email: email,
                            name: name,
                            addPhone: addPhone.isEmpty ? '' : addPhone,
                          );

                          Promo promo = Promo(
                            code: placeOrderBloc.promoCodeResponceModel != null
                                ? context
                                    .read<PlaceOrderBloc>()
                                    .promocodeController
                                    .text
                                : '',
                            price: placeOrderBloc.promoCodeResponceModel != null
                                ? placeOrderBloc.promoCodeResponceModel!.value
                                    .toString()
                                : '',
                          );

                          context
                              .read<PlaceOrderBloc>()
                              .add(PlaceOrderEvent.userDetailsPick(
                                user: user,
                                promo: promo,
                              ));

                          // Update the value of pickupDetailChangeNotifier
                          pickupDetailChangeNotifier.value =
                              PickupDetailContainers.address;
                          pickupDetailChangeNotifier.notifyListeners();
                        }
                      },
                      text: 'Continue',
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
