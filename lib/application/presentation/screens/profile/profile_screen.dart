import 'package:beachdu/application/presentation/screens/navbar/bottombar.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/street_address.dart';
import 'package:beachdu/application/presentation/screens/profile/add_address/add_address.dart';
import 'package:beachdu/application/presentation/screens/profile/widgets/containers.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        body[3] = const ScreenProfile();
        bottomBarNotifier.notifyListeners();
      },
    );
    return Scaffold(
      appBar: AppBar(
        leading: kEmpty,
        centerTitle: true,
        title: Text(
          "Account",
          style: textHeadBoldBig,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                        body[3] = const AddAddressScreen();
                        bottomBarNotifier.notifyListeners();
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
                kHeight10,
                PickupScreenAddressListView(),
                kHeight10,
                const Divider(),
                kHeight30,
                ElevatedButtonLong(
                  height: 48,
                  borderRadius: BorderRadius.circular(23),
                  color: kGreenPrimary,
                  wdth: double.infinity,
                  onPressed: () {},
                  text: 'Save',
                ),
                kHeight20,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
