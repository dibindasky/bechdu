import 'dart:developer';

import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:beachdu/application/presentation/utils/validators.dart';
import 'package:beachdu/domain/model/profile/user_info_request_model/user_info_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInfoFields extends StatefulWidget {
  const UserInfoFields({super.key});

  @override
  State<UserInfoFields> createState() => _UserInfoFieldsState();
}

class _UserInfoFieldsState extends State<UserInfoFields> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<ProfileBloc>()
          .add(const ProfileEvent.getUserInfo(isLoad: false));
    });
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, profile) {
        return Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              context.read<ProfileBloc>().isVisible
                  ? TTextFormField(
                      controller:
                          context.read<ProfileBloc>().profileNameController,
                      text: 'Enter name',
                    )
                  : Column(
                      children: [
                        kHeight5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${profile.user != null && profile.user!.user != null && profile.user!.user!.name != null && profile.user!.user!.name!.isNotEmpty ? profile.user!.user!.name : 'Enter name'}',
                              style: textHeadMedium1,
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  context.read<ProfileBloc>().isVisible = true;
                                });
                              },
                              child: Text(
                                'Edit',
                                style: textHeadInter.copyWith(
                                    color: kGreenPrimary),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                      ],
                    ),
              // // Email field
              context.read<ProfileBloc>().isVisible
                  ? TTextFormField(
                      controller:
                          context.read<ProfileBloc>().profileEmailController,
                      text: 'Enter email',
                    )
                  : Column(
                      children: [
                        kHeight5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${profile.user != null && profile.user!.user != null && profile.user!.user!.email != null && profile.user!.user!.email!.isNotEmpty ? profile.user!.user!.email : 'Enter email'}',
                              style: textHeadMedium1,
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  context.read<ProfileBloc>().isVisible = true;
                                });
                              },
                              child: Text(
                                'Edit',
                                style: textHeadInter.copyWith(
                                    color: kGreenPrimary),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                      ],
                    ),
              kHeight20,
              BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '${state.number}',
                            style: textHeadMedium1,
                          ),
                        ],
                      ),
                      kHeight10,
                      const Divider(
                        thickness: 1,
                      ),
                    ],
                  );
                },
              ),
              //Additional Mobile Number field
              context.read<ProfileBloc>().isVisible
                  ? TTextFormField(
                      maxlegth: 10,
                      validator: (value) {
                        if (value != null && value.isNotEmpty) {
                          if (value.length != 10 ||
                              !isValidPhoneNumber(value)) {
                            return 'Additional number is not valid';
                          }
                        }
                        return null;
                      },
                      controller:
                          context.read<ProfileBloc>().profileAddPhoneController,
                      inputType: TextInputType.number,
                      text: 'Additional number',
                    )
                  : Column(
                      children: [
                        kHeight5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${profile.user != null && profile.user!.user != null && profile.user!.user!.addPhone != null && profile.user!.user!.addPhone!.isNotEmpty ? profile.user!.user!.addPhone : 'Enter your Additional number'}',
                              style: textHeadMedium1,
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  context.read<ProfileBloc>().isVisible = true;
                                });
                              },
                              child: Text(
                                'Edit',
                                style: textHeadInter.copyWith(
                                    color: kGreenPrimary),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                      ],
                    ),
              kHeight30,
              if (context.read<ProfileBloc>().isVisible)
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (context.read<ProfileBloc>().isVisible) {
                          // Prepare request model
                          UserInfoRequestModel userInfoRequestModel =
                              UserInfoRequestModel(
                            name: context.read<ProfileBloc>().isVisible
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
                        log('updateUser');
                        // Reset flags
                        setState(() {
                          context.read<ProfileBloc>().isVisible = false;
                        });
                      }
                      // Check which fields are changed and send the request
                    },
                    text: 'Save',
                  ),
                ),
              kHeight20,
              // Save button
            ],
          ),
        );
      },
    );
  }
}
