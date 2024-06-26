import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
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

const pickupPartenerIcon = 'assets/images/order_preson.png';
const pickupLocationhand = 'assets/images/order_hand.png';
const pickupLocationIcon = 'assets/images/order_location.png';
const pickupTimeIcon = 'assets/images/order_clock.png';
const paymentMethodIcon = 'assets/images/payment_icon.png';
const pickupclock = 'assets/images/order_clock.png';
const mobileTransperantassetImage = 'assets/images/phone pic.png';
const imageDiffectedPhone = 'assets/images/diffectImage.png';

const personAnimationPic = 'assets/images/personAnimationPich.png';
const mobileWithOutBackgroundNetwork =
    'https://assets.stickpng.com/images/5cb0633d80f2cf201a4c3253.png';
const mobileNetworkImage =
    'https://img.freepik.com/free-photo/smartphone-balancing-with-pink-background_23-2150271746.jpg?size=338&ext=jpg&ga=GA1.1.1412446893.1704758400&semt=sph';
const profileImage =
    'https://cdn4.sharechat.com/WhatsAppprofiledpboys_d7f9b06_1658641555734_sc_cmprsd_75.jpg?tenant=sc&referrer=trending-feed-service&f=rsd_75.jpg';
const orderSuccessNetwrokImage =
    'https://s3-alpha-sig.figma.com/img/0c88/1cbc/8744bb18caf793eaadc694435afa0ebf?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=A017~DJZjkzYM6URwdWMSAgfe5uIFNxttsFoqrT4I3j9ykGTh5i~h-aFqbwChF6LYA~JBB9omy8FkuD4bDqi~VX~68PIeQiXTeIkkHcaGigVbdZtc~VvKFW1gXkBu-3I9ionTIp15XhV7TJzpVoangnY0EB-CylKRhhfvc4Y0V7OQ2cWNiOwHuuOZlqnjko0q~N5-JQUsZcp-LGmJVJD342tYj3EdZTZ0Yw860ZMN2aD2YQkTO4HnSHHQK5eLg-wOEay2hLAMn92n6VS6PmPy6PlaOoNH9rZbte2Ni-Z3dc82QIx4vhUbr2q7WEFMD4ROn6vs5RDVDlzRIXeESZsMg__';
const orderSuccessLottie = 'assets/images/orderSuccessBechdu.jpeg';
const onBoardingpersonScreen =
    'assets/images/personAnimationPich-removebg-preview.png';
const onBoardingsecondScreen = 'assets/images/bechdu onbaord second image.png';
const onBoardingThirdScreen =
    'assets/images/bechdu onboard third person with mobile.png';
const locationbackgropundImage = 'assets/images/location_backgrounds.png';
const emptyLottie = 'assets/lottie/animation_lmyr4fc2.json';
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
  sHeight = size.height > 900 ? 900 : size.height;
  sWidth = size.width > 450 ? 450 : size.width;
}

String imageUrlchange(String path) {
  return "${ApiEndPoints.baseUrl}${ApiEndPoints.imagePath}${Uri.encodeComponent(path)}";
}

String lowercaseFirstLetter(String input) {
  if (input.isEmpty) return input;
  return input.substring(0, 1).toLowerCase() + input.substring(1);
}

String uppercaseFirstLetter(String input) {
  if (input.isEmpty) return input;
  return input.substring(0, 1).toUpperCase() + input.substring(1);
}

List<String> capitalizeFirstLetterInList(List<String> list) {
  return list.map((str) => uppercaseFirstLetter(str)).toList();
}

Color getStatusColor(String status) {
  switch (status) {
    case "new":
      return kBluePrimary;
    case "cancelled":
      return kRed;
    case "Completed":
      return kGreenPrimary;
    case "processing":
      return kYellowPrimary;
    case "rescheduled":
      return kYellowPrimary;
    default:
      return kBluePrimary;
  }
}

