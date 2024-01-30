import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownBuilder extends StatefulWidget {
  const DropDownBuilder({
    super.key,
    required this.searchHint,
    required this.optionsList,
  });

  final String searchHint;
  final List<List<String>> optionsList;

  @override
  State<DropDownBuilder> createState() => _DropDownBuilderState();
}

class _DropDownBuilderState extends State<DropDownBuilder> {
  late List<String> selectedOption;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedOption = widget.optionsList.map((option) => option.first).toList();
  }

  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        items: widget.optionsList.asMap().entries.map(
          (entry) {
            final options = entry.value;
            return DropdownMenuItem(
              value: options.first,
              child: Text(
                options.first,
                style: const TextStyle(color: kBlack),
              ),
            );
          },
        ).toList(),
        onChanged: (value) {
          selectedIndex = selectedOption.indexOf(value!);
          setState(() {
            selectedOption[selectedIndex] = value;
          });
        },
        value: selectedOption[selectedIndex],
        buttonStyleData: ButtonStyleData(
          decoration: BoxDecoration(
            border: Border.all(color: textFieldBorderColor),
            borderRadius: kRadius5,
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: 40,
          width: 0,
        ),
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(borderRadius: kRadius10),
          offset: const Offset(0, -5),
          maxHeight: 200,
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
        ),
        dropdownSearchData: DropdownSearchData(
          searchController: textEditingController,
          searchInnerWidgetHeight: 50,
          searchInnerWidget: SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: TextFormField(
                expands: true,
                maxLines: null,
                controller: textEditingController,
                decoration: InputDecoration(
                  labelStyle: textHeadBoldBig,
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 5),
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  hintText: 'Search ${widget.searchHint.toLowerCase()}',
                  hintStyle: textHeadMedium1,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: kWhite),
                    borderRadius: kRadius10,
                  ),
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
