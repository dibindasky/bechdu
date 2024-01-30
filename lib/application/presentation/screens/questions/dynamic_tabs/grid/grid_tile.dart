import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class GridOptionSelectorTile extends StatefulWidget {
  const GridOptionSelectorTile({super.key, required this.map});

  final Map<String, dynamic> map;

  @override
  State<GridOptionSelectorTile> createState() => _GridOptionSelectorTileState();
}

class _GridOptionSelectorTileState extends State<GridOptionSelectorTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        isSelected = !isSelected;
      }),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: isSelected ? kBluePrimary : knill,
              border: Border.all(color: kBluePrimary, width: 2)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text(
                widget.map['description'],
                style: textHeadBold1.copyWith(
                    color: isSelected ? kWhite : kBluePrimary),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
