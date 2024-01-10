import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class JoinOurTeam extends StatelessWidget {
  const JoinOurTeam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      Navigator.pushNamed(context, Routes.questions);
    },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: sWidth * 0.27,
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
                fontSize: sWidth * 0.06,
              ),
            ),
            FittedBox(fit: BoxFit.contain,
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
    );
  }
}
