import 'dart:developer';

import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropDownBuilder extends StatefulWidget {
  const DropDownBuilder({
    super.key,
    required this.searchHint,
    required this.optionsList,
    required this.index,
  });

  final String searchHint;
  final List<List<String>> optionsList;
  final int index;

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
  String? selected;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        hint: Text(widget.searchHint),
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
            selected = value;
          });
          log('selected Series $selected');
          switch (widget.index) {
            case 0:
              context.read<CategoryBlocBloc>().add(
                    GetModels(
                      brandName: selected!,
                      categoryType: 'mobile',
                      seriesName: 'I Phone 7',
                    ),
                  );
              break;
            case 1:
              context.read<CategoryBlocBloc>().add(
                    const GetVarients(
                      brandName: 'Apple',
                      categoryType: 'mobile',
                      seriesName: 'I Phone 7',
                      model: 'i Phone 6S',
                    ),
                  );
              break;
            default:
              null;
          }
        },
        value: selected,
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
