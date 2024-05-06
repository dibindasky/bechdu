// ignore_for_file: use_build_context_synchronously
import 'dart:async';
import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/auth/otp_screen/widgets/pinput.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/profile/add_address/add_address.dart';
import 'package:beachdu/application/presentation/screens/profile/address_listview.dart';
import 'package:beachdu/application/presentation/screens/profile/widgets/containers.dart';
import 'package:beachdu/application/presentation/utils/circle_animation.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/confirmation_daillogue/exit_app_dailogue.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/loading_indicators/loading_indicator.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/login/otp_verify_request_model/otp_verify_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

ValueNotifier<int> profileScreensNotifier = ValueNotifier(0);

class PrfileLastBuilder extends StatelessWidget {
  const PrfileLastBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: profileScreensNotifier,
      builder: (context, index, child) =>
          index == 0 ? const ScreenProfile() : const AddAddressScreen(),
    );
  }
}

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final name = context.read<ProfileBloc>().profileNameController.length >= 2
        ? context.read<ProfileBloc>().profileNameController.text.substring(0, 2)
        : '';
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        final islogin = await SecureSotrage.getlLogin();
        if (islogin) {
          context
              .read<PlaceOrderBloc>()
              .add(const PlaceOrderEvent.userNumber());
          context
              .read<ProfileBloc>()
              .add(const ProfileEvent.getUserInfo(isLoad: false));
        }
      },
    );
    return WillPopScope(
      onWillPop: () async {
        context.read<NavbarCubit>().changeNavigationIndex(0);
        return false;
      },
      child: Builder(builder: (context) {
        return GestureDetector(
          onTap: () {
            FocusScopeNode focusScopeNode = FocusScope.of(context);
            if (!focusScopeNode.hasPrimaryFocus) {
              focusScopeNode.unfocus();
            }
          },
          child: Scaffold(
            appBar: AppBar(
              leading: kEmpty,
              centerTitle: true,
              title: Text(
                "Account",
                style: textHeadBoldBig,
              ),
            ),
            body: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (!state.logOrNot) {
                  return AlertDialog(
                    backgroundColor: kWhiteextra,
                    title: Text(
                      'You are not logged in',
                      style: textHeadBoldBig,
                    ),
                    content: Text(
                      'You need to login to visit your profile.',
                      style: textHeadMedium1,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          context.read<AuthBloc>().otpController.clear();
                          context
                              .read<AuthBloc>()
                              .phoneNumberController
                              .clear();
                          Navigator.pushNamed(
                            context,
                            Routes.signInOrLogin,
                            arguments: LoginWay.fromProfile,
                          );
                        },
                        child: Text(
                          'Log in Now',
                          style: textHeadMedium1,
                        ),
                      ),
                    ],
                  );
                }
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Column(
                      children: [
                        AnimatedGrowShrinkContainer(
                          child: CircleAvatar(
                            backgroundColor: kGreenPrimary,
                            radius: 58,
                            child: CircleAvatar(
                              backgroundColor: kBluePrimary,
                              radius: 50,
                              child: name == ''
                                  ? const Icon(
                                      size: 50,
                                      Icons.person,
                                      color: kGreenPrimary,
                                    )
                                  : Text(
                                      name.toUpperCase(),
                                      style: textHeadBoldBig.copyWith(
                                        fontSize: sWidth * .1,
                                        color: kWhite,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        kHeight30,
                        const UserInfoFields(),
                        kHeight20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Address',
                              style: textHeadRegular1,
                            ),
                            GestureDetector(
                              onTap: () {
                                profileScreensNotifier.value = 1;
                                profileScreensNotifier.notifyListeners();
                              },
                              child: const CircleAvatar(
                                backgroundColor: kBlack,
                                radius: 12,
                                child: Icon(
                                  Icons.add,
                                  color: kWhite,
                                ),
                              ),
                            ),
                          ],
                        ),
                        kHeight20,
                        const AddressListView(isFromProfile: true),
                        kHeight30,
                        GestureDetector(
                          onTap: () {
                            showConfirmationDialog(
                              context,
                              heading:
                                  'Are you really want to log out from Bechdu',
                              onPressed: () async {
                                await logOut(context);
                              },
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: klightwhite,
                              border: Border.all(color: klightgrey),
                              borderRadius: kRadius10,
                            ),
                            child: Center(
                              child: Text(
                                'Log out',
                                style: textHeadBold1,
                              ),
                            ),
                          ),
                        ),
                        kHeight20,
                        GestureDetector(
                          onTap: () {
                            showConfirmationDialog(
                              heading:
                                  'Are you sure to delete your account permanantly',
                              operationButtonName: 'Sure',
                              context,
                              onPressed: () {
                                context.read<AuthBloc>().otpController.clear();
                                Navigator.pop(context);
                                context
                                    .read<ProfileBloc>()
                                    .add(const ProfileEvent.getDeletionOtp());
                                showConfirmationDialog(
                                  noButton: true,
                                  operationButtonName: 'Delete',
                                  content: SizedBox(
                                      height: 50, child: PinEnterField()),
                                  context,
                                  heading: 'Enter Your Account deletion OTP',
                                  onPressed: () {
                                    final otp = context
                                        .read<AuthBloc>()
                                        .otpController
                                        .text
                                        .replaceAll(' ', '');
                                    RegExp phoneNumberRegExp =
                                        RegExp(r'^[0-9]+$');
                                    if (phoneNumberRegExp.hasMatch(otp)) {
                                      if (otp.isEmpty) {
                                        showSnack(
                                          context: context,
                                          message: 'Enter your otp here',
                                          color: kRed,
                                        );
                                      } else if (otp.length < 4) {
                                        showSnack(
                                          context: context,
                                          message:
                                              'OTP number should keep 4 digits',
                                          color: kRed,
                                        );
                                      } else {
                                        //Delete account event calling
                                        OtpVerifyRequestModel
                                            otpVerifyRequestModel =
                                            OtpVerifyRequestModel(
                                          otp: otp,
                                        );
                                        context.read<ProfileBloc>().add(
                                              ProfileEvent.deleteAccount(
                                                otpVerifyRequestModel:
                                                    otpVerifyRequestModel,
                                              ),
                                            );
                                      }
                                    } else {
                                      showSnack(
                                        context: context,
                                        message: 'Not a OTP number: $otp',
                                        color: kRed,
                                      );
                                    }
                                  },
                                );
                              },
                            );
                          },
                          child: state.isLoading
                              ? LoadingAnimation(
                                  width: 30,
                                  color: klightgrey,
                                )
                              : Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  height: 45,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: klightwhite,
                                    border: Border.all(color: klightgrey),
                                    borderRadius: kRadius10,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Delete account',
                                      style: textHeadBold1,
                                    ),
                                  ),
                                ),
                        ),
                        kHeight20,
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      }),
    );
  }

  Future<void> logOut(BuildContext context) async {
    context.read<AuthBloc>().add(const AuthEvent.logOut());
    context.read<ProfileBloc>().add(const ProfileEvent.clear());
    context.read<QuestionTabBloc>().add(const QuestionTabEvent.clear());
    context.read<PlaceOrderBloc>().add(const PlaceOrderEvent.clear());
    context.read<LocationBloc>().add(const LocationEvent.clear());
    context.read<HomeBloc>().add(const HomeEvent.clear());
    context.read<CategoryBlocBloc>().add(const CategoryBlocEvent.clear());
    context.read<NavbarCubit>().changeNavigationIndex(0);
    secondtabScreensNotifier.value = 0;
    secondtabScreensNotifier.notifyListeners();
    brandSeriesProductValueNotifier.value = 0;
    brandSeriesProductValueNotifier.notifyListeners();
    Navigator.pushNamedAndRemoveUntil(
      context,
      Routes.signInOrLogin,
      arguments: LoginWay.fromInitial,
      (route) => false,
    );
  }
}
