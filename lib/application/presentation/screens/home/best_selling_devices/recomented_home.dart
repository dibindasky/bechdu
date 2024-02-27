import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class RecommendedMobile extends StatelessWidget {
  const RecommendedMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '   Best Selling Devices',
          style: textHeadBoldBig,
        ),
        kHeight10,
        AspectRatio(
          aspectRatio: 1.8,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: kRadius15,
                child: ColoredBox(
                  color: textFieldBorderColor.withOpacity(0.210),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: sWidth * 0.60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              child: SizedBox(
                                height: sWidth * 0.35,
                                width: sWidth * 0.55,
                                child: Image.asset(
                                  homeOfferImage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 5, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Samsung s23 ultra',
                                    style: textHeadBold1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Upto \$19,999',
                                        style: textHeadBold1,
                                      ),
                                      // const UsersProfileStackRecomended()
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 20,
                        top: sWidth * 0.30,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kGreenPrimary,
                            border: Border.all(color: kWhite, width: 3),
                            borderRadius: kRadius10,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Text(
                              'GO',
                              style: textHeadBold1.copyWith(
                                fontSize: sWidth * .032,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
