import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/widgets/cash_or_upi.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/widgets/personal_details.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/widgets/street_address.dart';
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
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (_) => PickupDetailContainers.personalDetails,
    // );
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SelectedTopImage(),
              kHeight10,
              Text(
                'Pickup Details',
                style: textHeadBold1.copyWith(fontSize: sWidth * .05),
              ),
              kHeight20,

              //This is for container Circle avatars
              ValueListenableBuilder(
                valueListenable: pickupDetailChangeNotifier,
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      circleAvatar(
                        'assets/images/person_icon.png',
                        PickupDetailContainers.personalDetails,
                      ),
                      circleAvatar(
                        'assets/images/address_icon.png',
                        PickupDetailContainers.address,
                      ),
                      circleAvatar(
                        'assets/images/payment_icon.png',
                        PickupDetailContainers.cashOrUPI,
                      ),
                      circleAvatar(
                        'assets/images/date_icon.png',
                        PickupDetailContainers.dateSelect,
                      ),
                    ],
                  );
                },
              ),
              kHeight30,

              //This is for container building
              ValueListenableBuilder(
                valueListenable: pickupDetailChangeNotifier,
                builder: (context, value, child) {
                  if (value == PickupDetailContainers.personalDetails) {
                    return const PersonalDetails();
                  }
                  if (value == PickupDetailContainers.address) {
                    return const StreetAddress();
                  }
                  if (value == PickupDetailContainers.cashOrUPI) {
                    return const CashOrUPI();
                  }
                  if (value == PickupDetailContainers.dateSelect) {
                    return const SizedBox();
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget circleAvatar(String image, PickupDetailContainers item) {
    bool isSelected = pickupDetailChangeNotifier.value == item;
    return GestureDetector(
      onTap: () {
        pickupDetailChangeNotifier.value = item;
      },
      child: CircleAvatar(
        backgroundColor: isSelected ? kGreenPrimary : kBlueLight,
        child: CircleAvatar(
          radius: 12,
          backgroundColor: isSelected ? kGreenPrimary : kBlueLight,
          backgroundImage: AssetImage(image),
        ),
      ),
    );
  }
}
