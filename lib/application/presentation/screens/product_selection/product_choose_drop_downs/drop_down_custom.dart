import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownBuilder extends StatefulWidget {
  const DropDownBuilder({
    super.key,
    required this.searchHint,
    required this.optionsList,
    required this.index,
    required this.onChanged,
    this.initailvalue,
  });

  final String searchHint;
  final List<String> optionsList;
  final int index;
  final Function(String?)? onChanged;
  final String? initailvalue;

  @override
  State<DropDownBuilder> createState() => _DropDownBuilderState();
}

class _DropDownBuilderState extends State<DropDownBuilder> {
  final textEditingController = TextEditingController();
  String? selected;
  Color contsinerColor = kWhite;
  Color textColor = kWhite;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        hint: Text(
          selected ?? widget.searchHint,
          style: textHeadInter.copyWith(color: klightgrey),
        ),
        isExpanded: true,
        items: widget.optionsList.map(
          (entry) {
            final options = entry;
            return DropdownMenuItem(
              value: options,
              child: Text(
                options,
                style: TextStyle(color: textColor),
              ),
            );
          },
        ).toList(),
        onChanged: widget.onChanged,
        value: selected,
        buttonStyleData: ButtonStyleData(
          decoration: BoxDecoration(
            color: contsinerColor,
            border: Border.all(
              color: textFieldBorderColor,
            ),
            borderRadius: kRadius5,
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: 40,
          width: 0,
        ),
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(
            borderRadius: kRadius5,
            color: kBluePrimary,
          ),
          offset: const Offset(0, -5),
          maxHeight: 250,
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
        ),
        dropdownSearchData: DropdownSearchData(
          searchController: textEditingController,
          searchInnerWidgetHeight: 50,
          searchInnerWidget: Container(
            decoration: BoxDecoration(
                border: Border.all(
              color: kWhite,
            )),
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: TextFormField(
                style: const TextStyle(color: kWhite),
                expands: true,
                maxLines: null,
                controller: textEditingController,
                decoration: InputDecoration(
                  labelStyle: textHeadBoldBig,
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 5),
                    child: Icon(
                      Icons.search,
                      color: kWhite,
                    ),
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  hintText: 'Search ${widget.searchHint.toLowerCase()}',
                  hintStyle: textHeadMedium1.copyWith(color: kWhite),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: kBlack),
                    borderRadius: kRadius10,
                  ),
                ),
              ),
            ),
          ),
          searchMatchFn: (item, searchValue) {
            return item.value.toString().toLowerCase().contains(
                  searchValue.toLowerCase(),
                );
          },
        ),
        onMenuStateChange: (isOpen) {
          if (!isOpen) {
            textEditingController.clear();
            setState(() {
              textColor = kBlack;
              contsinerColor = kWhite;
            });
          } else {
            setState(() {
              contsinerColor = kBluePrimary;
              textColor = kWhite;
            });
          }
        },
      ),
    );
  }
}
