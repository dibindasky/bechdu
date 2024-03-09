import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

showConfirmationDialog(
  BuildContext context, {
  bool noButton = false,
  String? heading,
  void Function()? onPressed,
  String? operationButtonName,
}) async {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: kWhiteextra,
      title: Text(
        heading ?? 'Do you really want to exit from Bechdu?',
        style: textHeadBold1,
      ),
      actions: [
        TextButton(
          onPressed: onPressed,
          child: Text(
            !noButton ? 'Yes' : operationButtonName ?? 'Sure',
            style: textHeadBold1,
          ),
        ),
        noButton
            ? kEmpty
            : TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
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
