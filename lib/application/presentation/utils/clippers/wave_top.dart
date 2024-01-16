import 'package:flutter/material.dart';

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    // Starting point at the top-left
    path.moveTo(0, 0);
    // line to bottom corner
    path.lineTo(0, size.height);
    // line to right bottom
    path.lineTo(size.width, size.height);
    // line to righ side end half to the height
    path.lineTo(size.width, size.height * 0.6);
    // point of curve center
    final firstStart = Offset(size.width * 0.88, size.height * 0.3);
    // first curve end point
    final firstEnd = Offset(size.width * 0.6, size.height * 0.25);
    // first curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    // second curve center
    final secondStart = Offset(size.width * 0.25, size.height * 0.2);
    // second curve end
    final seconfEnd = Offset(size.width * 0.1, size.height * 0);
    // second curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, seconfEnd.dx, seconfEnd.dy);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
