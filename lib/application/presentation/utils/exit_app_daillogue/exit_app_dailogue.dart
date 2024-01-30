import 'package:flutter/material.dart';

showExitConfirmationDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Do you really want to exit?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true); // Pop the screen
          },
          child: const Text('Yes'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false); // Stay on the screen
          },
          child: const Text('No'),
        ),
      ],
    ),
  );
}
