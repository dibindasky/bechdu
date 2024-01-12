import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  const Date({
    super.key,
    required this.datePicker,
    required this.onPressed,
  });

  final TextEditingController datePicker;
  final void Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: sHeight * 2.4 / 4,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            height: sWidth * 0.18,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose the pickup date',
                  style: textHeadMedium1.copyWith(fontSize: sWidth * 0.04),
                ),
                const Icon(
                  Icons.calendar_month_outlined,
                  color: kBlueLight,
                ),
              ],
            ),
          ),
          Column(
            children: [
              CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(
                  const Duration(days: 365 * 100),
                ),
                onDateChanged: (date) {
                  int year = date.year;
                  int month = date.month;
                  int day = date.day;
                  print(date);
                  onPressed('$day-$month-$year');
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Cancel',
                      style: textHeadMedium1.copyWith(fontSize: sWidth * 0.04),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'ok',
                      style: textHeadMedium1.copyWith(fontSize: sWidth * 0.04),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
