import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  void onClicked(value) {
    print('$value');
  }

  String myServices1 = 'Brand'; // Set a default value from options1
  String myServices2 = 'Series'; // Set a default value from options2
  String myServices3 = 'Model'; // Set a default value from options3
  String myServices4 = 'Storage';

  List<String> options1 = [
    'Brand',
    'develop',
    'web',
    'IOS',
    'Digital',
  ];
  List<String> options2 = [
    'Series',
    'Option2',
    'Option3',
    'Option4',
    'Option5'
  ];
  List<String> options3 = [
    'Model',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
  ];
  List<String> options4 = [
    'Storage',
    'B',
    'C',
    'D',
    'E',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  isExpanded: true,
                  items: options1.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                      ),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    myServices1 = value!;
                    setState(() {
                      myServices1 = value;
                    });
                  },
                  value: myServices1,
                  buttonStyleData: ButtonStyleData(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: kWhite,
                    ),
                    elevation: 1,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: kBlueLight,
                    ),
                    offset: const Offset(0, 46),
                    scrollbarTheme: ScrollbarThemeData(
                      radius: const Radius.circular(10),
                      thickness: MaterialStateProperty.all<double>(10),
                      thumbVisibility: MaterialStateProperty.all<bool>(true),
                    ),
                  ),
                ),
              ),
            ),
            kWidth10,
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: textFieldBorderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton<String>(
                  items: options2.map((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  }).toList(),
                  //isExpanded: true,
                  onChanged: (value) {
                    myServices2 = value!;
                    setState(() {
                      onClicked(myServices2);
                    });
                  },
                  value: myServices2,
                  hint: const Text('Series                    '),
                  elevation: 10,
                  style: textHeadBold1,
                  icon: const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 18,
                    color: kBlack,
                  ),
                ),
              ),
            ),
          ],
        ),
        kHeight10,
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: textFieldBorderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton<String>(
                  items: options3.map((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  }).toList(),
                  //isExpanded: true,
                  onChanged: (value) {
                    myServices3 = value!;
                    setState(() {
                      onClicked(myServices3);
                    });
                  },
                  value: myServices3,
                  hint: const Text('                  Model'),
                  elevation: 10,
                  style: textHeadBold1,
                  icon: const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 18,
                    color: kBlack,
                  ),
                ),
              ),
            ),
            kWidth10,
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: textFieldBorderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton<String>(
                  items: options4.map((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  }).toList(),
                  //isExpanded: true,
                  onChanged: (value) {
                    myServices4 = value!;
                    setState(() {
                      onClicked(myServices4);
                    });
                  },
                  value: myServices4,
                  hint: const Text('          Storage      '),
                  elevation: 10,
                  style: textHeadBold1,
                  icon: const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 18,
                    color: kBlack,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
