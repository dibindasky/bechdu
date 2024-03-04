import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/domain/model/profile/user_info_request_model/user_info_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInfoFields extends StatefulWidget {
  const UserInfoFields({super.key});

  @override
  State<UserInfoFields> createState() => _UserInfoFieldsState();
}

class _UserInfoFieldsState extends State<UserInfoFields> {
  bool isTExtFieldUsername = false;
  bool isTExtFieldEmail = false;
  bool isTExtFieldNumber = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, profile) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isTExtFieldUsername
                ? TextField(
                    controller:
                        context.read<ProfileBloc>().profileNameController,
                    decoration: const InputDecoration(
                        hintText: 'Enter username',
                        hintStyle: TextStyle(color: klightgrey)),
                  )
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${profile.user != null && profile.user!.user != null && profile.user!.user!.name != null ? profile.user!.user!.name : 'Nill'}',
                            style: textHeadMedium1,
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                isTExtFieldUsername = true;
                              });
                            },
                            child: Text(
                              'Change',
                              style:
                                  textHeadInter.copyWith(color: kGreenPrimary),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                    ],
                  ),
            // // Email field
            isTExtFieldEmail
                ? TextField(
                    controller:
                        context.read<ProfileBloc>().profileEmailController,
                    decoration: const InputDecoration(
                        hintText: 'Enter email',
                        hintStyle: TextStyle(color: klightgrey)),
                  )
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${profile.user != null && profile.user!.user != null && profile.user!.user!.email != null ? profile.user!.user!.email : 'Nill'}',
                            style: textHeadMedium1,
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                isTExtFieldEmail = true;
                              });
                            },
                            child: Text(
                              'Change',
                              style:
                                  textHeadInter.copyWith(color: kGreenPrimary),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 3,
                      ),
                    ],
                  ),
            kHeight20,

            BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${state.number}',
                          style: textHeadMedium1,
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                  ],
                );
              },
            ),
            //Additional Mobile Number field
            isTExtFieldNumber
                ? TextField(
                    controller:
                        context.read<ProfileBloc>().profileAddPhoneController,
                    decoration: const InputDecoration(
                        hintText: 'Enter additional number',
                        hintStyle: TextStyle(color: klightgrey)),
                  )
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${profile.user != null && profile.user!.user != null && profile.user!.user!.addPhone != null ? profile.user!.user!.addPhone : 'Nill'}',
                            style: textHeadMedium1,
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                isTExtFieldNumber = true;
                              });
                            },
                            child: Text(
                              'Change',
                              style:
                                  textHeadInter.copyWith(color: kGreenPrimary),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                    ],
                  ),

            kHeight20,
            // Save button
            if (isTExtFieldUsername || isTExtFieldEmail || isTExtFieldNumber)
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  onPressed: () {
                    // Check which fields are changed and send the request
                    if (isTExtFieldUsername ||
                        isTExtFieldEmail ||
                        isTExtFieldNumber) {
                      // Prepare request model
                      UserInfoRequestModel userInfoRequestModel =
                          UserInfoRequestModel(
                        name: isTExtFieldUsername
                            ? context
                                .read<ProfileBloc>()
                                .profileNameController
                                .text
                            : '',
                        email: context
                            .read<ProfileBloc>()
                            .profileEmailController
                            .text,
                        addPhone: context
                            .read<ProfileBloc>()
                            .profileAddPhoneController
                            .text,
                      );

                      // Send request to update user information
                      context.read<ProfileBloc>().add(
                            ProfileEvent.updateUser(
                              userInfoRequestModel: userInfoRequestModel,
                            ),
                          );
                    }

                    // Reset flags
                    setState(() {
                      isTExtFieldEmail = false;
                      isTExtFieldNumber = false;
                      isTExtFieldNumber = false;
                    });
                  },
                  text: 'Save',
                ),
              ),
          ],
        );
      },
    );
  }
}
