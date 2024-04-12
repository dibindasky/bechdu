import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class RowDatas extends StatelessWidget {
  const RowDatas({
    super.key,
    this.heading,
    this.imageFirst,
    this.lastImage,
    this.subHead,
    this.isRow,
    this.date,
  });
  final String? heading;
  final String? imageFirst;
  final String? lastImage;
  final String? subHead;
  final bool? isRow;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth10,
        SizedBox(
          width: 20,
          child: Image.asset(
            "$imageFirst",
            fit: BoxFit.cover,
            scale: 1,
          ),
        ),
        kWidth10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(heading!),
            isRow == true && subHead != null
                ? Row(
                    children: [
                      Text(
                        subHead == 'cash' || subHead == 'upi'
                            ? subHead!.toUpperCase()
                            : subHead!,
                        maxLines: 3,
                        style: textHeadBold1.copyWith(fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                      ),
                      kWidth10,
                      Text(
                        '$date',
                        maxLines: 3,
                        style: textHeadBold1.copyWith(fontSize: 16),
                      ),
                    ],
                  )
                : SizedBox(
                    width: sWidth * .7,
                    child: Text(
                      subHead!,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: textHeadBold1.copyWith(fontSize: 16),
                    ),
                  ),
          ],
        ),
        isRow == false && lastImage != null
            ? CircleAvatar(
                radius: 14,
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage(lastImage!),
                ),
              )
            : kEmpty
      ],
    );
  }
}
