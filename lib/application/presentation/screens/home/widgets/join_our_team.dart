import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class JoinOurTeam extends StatelessWidget {
  const JoinOurTeam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: sWidth * 0.30,
      width: sWidth,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: const DecorationImage(
          image: AssetImage(joinOurTeam),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Join Our Team',
            style: textHeadBold1.copyWith(
              color: kWhite,
              fontSize: sWidth * 0.07,
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet consectetur. Augue\nin mauris leo duis platea et in tempor in ',
            style: textHeadRegular1.copyWith(
              color: kWhite,
              fontSize: sWidth * 0.05,
            ),
          )
        ],
      ),
    );
  }
}
