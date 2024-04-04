import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/url_laucher.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:flutter/material.dart';

class JoinOurTeam extends StatelessWidget {
  const JoinOurTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await launchURL(ApiEndPoints.joinOurteam);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          // margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: sWidth * 0.27,
          width: sWidth,
          decoration: BoxDecoration(
            borderRadius: kRadius10,
            image: const DecorationImage(
              image: AssetImage(joinOurTeam),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Join Our Team',
                style: textHeadBoldBig.copyWith(
                  color: kWhite,
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Augue\nin mauris leo duis platea et in tempor in ',
                  style: textHeadRegular1.copyWith(
                    color: kWhite,
                    fontSize: sWidth * 0.05,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
