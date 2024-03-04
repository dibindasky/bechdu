import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

MaterialBanner noInternetBanner() {
  return MaterialBanner(
    backgroundColor: Colors.red,
    content: Text(
      'Internet connection lost!!',
      style: textHeadBold1,
    ),
    actions: [SizedBox()],
  );
}
