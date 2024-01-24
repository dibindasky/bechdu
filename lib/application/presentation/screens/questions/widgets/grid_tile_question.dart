import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class GridTileQuestion extends StatefulWidget {
  const GridTileQuestion({
    super.key,
  });

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
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: FittedBox(
                    child: Image.asset(defectedMobile),
                  ),
                ),
                Text(
                  'Broken/scratch on device screen',
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
