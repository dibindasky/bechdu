import 'dart:async';
import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/profile/add_address/add_address.dart';
import 'package:beachdu/application/presentation/screens/profile/address_listview.dart';
import 'package:beachdu/application/presentation/screens/profile/widgets/containers.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/confirmation_daillogue/exit_app_dailogue.dart';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

ValueNotifier<int> profileScreensNotifier = ValueNotifier(0);

class PrfileLastBuilder extends StatelessWidget {
  const PrfileLastBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: profileScreensNotifier,
      builder: (context, index, child) {
        return profileSectionList[index];
      },
    );
  }
}

List<Widget> profileSectionList = [
  const ScreenProfile(),
  const AddAddressScreen(),
];

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        final islogin = await SecureSotrage.getlLogin();
        if (islogin) {
          // ignore: use_build_context_synchronously
          context.read<ProfileBloc>().add(const ProfileEvent.getUserInfo());
        }
      },
    );
    return WillPopScope(
      onWillPop: () async {
        bool shouldPop = await showConfirmationDialog(context);
        return shouldPop;
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
                backgroundColor: klightGreen,
                title: Text(
                  'You are not logged in',
                  style: textHeadBoldBig,
                ),
                content: Text(
                  'You need to login to edit your profile.',
                  style: textHeadMedium1,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        Routes.signInOrLogin,
                        arguments: true,
                      );
                    },
                    child: Text(
                      'Log in now',
                      style: textHeadMedium1,
                    ),
                  ),
                ],
              );
            }
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: kGreenPrimary,
                      radius: 58,
                      child: CircleAvatar(
                        backgroundColor: kBluePrimary,
                        radius: 50,
                        child: Text(
                          'JG',
                          style: textHeadBoldBig.copyWith(
                            fontSize: sWidth * .1,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ),
                    kHeight30,
                    const Containers(),
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
                            context
                                .read<LocationBloc>()
                                .add(const LocationEvent.locationPick());
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
                    const AddressListView(),
                    kHeight30,
                    GestureDetector(
                      onTap: () {
                        showConfirmationDialog(
                          context,
                          heading: 'Are you really want to log out from Bechdu',
                          onPressed: () {
                            logOut(context);
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
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> logOut(BuildContext context) async {
    Navigator.pushReplacementNamed(
      context,
      Routes.signInOrLogin,
      arguments: false,
    );
    context.read<NavbarCubit>().changeNavigationIndex(0);
    context.read<AuthBloc>().add(const LogOut());
  }
}
