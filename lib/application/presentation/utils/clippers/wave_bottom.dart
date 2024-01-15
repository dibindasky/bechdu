import 'package:flutter/material.dart';

class BottomWavwClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.5);
    final firstStart = Offset(size.width * 0.85, size.height * 0.2);
    final firstEnd = Offset(size.width * 0.7, size.height * 0.2);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    final secondStart = Offset(size.width * 0.3, size.height * 0.2);
    final seconfEnd = Offset(size.width * 0.2, size.height * 0);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, seconfEnd.dx, seconfEnd.dy);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
