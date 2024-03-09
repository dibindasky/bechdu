import 'dart:async';
import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/profile/add_address/add_address.dart';
import 'package:beachdu/application/presentation/screens/profile/address_listview.dart';
import 'package:beachdu/application/presentation/screens/profile/widgets/containers.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/confirmation_daillogue/exit_app_dailogue.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
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
  ScreenProfile(),
  const AddAddressScreen(),
];

class ScreenProfile extends StatelessWidget {
  ScreenProfile({super.key});
  String firstTwoLetters = '';
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        final islogin = await SecureSotrage.getlLogin();
        if (islogin) {
          context
              .read<PlaceOrderBloc>()
              .add(const PlaceOrderEvent.userNumber());
          // ignore: use_build_context_synchronously
          context.read<ProfileBloc>().add(const ProfileEvent.getUserInfo());
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
                          Navigator.pushNamed(
                            context,
                            Routes.signInOrLogin,
                            arguments: LoginWay.fromProfile,
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
                  child: RefreshIndicator(
                    onRefresh: () async {
                      context
                          .read<PlaceOrderBloc>()
                          .add(const PlaceOrderEvent.userNumber());
                      context
                          .read<ProfileBloc>()
                          .add(const ProfileEvent.getUserInfo());
                      Future.delayed(const Duration(seconds: 2));
                    },
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
                                'SR',
                                style: textHeadBoldBig.copyWith(
                                  fontSize: sWidth * .1,
                                  color: kWhite,
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
                        ],
                      ),
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
    Navigator.pushReplacementNamed(
      context,
      Routes.signInOrLogin,
      arguments: LoginWay.fromInitial,
    ).then((value) {
      context.read<NavbarCubit>().changeNavigationIndex(0);

      secondtabScreensNotifier.value = 0;
      secondtabScreensNotifier.notifyListeners();
      brandSeriesProductValueNotifier.value = 0;
      brandSeriesProductValueNotifier.notifyListeners();
    });
  }
}
