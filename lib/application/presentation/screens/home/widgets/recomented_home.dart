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
      children: [
        Text(
          'Recommended',
          style: textHeadBoldBig,
        ),
        kHeight10,
        AspectRatio(
          aspectRatio: 1.8,
          child: ListView.builder(
            itemCount: 10,
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
                                      const UsersProfileStackRecomended()
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(right: 20,top: sWidth * 0.30,
                        child: Container(
                          decoration: BoxDecoration(
                              color: kGreenPrimary,
                              border: Border.all(color: kWhite, width: 3),
                              borderRadius: kRadius10),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              'GO',
                              style: textHeadBold1,
                            ),
                          ),
                        ),
                      )
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
              Positioned(left: 15, child: imageCircleMaker()),
              Positioned(
                left: 30,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: kWhite, width: 2),
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(350),
                          right: Radius.circular(350)),
                      color: const Color.fromARGB(255, 133, 194, 245)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  child: Column(
                    children: [
                      Text('530+',
                          style: textHeadBold1.copyWith(color: kWhite)),
                      Text('Sold', style: textHeadBold1)
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
        backgroundColor: kWhite,
        child: Padding(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage(homeOfferImage),
          ),
        ));
  }
}