Color getStatusColorNotification(String status) {
  switch (status) {
    case "Success":
      return kBluePrimary;
    case "Cancelled":
      return kRed;
    case "Completed":
      return kGreenPrimary;
    case "Requoted":
      return kGreenPrimary;
    case "Processing":
      return kYellowPrimary;
    case "Rescheduled":
      return kYellowPrimary;
    default:
      return kBluePrimary;
  }
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
const gifNoData = 'assets/images/Mobile Marketing (2).gif';
const dummyImage =
    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAKgAswMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAEBQMGAAECB//EAD4QAAIBAgUDAgQEBQIFAwUAAAECAwQRAAUSITETQVEiYQYycYEUQpGhI1JicrGC4RUkM8HwQ7LRJlOSovH/xAAZAQADAQEBAAAAAAAAAAAAAAACAwQBAAX/xAAjEQADAAICAgIDAQEAAAAAAAAAAQIDERIhMUEiUQQTMjMU/9oADAMBAAIRAxEAPwDzh1YsXT5cT5dTmrqljHJ33wPE5jkF+B2xeMvpMtbKRLGwhzGQegHgjucei3pmKHafZBW/FdbT5LLk0bj8IQFF/m+2M+AfiOPK55abMKc1WXupkmQpq6Sd2t3G++KvXLIKmQWtoNrt48jDH4VzSfIamozOII6LH0zHINpnb5FvyOCx8hSOSME0IhaPUqtKDJqVBUA1fwtW3Rpy2pqJmI0qe4QG+/IJ9hjzbOsnnyfPdp2NEUM0VVGwDdLgm3824XwSw7GwUPmFbJQTQT1jtBLP1mjLbPJvdtuOT7ffB9PRVdbLRZLT3aslQauoxARQGZI/YAEse12tyuBieJr0/QF1561jDTxLrlcAIh5sLKg9gAN+/wB8bdBLLHS0xV0juofgOfzP7cXv2VV8HBXQlyaNllidK+UmMxON4l4O3cnjb38YilRqCJo2OqoqNjbchL7/AHJ/Zf6sUTJO3pnE4gmqQwDPTU6KADsW/pH9xO/38DDwfiqr4Y6Xp1xTdepm5YRNuq28epmt7r5wuo4YA3SrHP4WD1TWY+pztb7Wtfzv3xaqb8P+DMcchkkqIlqWiFgVLjS637Wtt/8ACjBuROTI0tA1HKmV5cs80bfiwmqnjYXVGLAKpPsUJP0viKklFPlEs7P1JGuV1WtfSbFvqbta21sQ1fUzCoapVVSn0ED1eklQOo1/Bba/i4xldSTrADpZYoItUinZtclrsQL7+oC3bfzjUl5FzrfYIuY1DpCksxtDqkBOxNrtv+/64rdZVNUzGRr24AJ4GCc1qQoWFSbuLkn/AB/nEFBQNVd7e2KIlJbL5n6BdXbD7KM7FJTGMrcf4wlrKc085Qm+I1OF2uQ+W5H1I1RXVLvA2kHEWYU8sM4EramIwPl9W1JJqXvieprGqpdTYxS9m01ojiXe2LRkGcSUaCO1wcV2CMuwUfmw6pqKSHSzLpH+cN0vZNeRwug+rqvxDa7WJO31w1yHJ+tEWuGllOkXHA/3OFMEeuZUA9K7ufbx98XfK1Wgy8zqQJWs7tbdF/KP0328+2J89cFpE+L53ujBk0NIOgKUy6Ni+i9z3/ft2xmB2rayVi8NNVOh4aOYqP22+/fnGYl5ZCn9eI8YIWSey7BfmOJ4swXqMTcWFltjhiKeAo6et9ycCFVUKwQqWPAF/vgg12HUFQaioipqqMzRSSACIGzgnYaT2J97jyDh78TZbQCJBktUJqSmUs5UWa/5nItx8o1cWA73xXaZ/wANC9RqtI4McBF/TfZnH2Nh/cTyox0ahxLAtK8qOD/DKbOrG4ABG99+3ke+M4tvZzevBPk8MP4mOrzLqNQU8il1UA6yx2UA/RmI4sp8jFnzj4YEf/1HkeZNUZWzmX8TqJlpmvc6u5I3/q7EXNy2rMtySpyWlyvPImyausGp8wjjU000jKL307Djg6Tt2w7rMvSB4YBHTZRXLGjqYdX4OuKArpuOGta22vj5gtsKd9nS5fgrVTBJn9PTZlXUslPmU69WmawKTwjYb3sGAtydy1+DYVBRLLVPUSxhZ+pojQ7aJBt9tIt97e+LFntXWR5g+R/gRRRtIsyR69QowCLmJuNNlY7ekFiABowgaZVYS0+sqi2ivcsSb/vYlj7lR4xZhW0IpfJhLxwoFgZlFPA/8Q2/6jgHYgc2uQB/cBwME09Z0GkkdPWXsxB1WSxDrtyLMF8E78nAtLERGZpCGSn9C3bZ5iOfovzEjwWHODsiomqauMKCI1IJB/KLiw+tyOPzMPGHaWhN9Ic0dIscbNNoEMDoCl/nZfkjv4vYnzf6nAOc1BYTxO1gn8Scm3qk1C4/0gn6XbxiT4pqkleGmjC6I1D3H5QBZB7GxLHvYoDxiqZzULd4EYmKK6Cw+dyLEg+2+MxrkZiw8nyFNZUNPMZN+AATzb/y+JqKvejuBgLjnm/bGDfD2ehCYVU1LVMmtsaXES4mTAaD8kyDBCDjEKYKhGCSArpDPJ9K1aFxfFxr6ynFFpAGr3wn+FIIPxQNRa1tr4sGbU9PLUp+H5FgoHdjsP3wrJSVElU+L0CZZRARlplLerdCANb+Dtuqjn6j3Il+IpKzLlWJ2b1AvIw5dyd/02A25IPBw8ilShenpKZHlcKzBgLWRb65CexJJUdxftzip5xmctTVFqpiFjJYodliAHy29rjY7lmO9xiaW7snXfgOpHiSmjWfLpqiQKAzx6yoP8oIIG3y/bGYSPOsja3krlY/liF1X233uO9+98ZgmguJSHLTSAFjpvfbxjbU7yVKxEqb8nwPJ+guftiWkURoaiQelRcDzjqOdIVeSZrzyrqKDsvIH3/wBhfRY36RBP6qkhl6ar6VBNtK9v1vc+5OCIWalikn0ETykrAO9zyw+gNhbe7A9sC0wFRVqJSArMdbHgAC5P0H+AcNskloa7P4fx8Nc8NitMlGB1Va91bY323ba++NMqtSM/h6qziI1NHXyokMMVjS5gNmNjsCe3pJ7i3A8WjLc8pDCKSjb8RFI3/NZXmFnjdz8qxub2ta55HspxumoPx0/wCGjq6TNIor6qLMV6UxNzax097DcLwOcVrOKGky2SmdIKimlRzII5RrjZfzSK9zf1aQLk/l2GOUzb0yGb5VteQz4kqJszEWX5aJ5prkfh5ZQ8sYNtaqw+dbra9zsDfY3wjpKYM0kqtpipwUjZhYl+7+25v7Cx/LgcSVEdQsqs8VXMTo3t0kFwTxtsCPoG774bU9ek8UcUtM7vqVlm1eo2blgOdV7XvcXY3IOKZniixLoghRZdKQsopoowVDnbTzuPLEFiPCgYtdPTrl2W08guY5k6tQ8y+rQACRyNzqI3/msbbYFy/LDVZtTiRIpKdv4ryRW0PYbnk7Erxzba3qGGWbZgTSGSJGElQTHCvfSOWHjY8k3u39OBuvSEZJdUkVOqlIgmkmHTeaRptzqKg3J35J2xT6ubrMNI0xrsq+P98Os5rOpH0Evc213FgLcAD9/vawtuikFmI7c4pxrij0Zw8URY6GNY7XHMNSdLiZBiNcTouMSC0SoNsMqOPVYYDgj1HFgy6lFgTxbBEv5F8ZCIQ0QUJ8x49sPchELZhHFM5LFG0mwshtuxvxt7H6YUxIDd2KgHZS29vcDn9MN6eCLL6Garq4EkqCumKB39Z3FzpG5JuF/LbcHnE2al4PPUvi2EZnncM1aYMuDSRAqsgK6VCLxbubWJsfBGkEg4q9fMkjehGKKwsl7l3J9I8He7G3nzjJqyWRWZIY5GeRbpEulH2GiMDspK37elV4J3DbVPIdDKdRZVc9yfnf73sPtvdcBMcUFM6ITLGh0LQ01VbbrSFiXPc7dvHtjeGkGb09DClKgZRGLENT3N+972N79rbcYzHcg9FQfozBVXX0Yhqe/ftYe54wLI/VLSuAWO+3Y+B/2+2LBUfDVQlfSZRBWUstROxJ0sbDci5Ntl225O5PcYNT4CzKEyvNJRzRQFuosUzkuR+VRpBuTYC3nCOh37Yldsm+BcnDU82YSLlM6hSDTZhMVHTsDqsFY++4Pa2LHFk9NQM2a1Pw9U5dIt2SbLqpD0VZbfJddwD/ACkkna/GKRnvw5meW9D/AIj+GMlax09OUMAq/ThR/gfXC2CSWSpSnop5IoEICaGKhQvq1mx5B9X144GOUOu0xVw772eh55m8mW5LIalXq5Kl1MsVXSG4sAP+oABYAEXA3IYi18UyoLZhLI7lqaONFZ01FxEo+WNdXsWa225IsCBiaqzasbLgJ5JDSA6USVtV9ICqPYWXfyAw/MMBo0jUkcMgZYx/FqpL7sTuATtudub29N+DijFCnydEa7NwRdQn/wBMSrqbe3RgXne23H7b3vh7ThvwccenRNJddCcrvZiPBtaNfBv4xxTRrl1LJI5VaqUWtbaJuwt4Vd/a1uLYa5FQPWVMaBWI0rGobmwH+5v7l/GG1XWylLYa9FNl+VKaKNA0hCzS6eARfTYg7cC54GhecA5tUO0X4uTQs5TpJGB8igDcbk8k89ycX2bLFqzHQxWMFOfWf53/ANrn73xXPirJvwsEpkRSQo0kncG/Yd9u337YlxZJqirFjXR5bUgliTe/e+AniUxO/UUOpAWPe7X7ja23v5wyrQATa3O1/wDznC6XpdEadfVub3tpt2t383vi2noqqQbYbDexxsY1v35xJGLnGbF8SRBgqFLnEcSXIw2oaTWwFr3tg0dXSCcqojIy2F8WB4BCgVQVPcjkYJy6kFPCGYWFsbnSaeRI4xeSZtCDfe/A27f/AN7YVWQ8vMnTOaGKMOZqmeGKBXCgPc3O1hpXkC4vfbcDvfGviHN6WohkpaOWYws4BYRBbx2Fwu+oszbXO9z/AEkYArJYDMkCTEQwoQDouvclmvxezE2HyjTyBhdU1EIdlSnZLhl1yyElLb6yBbdVJ+rsSN8KUbrkC42RAp0pv40cZBIAU3IB+dh/SoBFx2Ud8GZZQVTVMZEDpUSraiSUaRpPDEnbz33N8Loq2eeOqKslHC8StL00AKRqRoT+4nfnsPJvoNLXxTV9VU1DJboU97MwW/C39vT92PO+NrZ3FInemq43aOHLqepRGK9Zhq1kcm+ri97e2MxMtfDTKsDyzlowFPSiOke3zdv1841hfZ3QdkVCYKKqz/MMmyqaGqe8CTy6FS/8q6Ttz+m+AMyzmlpaTox5JQpVSXuyoNjtv8o4BYb9zf8ALjlKlOquYS0WW01NGAlPCd7nkE3vcjck/wBuwvhbFltd8QSz1wiYwQjXKUGlUQfy348DwThbWvIuMbuuwWsnWVTOlPDTvUKFCU8ehUjG17DuxH+f5hiakpikUUesI1SRcFgGEd9rDm5P+FxPlOWJmdZK1XUU0CImrQGDB7EBY1K8eB3/AEOC7UFYZhNJOZxeOm6aqq6vzsTvsF2G23vhsteh1fQuqHhqa0NK8a5fS7EAizkD5QO97W+gxuGad3iXRd4pOoU+bXKxuqk9yBz22N+2CoXpo3pI6aip9VO9mkmZnE8pta68aRY9uBta4x3TyThQIJ2CKxCuloyxc2Ztu7WCjnYHbnDlv2amkG5fQyyKZJVZgQCHlJBcncNvvvp1bchVH5sW/J6h8poRM5Q1Mvogs2q38x8GwtvwSR74By74eqEjM1XJFCimxS+tuLkqq3PbYbEBV7i2I85qKdao9N3ZIfQqsmjSOwtzcnUTcDc8bYTdc3xQzDXOtF0yHNoKeyAl3PN+ScV/45+IKWu1wlmjKABNttV7HV3G3jFNqc86dQZKeQFe2tdXK7n9ScLVrxK4ppzO0Mjr6UkC+rgHcEdzjY/GmK5Hpzj9kdRULCJVMiTFZgypqJjJH5ipFmBFxyD7YUdbRP1enExuSUKejfsAe3j3wXVmpqpqiMhZHiLySNGgNuAWuo4uB7d8dSzUziqkd1lqJYVKfwBGqkkA7WsptuGBH72wbYdPYslk60rPoSMNa6xjSv2AwxmNXUxI88glS99UaAKjt2JAFj6eOP3wFpVymhdAtY6n1XPn2HG1u2G1HTSRJ/GhB6q+gOxBHBDWuDwdiRY3NuMEgZk3RUpkewF/vi55HlBKqSuN/D2UzTRKhV2iRtRBW4Vm8n7fti9U1AKeAHSb2384DLlUrQnJ2V6ph6aaCtlA9RwFMwy7L2qW2qan0xgDdE8/ft7lQMNc4KU5UyKNAa5W9r/TCD4oZ+spcM0r3RYBsQDYBR2BYnjtqvyhwmXvS+yPIuyvsJKioiWArrkfRGbg7839wAoY9iFXziPM46WGFoAuoFA8rM1yIwbon1Y3JPsGtyMTT1Ayxnb0t04GGsA2di1tifJuL9ljFuThWoV6i1XIFjifqVBJHqk3snvaxFuD6rcjFLF6OMwlkqpUSQNCsqh2BBtHEL6QPNhcm3cgbEYLqZlSPV0isUCr0lI+ZyNh72H73HfEcctRU5hFL0DL1nXXrvojQ/KrN25DfXSfINzrsgps2mhMWVQTJGRJN/w6sG6nbSNRC8qBe/CPblcJyZFPQqno80LsxJIZiTu1r3++Mx6DLl+Q0cjU7UWewFP/AEyIzbv4P+cZjOaB/wCiRbnlTBJkdKYwkUaOdMlHT9MAf39tR4t2AxWmqJ6dWhEsnUkAac6v0X7D9yfGDM1esR1p8xmllNHzE7BkWQ8JYbbbk+wt3wFQL01lrZDcRXKmQ31Sdr+bc/p5wErXQab1vZ3UQPGIKRJWjqGPVmbV/wBPY2B+i3/fzgmA9GAzaLGYdKmX89r7AWFgTcEm55v7ESMSyOLqhlqd3DHTaPkXPa9tXsoU98FVReoqNYYKApihB26aC5diB/q47lgNwMOk59EQVIwun5UuiORsNvW58+B59NuMPchomlzqJemdStqCMpbpqB6bgb3A2t/MXvwcQ5bT2gMjxuYQVPTK3tbdQw4IHzG+xPvbFyyHK8xjy2pfqvA7qTGqMAxkI2uT4uNiRuCd74LJfFE+XJpaNZlmcUUbUqyAhS1wq6Q7d/Sp3u17lm3sDuOaBnGZKX6cRULv8oFr33tbtgvOK1YFLRzdW66EYcKo8DsOOwud7b4qE05dyTt4xuDHr5Ho/iSsa2GLOvq6rP8AKbabc2257XtiOOraCVZYXAddwbBgD9++A9eOdeDrZcrCRO4iEYJKgsT73AG5/wDOMTRTxSOXqIw+pCAt9ADccLa3BNvO55wBe4tgwUcscQkOgRkLdlcGxYXHHfnbCWFL2HLBTO9NpkCRmMa7RksCAbkrfck+DwPO2LVkOUTSOJ5oTLCPSXR1sWttuL7bjb/vfCDLOnDUrJSfiL2Bik1adLbXItzb1C23Ptj0r4Yy2m6sbIpUmNSfUJLmw4IA/Tsb4yrcyFT0izZNlP4SNUlRVKG5sN9/fDKqXWNKfYecERxrHGFTkiwt4wDVT9NZGP8A00U9uR/v/i+PMq3VEzYnzHTFHPPMg6NMhZQQN3PB/e/ncYoVcerNHVRSSvVPcGFxqe/DFfJuwAB/M7mxxavjGtVIIYDKYodJkkIO+ob8fe/1AxRjU1MrCJ30xCS6rqsVdbbLx8o0/wCojkXxfgl62TvtivMpamOXXUR6JE2jjCn/AKo9IAHfTbb+re3qOBOnENMTWZac/wAQtIAjOSLC/FtrXv8AKCeb4Yz5vTyiaprImlLXio5kuXQ23e1/V2tfyADthhTfDrRZNIJGkiSa/wDzsaXhjt8/U7gC1rGw2bffDqvS7Ap6XksGRJDk0ayVMmY0jRRmWWaMmpgle4JkKgekdgLKPe4BwPmi1GY5bmFXQ0+WZlMWZ1zKCXpSxA2vYeygDZu3c3wnXL8y+HpFM2YPRUUyCSN4SJYggtp1Di9tRJtufvivZlm8eZgRrQRR1Rexqo7q0kfgj3774RwTfIi4VVdArZpWO2qSpqZGPLmViT97H/ONY2lQkShOmW07X84zBdFPCSeQNUSrDE3UYMbNfaRz8zX8Hb7AHBEhgliSMBmpqYan7a9/2LNt7D6YhRfw1Lc26kwKi/5U3DH/AFG638BvbBQpgYPw+6xRXlq5AR2Hyj6cfW/sccgGagYiNp5mQVM4uRY2VOSbdhzsf5bDnEkVMzkP029QF4zudPKqfGq1z9LjnHKMOpqBKFwrSFV3C/lVR2ubEAXIAX3xbchyhKqnjRgLy6pHHA03AIv7kW2NtK3FjhnJStgt9knwxG/8WcxPKQokRYm06iT6QW7ajZr3uAF47v8ANetT5TDSCSGOWUGOTprpCLa8hUePlX738YZxxU9BTrFThUc+t3ba29i5NubceLW2xQvinP8A8PNPWaFkl0iOGE8RxXJAb+pj6tI325sCRP3kokUO8mmVP4uzKkfTQ5eJQgYO0jMbMLWWw7ixvfg322tisg88AeBiSqkeoqJZpGLtIxYvv6icQ49SJ4zpnqyzq+NjHIxtcJtlEki84No9AmUyKXWx9Ia19vP1scCJzg2mHqGElMD/ACmGN6nVEpVL7BmuR98eq/DiiniRzjzX4fUB1J7YvmX1aoqLewvv9MDmW1oy67LXLWpFE1+47G22F1VWGnpTUzMBwSnF/A9uftqv2wvaRJo0eaTQtuoxvssY5J9z/wB1NjfCD4kzSSemSJQxUSDSvd9QNrnybG/szYkjEmyenroSZnWzVtbdpB1CQdZGyjm9uNvmt/YuK/XVCzShaZRFG+qOAMfkiBOpz339Vz/ePGJ6ks/XUysi2IkYrckX9RI8swNv7Lc2wJN60JVf4lQOnEGvZUFrse9rAbnsAfOPQ8dCiOAiM/jkT/oKI6eIjfWfluPa+sjywt7X34QzP8RSwnUmVVcqojyMhakq7KBHHIDsHZSp7MQUsx+XFNyB6WpzSzs6yRMho5y2gB9RvqvxquT7C/gEOM1zdIMyakqaN4qMqpzGlLB1lmJ+aK/ZlXvyBuNQvifMuRi1ss9TRLUSIuWvFlOcVLGRqCqYtSVfnpNYAX2NlsTtcYpXxhRplU8S/wDDHy3MCD14NYaPtuhGxB+2GHxgs2YZbRV1BnElXkcEhMUc7fxqVjb0seSRba+43xXq3O5s4njGZStJGgCpqN2UfXnARyS7fQLxzveuxcIZXGr07+cZi1w/DqzRLIlVGFYXAxmD5T9m/qf0LqOop4Kh62ohjnAGmKHUdKHT6fV+bSAD9becYySmP8LpMsxs9SFBBIG6xjxySbcG/jBUFNHNP+IdwtLASqSsCTPLuTZRzc3Piy28YstLlkVLk9TIJStVJsur1sZDsSzdyN/SNhYk3BAxyaRDky+hJl2XgThHVaurDXMKv6RITvqI50jtwCed7Yd0uYFMxIDiQqdLtFbSSNrL/SLaR2249W62WJaeGKmpBKhIAIA9Tm4t/wC7V4LMthbctPwyZLl0NRHEGq5z/AW/p0j5mI8WsB7BSe+GPXsmrlX8+Qn4iq2qP4M2pUULLUe5/JGPpsfqR3Bx5d8Q5gtbV2i0iKO9goAFza9rdrBQPZcNPiDMmqWeBWYxITJUyA2MrtuV/Un/AMFsVcj6/cYowYlK2WYMfFHBxrHWNHDboqk1joY0MdDE1MfJLHyMMKUeoYAjFyMNaNbEYGex/LiiwZe/SXUeNsO6WuWN0ExYIt2ext6QCft9cV2ks0hLfLGNR+vb97YlhlNTVLDewZHDWtqA0MCR7j9L46/oRvY/q84VqfWwukjmVrDZwpsq28BgdvYAbEYCpJpKqqMjBujMskKSd2aw6j38hjGg+uF1Uks+ZLSUw3toAUbRhUuR76R+p0+DjuozKPKpqalmjZaaEhp4w4O5JXQCeflVvezG3GAE3X0QZvlkiRU5nnRhKGnqyDYKQ2krfxYWB8AHFerKhnjaVtpZhpjVV0lIweAO1+PoD5wwz+RmzSqimZohr685AsdOkafvZuP5nOFqSkf8+6qt9oY0/K1tj9FFiP8AT5wSfRi3rs7nZaal/BReqdjaYKLnV3Ueew+urzhvVZpSPkMuUZnG0tZT+unq0a5LmwKse4AAF/Cr4wipJjSRNUaAXkBSInt5a36fe/jEMSkOzSLsq6mB84GjvDJmukXRDG8vqceB2H+f1xkEHVfTGhsu5IxZsnyCDOKFK6jvJLTWNXAx9TDyuLNVfD0FNQTZjkcOqOZLPCx3jPcYBtJm60ee/wDE5V9IdrDbGYGkgYyMSrA34xvGcEZyLnQCWeFKekUfhaYhDP8A/clO50/7chVJwxmmgp6aGGJg6RglEFtUtzY33soJFuLWQ/Md8McvyYVlMEinCxICqKoG4v6j9/07HsMJq2mL5nNGqFwp02tq1bW/QAaR50t3bBzpvR5dy/ZJl6yVmYrNUMbH2sqrY3NzxtqJJ9+64nzjOoKhpJ3ewPogXT8qC+nbyb3t3J8bY6zbVl1GtKyss9Stm33VLj/3EW9wD/McUfNKnUzPqBO4jFtx5b/49re+GxH7HsbgmkmwDNanr1LxRqBGjEDe5Pk37/XvheQO2JyL30i4/tviIqe4titvRbM6ISMc2xIecc88C5xPdDJRzjtecFx5ZUyIHC7YI/4LUrF1Suwwh1tjlLQNAtzhnCNNrcnjAsEem9xYjDXLqbqiVzwqje17Hz+1v9WGrpCqybC6KDqgxKbJcdQ+F5Jv23AwX1NNQZREVDKw2W3oFgBbtubkHgAjg45pYmhNNT2JecO7AG/9qj7rbwSdJ7Y3mkzLTTdSI3Z5DZOGJaFAB9QAB/SuEti3fZuhmjpcvnrpWlElXKIF6a3YIzqdv7wXv5+oGFGZIq1nVmBdII0aQ3v1J/lIHsCv0sL98OEFXNldOFDlpI2ihJIuzs0oLA+11sdux25wlq+lI+q4MEAMpW3pkka5Uff9gMbItPdEnxSxzJaOeJmfMK2/4zV6byC2lbdgFdOe1r/LhNVRK0qUsDXjjAQX243Zj97k/pwBhnSySrlVbUzNeeR+tD3KjVodh331qPomFToyQELcvJux8Dt+p3+wwK6Q3lskjRJZVmIvDEAEXsR2H33J9ycG0cCTSFasMFlv03HBf3/x9sA05kKWUX3JVff/AM/zgmhmZozSOLq7XQ+Dg50xd7QVklfVZFXiSJiCh0kDg4t9R8Sr0hNRAoH+eM+e9sVOpF9Ebj+NHsx84iklDMdHHGN4rYv9lNB80sM0rSFd2N8ZgVSqqAcZjehW6L98PmrWE08adKFQSQD6m2tpBPjYX8kDscNPh7Kmyp6nMM5CJpJcqOEB3Fu/sL+B3xLkASnoTmVWhYQxXC7C1rm5+gJNvJPfiv8AxP8AFD5l/DhVoKZCWOpgxe3c+w5sCd9+1sSpVdNSFM7SAfjWviYy1YNppjpsnIH8o9xsPtjz+ZmlkLuQWI7eME11S1XOZDqC2sik/KB2wI2PTxwsclCXsb5S9MIv41ve+Ja80Bibp6cV8m2Iyb7YTkocjh7a202t7Y0pswONnbbxjk8XxM6C97LHTZxHFTKlr2waM8jmpjHp5whynLGr5NK/XDOoyxqBtLi45x0JU+zcua1IMVLyWUW1YsEVMkVHBEbDXaV1YXFvyg+2zE/fC2igDhL7NMTYAXsgH/f9NsP6+iB0U3SUSToASSdIQCyj6bqSe6g7A4PJXpEOyKOVopGqmSRUMa9Fid7XJZvrqPP8zL4wtmqhXvIQvSSOE3sOCWi1foF0j637YZZpV/wpJdhZVWmEhAZTp+Y/2q5Y/wBRwgpY3koZgl4zMY0UEfLGCxBPuSD+/nABLy2FyV7Jk0E+l3mnd4aYWJ0qrKT9zrYfr5GFLstWyU0bBkXU8rqb6m/Mw+wAH284lqJi6l4mIjjXRACflXYFvqdh7n6YGlXoQLfZ5PXKt/8A8R+9z7n2x2woSCKWb8bmamQdKm0GFwDbpow0W/8A2H3A8YEkkMiKgFpJTqfa2k+PsMcTX0inXVcm7nvfx9rn7k4c5zkdXl0sTTRlZa5RKoPFjYn97j7Yzl2Hx62KIvRJqi+WMceR3xOwMSLKOGN1GMqofw9R0LepD6j5GO6f/mJDEvyrxg30Kb2RTSdSzfmwRRU7uC57Y4WlJlNuMGwVCxJ0/GCkXb+PxA5ZGWRh4xmJnp1dy3nGY45VJ6hmE09HkUp9VPCU0RILhnYnYn9uLGwJG/Hmmc1HFOh3azu1/wBB/wB/9rYzGYL8X+mZg8C1qeTTrEVlG49sCtz74zGYfkb0WI4dHG54OIiB2xmMxFTYaOcbQXbGYzCt9msf5BUNSNrVdV+cWimjizM65/lG+nGYzDqWo2TTbrLxfgIp8tSCdqudL06WDC3ZTfT49TcewuOMcQVTVGY1E4C6ggsCNkc6mtx5039hcc77xmE+UBX+jQqzekqK6pqJOr1YgdirXGhbKLedWkb9vSbnfCsU9RFkssrkRtV1CIfCIqOTt2FiD+g5xvGYGae9FNwpS0RQKqD8RIp6UIDLH3Zj8iH35Y28n2wAWu7zuQX1X9i57n6c/oO+MxmGiV5Mo4Q9QrSs2hRra3Nh2++GVfnNXmMSzTyk9IlF/pHIGMxmON5PbQLOBJRiW95OCcapBohD/mOMxmD9i/QaoCRFj8xwvIZ5tXYYzGY1i49jJJlCAHGYzGY0HR//2Q==';
