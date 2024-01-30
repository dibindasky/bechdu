import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class MyOrderContainer extends StatelessWidget {
  const MyOrderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: kRadius10,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight10,
          Row(
            children: [
              kWidth10,
              Column(
                children: [
                  Text(
                    'Heading',
                    style: textHeadMedium1,
                  ),
                  Text(
                    '₹ 13,999',
                    style: textHeadRegular1,
                  ),
                ],
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: kRadius5,
                child: ColoredBox(
                  color: kRedLight.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: Text(
                      'Pickup Pending',
                      style: textHeadRegular1.copyWith(
                        color: kRedLight.withOpacity(0.9),
                        fontSize: sWidth * .03,
                      ),
                    ),
                  ),
                ),
              ),
              kWidth10
            ],
          ),
          kHeight10,
          rowData(
            'Pickup Partner',
            'assets/images/order_preson.png',
            'assets/images/order_phone.png',
            'Mukesh Sharma',
          ),
          kHeight10,
          rowData(
            'Pickup Location',
            'assets/images/order_hand.png',
            'assets/images/order_location.png',
            'Nikhita Stores, 201/B, Nirant Apts, Andheri East 400069',
          ),
          kHeight10,
          Row(
            children: [
              kWidth10,
              const CircleAvatar(
                radius: 14,
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('assets/images/order_clock.png'),
                ),
              ),
              kWidth10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Pickup Time'),
                  Row(
                    children: [
                      Text(
                        '04:30',
                        maxLines: 3,
                        style: textHeadBold1,
                      ),
                      kWidth10,
                      Text(
                        '12/01/24',
                        maxLines: 3,
                        style: textHeadBold1,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          kHeight10,
        ],
      ),
    );
  }

  Widget rowData(
    String heading,
    String imageFirst,
    String lastImage,
    String subHead,
  ) {
    return Row(
      children: [
        kWidth10,
        CircleAvatar(
          radius: 14,
          child: CircleAvatar(
            radius: 10,
            foregroundImage: AssetImage(imageFirst),
          ),
        ),
        kWidth10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(heading),
            SizedBox(
              width: sWidth * .7,
              child: Text(
                subHead,
                maxLines: 3,
                style: textHeadBold1,
              ),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 14,
          child: CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage(lastImage),
          ),
        ),
        kWidth10
      ],
    );
  }
}
