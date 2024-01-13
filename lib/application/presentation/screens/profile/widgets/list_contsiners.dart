import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class ListContainersProfile extends StatelessWidget {
  const ListContainersProfile(
      {super.key, required this.text, this.colr, required this.image});

  final String text;
  final Color? colr;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(color: kBlack),
          borderRadius: kRadius15,
        ),
        child: Row(
          children: [
            kWidth10,
            SizedBox(
              height: 23,
              width: 25,
              child: Image.asset(image),
            ),
            kWidth10,
            Text(
              text,
              style: textHeadMedium1.copyWith(color: colr),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 16,
              color: kGreenPrimary,
            ),
            kWidth10,
          ],
        ),
      ),
    );
  }
}
