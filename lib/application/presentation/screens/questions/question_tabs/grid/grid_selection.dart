import 'package:beachdu/application/presentation/screens/questions/question_tabs/grid/grid_tile.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/get_question_model/section.dart';
import 'package:flutter/material.dart';

class GridOptionMaker extends StatefulWidget {
  const GridOptionMaker({
    super.key,
    required this.section,
  });

  final Section section;

  @override
  State<GridOptionMaker> createState() => _GridOptionMakerState();
}

class _GridOptionMakerState extends State<GridOptionMaker> {
  int selectedIndex = -1;
  @override
  void didUpdateWidget(GridOptionMaker oldWidget) {
    super.didUpdateWidget(oldWidget);
    //Reset the selection when a new question is provided
    if (widget.section != oldWidget.section) {
      setState(() {
        selectedIndex = -1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('${widget.section.description}', style: textHeadBoldBig),
            kHeight10,
            ListView.builder(
              padding: const EdgeInsets.all(0),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.section.options!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => GridOptionSelectorTile(
                func: () {
                  setState(() {
                    if (selectedIndex == index) {
                      selectedIndex = -1;
                    } else {
                      selectedIndex = index;
                    }
                  });
                },
                section: widget.section,
                index: selectedIndex == index,
                question: widget.section.options![index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
