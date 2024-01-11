import 'package:beachdu/application/presentation/screens/pickup/widgets/data_vauelistenable.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/row_icons_value_listanable.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/selected_top_image.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

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
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => PickupDetailContainers.personalDetails,
    );
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    top: -30,
                    right: 59,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: kBlueLight.withOpacity(.16),
                    ),
                  ),
                  Positioned(
                    left: 150,
                    bottom: -20,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: kBlueLight.withOpacity(.15),
                    ),
                  ),
                  const SelectedTopImage(),
                ],
              ),
              kHeight10,
              Text(
                'Pickup Details',
                style: textHeadBold1.copyWith(fontSize: sWidth * .05),
              ),
              kHeight20,
              const RowIconsValueListanable(),
              kHeight30,
              const DataValueListanableContainers(),
            ],
          ),
        ),
      ),
    );
  }
}
