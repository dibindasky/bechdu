import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class MyOrderExpansionTile extends StatefulWidget {
  const MyOrderExpansionTile({
    super.key,
  });

  @override
  State<MyOrderExpansionTile> createState() => _MyOrderExpansionTileState();
}

class _MyOrderExpansionTileState extends State<MyOrderExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration:
              BoxDecoration(color: kWhite, borderRadius: kRadius10, boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ]),
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          child: ExpansionTile(
              controlAffinity: ListTileControlAffinity.platform,
              shape: BeveledRectangleBorder(borderRadius: kRadius10),
              onExpansionChanged: (value) => setState(() {
                    isExpanded = value;
                  }),
              title: Text(
                'Heading',
                style: textHeadMedium1,
              ),
              subtitle: Text(
                '₹ 13,999',
                style: textHeadRegular1,
              ),
              trailing: ClipRRect(
                borderRadius: kRadius5,
                child: ColoredBox(
                  color: kRedLight.withOpacity(0.5),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'Pickup Pending',
                      style: textHeadRegular1.copyWith(color: kRed),
                    ),
                  ),
                ),
              ),
              children: [
                ListTile(
                    title: Text(
                      'Mukesh Sharma',
                      style: textHeadBold1,
                    ),
                    subtitle: Text(
                      'mukeshsharma@gmail.com',
                      style: textHeadRegular1,
                    ),
                    trailing: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          border: Border.all(color: kGreenPrimary),
                          borderRadius: BorderRadius.circular(350)),
                      child: const Icon(Icons.phone),
                    )),
                ListTile(
                  title: Text(
                    'Pickup location',
                    style: textHeadBold1,
                  ),
                  subtitle: Text(
                    "Nikhita Stores, 201/B, Nirant Apts, Andheri East 400069",
                    maxLines: 2,
                    style: textHeadRegular1,
                  ),
                  trailing: const CircleAvatar(
                    backgroundColor: kGreenPrimary,
                    child: Icon(
                      Icons.edit,
                      color: kWhite,
                    ),
                  ),
                )
              ]),
        ),
        isExpanded
            ? kEmpty
            : Positioned(
                bottom: 8,
                left: sWidth / 2 - 21,
                child: const IgnorePointer(
                  child: Icon(Icons.keyboard_arrow_down_sharp),
                ),
              ),
      ],
    );
  }
}
