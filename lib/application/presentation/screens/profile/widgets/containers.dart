import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username',
          style: textHeadRegular1.copyWith(color: klightgrey),
        ),
        kHeight10,
        Text(
          'Jaisai gopisetty',
          style: textHeadRegular1,
        ),
        const Divider(),
        kHeight20,
        Text(
          'Email',
          style: textHeadRegular1.copyWith(color: klightgrey),
        ),
        kHeight10,
        Text(
          'JJaisai@gmail.com',
          style: textHeadRegular1,
        ),
        const Divider(),
        kHeight20,
        Text(
          'Mobile Number',
          style: textHeadRegular1.copyWith(color: klightgrey),
        ),
        kHeight10,
        Text(
          '0000 000 000',
          style: textHeadRegular1,
        ),
        const Divider(),
      ],
    );
  }
}
