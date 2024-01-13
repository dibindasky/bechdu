import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownBuilder extends StatefulWidget {
  const DropDownBuilder({
    super.key,
    required this.searchHint,
  });

  final String searchHint;

  @override
  State<DropDownBuilder> createState() => _DropDownBuilderState();
}

class _DropDownBuilderState extends State<DropDownBuilder> {
  List<String> options1 = [
    'Brand',
    'develop',
    'web',
    'IOS',
    'Digital',
  ];

  String myServices1 = 'Brand';
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        items: options1.map(
          (item) {
            return DropdownMenuItem(
              value: item,
              child: Text(
                item,
                style: textHeadBold1.copyWith(color: kBlack),
              ),
            );
          },
        ).toList(),
        onChanged: (value) {
          setState(() {
            myServices1 = value!;
          });
        },
        value: myServices1,
        buttonStyleData: const ButtonStyleData(
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 40,
          width: 0,
        ),
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(color: kBlueLight, borderRadius: kRadius10),
          offset: const Offset(0, -5),
          maxHeight: 200,
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
        ),
        dropdownSearchData: DropdownSearchData(
          searchController: textEditingController,
          searchInnerWidgetHeight: 50,
          searchInnerWidget: Container(
            height: 50,
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 4,
              right: 8,
              left: 8,
            ),
            child: TextFormField(
              expands: true,
              maxLines: null,
              controller: textEditingController,
              decoration: InputDecoration(
                labelStyle: textHeadBoldBig,
                icon: const Icon(
                  Icons.search,
                  color: kWhite,
                ),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                hintText: 'Search ${widget.searchHint}',
                hintStyle: textHeadMedium1.copyWith(color: kWhite),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: kWhite),
                  borderRadius: kRadius10,
                ),
              ),
            ),
          ),
          searchMatchFn: (item, searchValue) {
            return item.value
                .toString()
                .toLowerCase()
                .contains(searchValue.toLowerCase());
          },
        ),
        onMenuStateChange: (isOpen) {
          if (!isOpen) {
            textEditingController.clear();
          }
        },
      ),
    );
  }
}
