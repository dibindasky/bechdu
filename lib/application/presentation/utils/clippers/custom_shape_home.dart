import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, size.height * 0.3);
    final firstStart = Offset(size.width * 0.85, size.height * 0.15);
    final firstEnd = Offset(size.width * 0.7, size.height * 0.1);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    final secondStart = Offset(size.width * 0.3, size.height * 0.1);
    final seconfEnd = Offset(size.width , size.height * 0.2);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, seconfEnd.dx, seconfEnd.dy);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
