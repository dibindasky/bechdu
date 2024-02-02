import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class GridTileQuestion extends StatefulWidget {
  const GridTileQuestion({super.key, required this.map});

  final Map<String, dynamic> map;

  @override
  State<GridTileQuestion> createState() => _GridTileQuestionState();
}

class _GridTileQuestionState extends State<GridTileQuestion> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          // change it to block now auto selection bug
          selected = !selected;
        });
      },
      child: ClipRRect(
        borderRadius: kRadius10,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: selected ? kGreenPrimary : kBlack,
              width: selected ? 3 : 1,
            ),
            borderRadius: kRadius10,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: FittedBox(
                    child: Image.asset(imageDiffectedPhone),
                  ),
                ),
                Text(
                  widget.map['description'],
                  style: textHeadBold1,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
