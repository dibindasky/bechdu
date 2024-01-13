import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/date_selection/date_picking_bottom_sheet.dart';
import 'package:beachdu/application/presentation/screens/pickup/widgets/textfeild_custom.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class DateOrTime extends StatefulWidget {
  const DateOrTime({super.key});

  @override
  State<DateOrTime> createState() => _DateOrTimeState();
}

class _DateOrTimeState extends State<DateOrTime> {
  final dateController = TextEditingController();
  String selectedTime = 'Time';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('PICKUP DETAILS'),
            TTextFormField(
              inputType: TextInputType.datetime,
              controller: dateController,
              text: 'Date',
              suffixIcon: InkWell(
                onTap: () => showDateModalBottomSheet(context),
                child: const Icon(
                  Icons.calendar_month,
                  color: kBlueLight,
                ),
              ),
            ),
            kHeight5,
            Container(
              padding: const EdgeInsets.only(left: 10, right: 12),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: textFieldBorderColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        icon: const Icon(
                          Icons.access_time,
                          color: kBlueLight,
                        ),
                        value: selectedTime,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedTime = newValue!;
                          });
                        },
                        items: <String>[
                          'Time',
                          '12:00 PM',
                          '3:00 PM',
                          '6:00 PM'
                        ].map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: textHeadSemiBold1.copyWith(
                                    fontSize: sWidth * 0.04,
                                    color: textFieldBorderColor),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showDateModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Date(
          onPressed: (date) {
            setState(() {
              dateController.text = date;
            });
          },
          datePicker: dateController,
        );
      },
    );
  }
}