import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/navbar/bottombar.dart';
import 'package:beachdu/application/presentation/screens/pickup/pickup_contaners/date_selection/date_picking_bottom_sheet.dart';
import 'package:beachdu/application/presentation/screens/questions/after_question_checked/success_order/success_product_place_rder.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            height: sHeight * .45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('TIME SLOT'),
                kHeight10,
                InkWell(
                  onTap: () => showDateModalBottomSheet(context),
                  child: Container(
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
                          child: Text(
                            dateController.text.isEmpty
                                ? 'Date'
                                : dateController.text,
                            style: dateController.text.isEmpty
                                ? textHeadSemiBold1.copyWith(
                                    color: textFieldBorderColor,
                                  )
                                : textHeadSemiBold1,
                          ),
                        ),
                        const Icon(
                          Icons.calendar_month,
                          color: kBlueLight,
                        ),
                      ],
                    ),
                  ),
                ),
                kHeight20,
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
                              '3:01 PM',
                              '3:00 PM',
                              '7:00 PM',
                              '8:00 PM'
                            ].map<DropdownMenuItem<String>>(
                              (String value) {
                                if (value == 'Time') {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: textHeadSemiBold1.copyWith(
                                          color: textFieldBorderColor),
                                    ),
                                  );
                                }
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: textHeadSemiBold1.copyWith(
                                      fontSize: sWidth * 0.04,
                                    ),
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
          Align(
            alignment: Alignment.center,
            child: ElevatedButtonLong(
              wdth: 200,
              onPressed: () {
                //Navigator.of(context).pushNamed(Routes.successOder);
                body[1] = const SuuccessOrderPlaced();
                bottomBarNotifier.notifyListeners();
              },
              text: 'Place Order',
            ),
          ),
        ],
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
