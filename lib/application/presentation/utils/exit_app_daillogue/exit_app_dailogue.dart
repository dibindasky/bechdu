import 'package:flutter/material.dart';

showConfirmationDialog(
  BuildContext context, {
  bool textButtonNo = false,
  String? heading,
}) async {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(heading ?? 'Do you really want to exit from Bechdu?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text(textButtonNo ? 'Sure' : 'Yes'),
        ),
        textButtonNo
            ? const SizedBox()
            : TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('No'),
              ),
      ],
    ),
  );
}
