import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class StreetAddress extends StatelessWidget {
  const StreetAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'STREET ADDRESS',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            const TTextFormField(
              text: 'Aluva',
            ),
            Text(
              'STATE',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            const TTextFormField(
              text: 'Ernakulam',
            ),
            Text(
              'CITY',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            const TTextFormField(
              text: 'Aluva',
            ),
            Text(
              'PINCODE',
              style: textHeadMedium1.copyWith(
                fontSize: sWidth * .033,
              ),
            ),
            const TTextFormField(
              inputType: TextInputType.number,
              text: 'xxxxxx',
            ),
          ],
        ),
      ),
    );
  }
}
