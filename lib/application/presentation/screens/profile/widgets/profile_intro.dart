import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfileIndro extends StatelessWidget {
  const ProfileIndro({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: kRedlightsmall,
              radius: 47,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: kWhite,
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(profileImage),
                    ),
                    Positioned(
                      bottom: 4,
                      left: 30,
                      child: Image.asset('assets/images/camera_small_img.png'),
                    ),
                  ],
                ),
              ),
            ),
            kWidth10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: kRadioButtnOuter,
                      size: 20,
                    ),
                    kWidth5,
                    Text(
                      'Aman Sharma',
                      style: textHeadRegular1,
                    ),
                  ],
                ),
                kHeight10,
                Row(
                  children: [
                    const Icon(
                      Icons.call,
                      color: kRadioButtnOuter,
                      size: 20,
                    ),
                    kWidth5,
                    Text('+91 9999988888', style: textHeadRegular1),
                  ],
                ),
                kHeight10,
                Row(
                  children: [
                    const Icon(
                      Icons.email,
                      color: kRadioButtnOuter,
                      size: 20,
                    ),
                    kWidth5,
                    Text('loremipsum@gmail.com', style: textHeadRegular1),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const CircleAvatar(
              backgroundColor: kGreenPrimary,
              radius: 13,
              child: Icon(
                Icons.drive_file_rename_outline_outlined,
                color: kWhite,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
