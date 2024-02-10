import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'FIRST NAME',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .033,
            ),
          ),
          const TTextFormField(
            text: 'Jonathan',
          ),
          Text(
            'LAST NAME',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .033,
            ),
          ),
          const TTextFormField(
            text: 'Rosario',
          ),
          Text(
            'PHONE NUMBER',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .033,
            ),
          ),
          const TTextFormField(
            text: 'xxxxxxxxx',
            inputType: TextInputType.number,
          ),
          Text(
            'EMAIL ADDRESS',
            style: textHeadMedium1.copyWith(
              fontSize: sWidth * .033,
            ),
          ),
          const TTextFormField(
            text: '@gmail.com',
          ),
        ],
      ),
    );
  }
}
