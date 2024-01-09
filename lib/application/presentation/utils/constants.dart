import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

const gilroyBold = 'Gilroy-Bold';
const gilroyMedium = 'Gilroy-Medium';
const gilroyRegular = 'Gilroy-Regular';

late final double sHeight;
late final double sWidth;

const kEmpty = SizedBox();

const kHeight5 = SizedBox(height: 5);
const kHeight10 = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);
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
    fontSize: sWidth * 0.045);

final textHeadMedium1 = TextStyle(
    color: kBlack,
    fontFamily: gilroyMedium,
    fontWeight: FontWeight.w400,
    fontSize: sWidth * 0.045);

final textHeadRegular1 = TextStyle(
    color: kBlack,
    fontFamily: gilroyRegular,
    fontWeight: FontWeight.w400,
    fontSize: sWidth * 0.045);

void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sHeight = size.height;
  sWidth = size.width;
}
