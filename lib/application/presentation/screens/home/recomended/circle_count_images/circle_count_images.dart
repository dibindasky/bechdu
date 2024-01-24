import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class UsersProfileStackRecomended extends StatelessWidget {
  const UsersProfileStackRecomended({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: SizedBox(
        width: sWidth * 0.22,
        height: sWidth * 0.11,
        child: AspectRatio(
          aspectRatio: 2,
          child: Stack(
            children: [
              imageCircleMaker(),
              Positioned(left: 19, child: imageCircleMaker()),
              Positioned(
                left: 37,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kWhite, width: 2),
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(350),
                      right: Radius.circular(350),
                    ),
                    color: const Color.fromARGB(255, 133, 194, 245),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Column(
                    children: [
                      Text(
                        '530+',
                        style: textHeadBold1.copyWith(
                          color: kWhite,
                          fontSize: sWidth * .023,
                        ),
                      ),
                      Text(
                        'Sold',
                        style: textHeadBold1.copyWith(
                          color: kBlack,
                          fontSize: sWidth * .024,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  CircleAvatar imageCircleMaker() {
    return const CircleAvatar(
      radius: 17,
      backgroundColor: kWhite,
      child: Padding(
        padding: EdgeInsets.all(2),
        child: CircleAvatar(
          backgroundImage: AssetImage(homeOfferImage),
        ),
      ),
    );
  }
}
