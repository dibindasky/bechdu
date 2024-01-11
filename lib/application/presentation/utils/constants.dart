import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

const gilroyBold = 'Gilroy-Bold';
const gilroyMedium = 'Gilroy-Medium';
const gilroyRegular = 'Gilroy-Regular';

const beachdulogo = 'assets/images/beachdu_logo.png';
const searchIcon = 'assets/images/search_icon.png';
const sortIcon = 'assets/images/sort_icon.png';
const joinOurTeam = 'assets/images/join_our_team.png';
const defectedMobile = 'assets/images/diffectImage.png';
const mobileWithOutBackgroundNetwork =
    'https://assets.stickpng.com/images/5cb0633d80f2cf201a4c3253.png';
const mobileNetworkImage =
    'https://img.freepik.com/free-photo/smartphone-balancing-with-pink-background_23-2150271746.jpg?size=338&ext=jpg&ga=GA1.1.1412446893.1704758400&semt=sph';

double sHeight = 900;
double sWidth = 400;

const kEmpty = SizedBox();

const kHeight5 = SizedBox(height: 5);
const kHeight10 = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);
const kHeight40 = SizedBox(height: 40);
const kHeight50 = SizedBox(height: 50);

const kWidth5 = SizedBox(width: 5);
const kWidth10 = SizedBox(width: 10);
const kWidth20 = SizedBox(width: 20);
const kWidth30 = SizedBox(width: 30);
const kWidth50 = SizedBox(width: 50);

final kRadius5 = BorderRadius.circular(5);
final kRadius10 = BorderRadius.circular(10);
final kRadius15 = BorderRadius.circular(15);

final textHeadBold1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth <400 ? sWidth * 0.040 :sWidth *0.035,
);

final textHeadBoldBig = TextStyle(
  color: kBlack,
  fontFamily: gilroyBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth <400 ? sWidth * 0.056 :sWidth *0.045,
);

final textHeadMedium1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyMedium,
  fontWeight: FontWeight.w400,
  fontSize: sWidth <400 ? sWidth * 0.040 :sWidth *0.035,
);

final textHeadRegular1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyRegular,
  fontWeight: FontWeight.w400,
  fontSize: sWidth <400 ? sWidth * 0.040 :sWidth *0.035,
);

void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  print(size.height);
  print(size.width);
  sHeight = size.height > 900 ? 900 : size.height;
  sWidth = size.width > 450 ? 450 : size.width;
}
