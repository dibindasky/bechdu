import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({
    Key? key,
    required this.crossAxisCount,
    required this.itemCount,
    this.height,
  }) : super(key: key);

  final int crossAxisCount;
  final int itemCount;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final double totalHeight =
        ((itemCount / crossAxisCount).ceil() * (height ?? 10 + 10)) + 10;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return SizedBox(
            height: totalHeight,
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                decoration: BoxDecoration(
                  color: klightwhite,
                  borderRadius: kRadius5,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Loadmore extends StatelessWidget {
  const Loadmore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        decoration: BoxDecoration(
          color: klightwhite,
          borderRadius: kRadius5,
        ),
      ),
    );
  }
}

class ShimmerLoader extends StatelessWidget {
  const ShimmerLoader({
    Key? key,
    required this.itemCount,
    required this.height,
    required this.width,
    this.seprator = const SizedBox(),
    this.scrollDirection = Axis.vertical,
  }) : super(key: key);

  final int itemCount;
  final double height;
  final double width;
  final Axis scrollDirection;
  final Widget seprator;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => seprator,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      scrollDirection: scrollDirection,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 134, 132, 132),
          highlightColor: const Color.fromARGB(255, 146, 142, 142),
          child: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              color: klightgrey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        );
      },
    );
  }
}
