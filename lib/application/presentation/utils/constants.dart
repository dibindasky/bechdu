import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

const gilroyBold = 'Gilroy-Bold';
const gilroyMedium = 'Gilroy-Medium';
const gilroyRegular = 'Gilroy-Regular';
const gilroySemiBold = 'Gilroy-SemiBold';
const inter = 'Inter-VariableFont_slnt,wght';

const bechduMainlogo = 'assets/images/bechdu_logo.png';
const beachdulogo = 'assets/images/beachdu_logo.png';
const searchIcon = 'assets/images/search_icon.png';
const sortIcon = 'assets/images/sort_icon.png';
const joinOurTeam = 'assets/images/join_our_team.png';
const homeOfferImage = 'assets/images/home_offer.png';
const homeHotDealmage = 'assets/images/hotDeals2.png';

const mobileTransperantassetImage = 'assets/images/phone pic.png';
const imageDiffectedPhone = 'assets/images/diffectImage.png';
const mobileWithOutBackgroundNetwork =
    'https://assets.stickpng.com/images/5cb0633d80f2cf201a4c3253.png';
const mobileNetworkImage =
    'https://img.freepik.com/free-photo/smartphone-balancing-with-pink-background_23-2150271746.jpg?size=338&ext=jpg&ga=GA1.1.1412446893.1704758400&semt=sph';
const profileImage =
    'https://cdn4.sharechat.com/WhatsAppprofiledpboys_d7f9b06_1658641555734_sc_cmprsd_75.jpg?tenant=sc&referrer=trending-feed-service&f=rsd_75.jpg';
const orderSuccessNetwrokImage =
    'https://s3-alpha-sig.figma.com/img/0c88/1cbc/8744bb18caf793eaadc694435afa0ebf?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=A017~DJZjkzYM6URwdWMSAgfe5uIFNxttsFoqrT4I3j9ykGTh5i~h-aFqbwChF6LYA~JBB9omy8FkuD4bDqi~VX~68PIeQiXTeIkkHcaGigVbdZtc~VvKFW1gXkBu-3I9ionTIp15XhV7TJzpVoangnY0EB-CylKRhhfvc4Y0V7OQ2cWNiOwHuuOZlqnjko0q~N5-JQUsZcp-LGmJVJD342tYj3EdZTZ0Yw860ZMN2aD2YQkTO4HnSHHQK5eLg-wOEay2hLAMn92n6VS6PmPy6PlaOoNH9rZbte2Ni-Z3dc82QIx4vhUbr2q7WEFMD4ROn6vs5RDVDlzRIXeESZsMg__';

const onBoardingpersonScreen = 'assets/images/onboarding_first_person.png';
const onBoardingsecondScreen = 'assets/images/onboard second_phone image.jpeg';
const onBoardingThirdScreen = 'assets/images/onboarding_third_screen.png';
const locationbackgropundImage = 'assets/images/location_backgrounds.png';

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
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

final textHeadBoldBig = TextStyle(
  color: kBlack,
  fontFamily: gilroyBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.056 : sWidth * 0.045,
);

final textHeadMedium1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyMedium,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

final textHeadRegular1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyRegular,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

final textHeadSemiBold1 = TextStyle(
  color: kBlack,
  fontFamily: gilroySemiBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);
final textHeadInter = TextStyle(
  color: kBlack,
  fontFamily: inter,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  print(size.height);
  print(size.width);
  sHeight = size.height > 900 ? 900 : size.height;
  sWidth = size.width > 450 ? 450 : size.width;
}

List<String> textListFirst = [
  'Hi There!',
  'Want to sell',
  'Say No More!',
];
List<String> textListSecond = [
  'Welcome to Bechdu!',
  'your phone for a better ?',
  'Bechdu It!',
];

List<Map<String, dynamic>> testQuestionMap = [
  {
    "sectionType": "yes/no",
    "sectionCriteria": "all",
    "sectionHeading": "Device",
    "data": [
      {
        "description": "Are you able to make and receive calls?",
      },
      {
        "description": "Is your device's touch screen working properly?",
      },
      {
        "description": "Is your phone's screen original?",
      },
      {
        "description": "Is your device under manufacturer warranty?",
      },
      {
        "description": "Do you have GST val id bill with the same IMEI?",
      },
    ],
  },
  {
    "sectionType": "image",
    "sectionCriteria": "none",
    "sectionHeading": "Display",
    "data": [
      {
        "description": "Broken/Scratch on device screen",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Dead Spot/Visible lines on screen",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Scratch/Dent on device body",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Device panel missing/broken",
        "img": "imageDiffectedPhone",
      },
    ],
  },
  {
    "sectionType": "image",
    "sectionCriteria": "some",
    "sectionHeading": "Functionality",
    "data": [
      {
        "description": "Front Camera not working",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Back Camera not working",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Volume Button not working",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Finger Touch not working",
        "img": "imageDiffectedPhone",
      },
    ],
  },
  {
    "sectionType": "image",
    "sectionCriteria": "none",
    "sectionHeading": "Accessories",
    "data": [
      {
        "description": "Box",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Bill",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Charger",
        "img": "imageDiffectedPhone",
      },
      {
        "description": "Headset",
        "img": "imageDiffectedPhone",
      },
    ],
  },
  {
    "sectionType": "grid",
    "sectionCriteria": "one",
    "sectionHeading": "Age",
    "data": [
      {
        "description": "0-3 Months",
      },
      {
        "description": "3-6 Months",
      },
      {
        "description": "6-11 Months",
      },
      {
        "description": "Above 11 Months",
      },
    ],
  },
];
