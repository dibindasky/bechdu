import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

showConfirmationDialogg(
  BuildContext context, {
  bool noButton = false,
  String? heading,
  Widget? content,
  void Function()? onPressed,
  String? cancelButtonText,
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
      content: content,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            cancelButtonText ?? 'No',
            style: textHeadBold1,
          ),
        ),
        TextButton(
          onPressed: onPressed ?? () => Navigator.pop(context),
          child: Text(
            !noButton ? 'Yes' : operationButtonName ?? 'Sure',
            style: textHeadBold1,
          ),
        ),
      ],
    ),
  );
}

showConfirmationDialog({
  required BuildContext context,
  required String heading,
  Color buttonColor = kGreenPrimary,
  String? operationButtonName,
  String cancelButtonText = 'Cancel',
  VoidCallback? onCancelTap,
  Widget? content,
  void Function()? onPressed,
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              heading,
              style: textHeadBold1,
            ),
            kHeight20,
            content ?? kEmpty,
            kHeight20,
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: kBluePrimary)),
                      onPressed: () {
                        Navigator.pop(context);
                        if (onCancelTap != null) {
                          onCancelTap();
                        }
                      },
                      child: Text(
                        cancelButtonText,
                        style: textHeadMedium1.copyWith(color: kBluePrimary),
                      )),
                  kWidth20,
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: buttonColor)),
                    onPressed: onPressed ?? () => Navigator.pop(context),
                    child: Text(
                      operationButtonName ?? 'Yes',
                      style: textHeadMedium1.copyWith(color: buttonColor),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
