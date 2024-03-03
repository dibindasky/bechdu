import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/data_value_listenable.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/row_icons_value_listanable.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/widgets/top_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum PickupDetailContainers {
  personalDetails,
  address,
  cashOrUPI,
  dateSelect,
}

ValueNotifier<PickupDetailContainers> pickupDetailChangeNotifier =
    ValueNotifier(PickupDetailContainers.personalDetails);

class ScreenPickUp extends StatelessWidget {
  const ScreenPickUp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      PickupDetailContainers.personalDetails;
      context.read<ProfileBloc>().add(const ProfileEvent.getUserInfo());
    });
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: WillPopScope(
        onWillPop: () async {
          secondtabScreensNotifier.value = 3;
          secondtabScreensNotifier.notifyListeners();
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 40,
            automaticallyImplyLeading: false,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const TopImage(fromWhere: FromWhere.pickupScreen),
                    kHeight10,
                    Text(
                      'Pickup Details',
                      style: textHeadBold1.copyWith(fontSize: sWidth * .05),
                    ),
                    kHeight20,
                    const RowIconsValueListanable(),
                    kHeight30,
                    const DataValueListanableContainers(),
                    kHeight10,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
