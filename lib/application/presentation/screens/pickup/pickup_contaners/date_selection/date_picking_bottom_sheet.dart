import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class DatePickingBottomSheet extends StatelessWidget {
  const DatePickingBottomSheet({
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
      height: sWidth * 4.8 / 4,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
          kHeight10,
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
