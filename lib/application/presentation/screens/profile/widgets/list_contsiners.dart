import 'package:flutter/material.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({
    super.key,
    this.hintText,
    this.colr,
    this.image,
  });

  final String? hintText;
  final Color? colr;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
