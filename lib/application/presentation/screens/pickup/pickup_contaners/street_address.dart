import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class StreetAddress extends StatelessWidget {
  const StreetAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PickupScreenAddressListView(),
            kHeight20,
            Text(
              'STREET ADDRESS',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            const TTextFormField(
              text: 'Aluva',
            ),
            Text(
              'STATE',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            const TTextFormField(
              text: 'Ernakulam',
            ),
            Text(
              'CITY',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            const TTextFormField(
              text: 'Aluva',
            ),
            Text(
              'PINCODE',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            const TTextFormField(
              inputType: TextInputType.number,
              text: 'xxxxxx',
            ),
          ],
        ),
      ),
    );
  }
}

class PickupScreenAddressListView extends StatelessWidget {
  PickupScreenAddressListView({
    super.key,
  });

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return kHeight20;
      },
      itemCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Material(
          elevation: 1.3,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 17,
                      child: Icon(
                        Icons.location_pin,
                        color: kGreenPrimary,
                      ),
                    ),
                    kWidth10,
                    Text(
                      'Zikrabyte Solutions, jayanagar 9th block, bangalore',
                      style: textHeadMedium1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
