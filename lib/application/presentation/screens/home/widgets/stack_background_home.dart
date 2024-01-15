import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class StackBackgroundHomePage extends StatelessWidget {
  const StackBackgroundHomePage({
    super.key,
    required this.path,
    required this.color,
  });

  final CustomClipper<Path> path;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ClipPath(
        clipper: path,
        child: Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topLeft: Radius.circular(30))),
          height: sWidth * 1.25,
          width: double.infinity,
        ),
      ),
    );
  }
}
