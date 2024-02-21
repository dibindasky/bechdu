import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

showConfirmationDialog(
  BuildContext context, {
  bool textButtonNo = false,
  String? heading,
  VoidCallback? onPressed,
}) async {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: klightGreen,
      title: Text(
        heading ?? 'Do you really want to exit from Bechdu?',
        style: textHeadBold1,
      ),
      actions: [
        TextButton(
          onPressed: onPressed ??
              () {
                Navigator.of(context).pop(true);
              },
          child: Text(
            textButtonNo ? 'Sure' : 'Yes',
            style: textHeadBold1,
          ),
        ),
        textButtonNo
            ? const SizedBox()
            : TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text(
                  'No',
                  style: textHeadBold1,
                ),
              ),
      ],
    ),
  );
}
