import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: DropDownBuilder(searchHint: 'Brand'),
            ),
            kWidth10,
            Expanded(
              child: DropDownBuilder(searchHint: 'Series'),
            ),
          ],
        ),
        kHeight10,
        Row(
          children: [
            Expanded(
              child: DropDownBuilder(searchHint: 'Model'),
            ),
            kWidth10,
            Expanded(
              child: DropDownBuilder(searchHint: 'Storage'),
            ),
          ],
        ),
      ],
    );
  }
}

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
  @override
  Widget build(BuildContext context) {
    List<String> options1 = [
      'Brand',
      'develop',
      'web',
      'IOS',
      'Digital',
    ];

    String myServices1 = 'Brand';
    final textEditingController = TextEditingController();

    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        items: options1.map(
          (item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item, style: textHeadBold1),
            );
          },
        ).toList(),
        value: myServices1,
        onChanged: (value) {
          myServices1 = value!;
          setState(() {
            myServices1 = value;
          });
        },
        buttonStyleData: const ButtonStyleData(
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 40,
          width: 0,
        ),
        dropdownStyleData: const DropdownStyleData(
          offset: Offset(0, 40),
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
                icon: const Icon(Icons.search),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                hintText: 'Search ${widget.searchHint}',
                hintStyle: const TextStyle(fontSize: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          searchMatchFn: (item, searchValue) {
            return item.value.toString().contains(searchValue);
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
