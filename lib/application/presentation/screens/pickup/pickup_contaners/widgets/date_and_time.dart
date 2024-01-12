import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class DateOrTime extends StatelessWidget {
  const DateOrTime({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('PICKUP DETAILS'),
            TTextFormField(
              text: 'Date',
              suffixIcon: Icon(
                Icons.calendar_month,
                color: kBlueLight,
              ),
            ),
            TTextFormField(
              text: 'Time',
              suffixIcon: Icon(
                Icons.access_time,
                color: kBlueLight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
