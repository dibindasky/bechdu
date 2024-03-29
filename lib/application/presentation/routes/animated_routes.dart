import 'package:flutter/material.dart';

PageRouteBuilder fadePageRoute(
    {required Widget screen, int milliseconds = 300}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Container(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = 0.0;
      const end = 1.0;
      const curve = Curves.easeInOut;

      final tween = Tween(begin: begin, end: end).chain(
        CurveTween(curve: curve),
      );

      var opacityAnimation = animation.drive(tween);

      return FadeTransition(
        opacity: opacityAnimation,
        child: screen,
      );
    },
    transitionDuration: Duration(milliseconds: milliseconds),
    reverseTransitionDuration: Duration(milliseconds: milliseconds),
    opaque: false,
    barrierColor: Colors.black.withOpacity(0.5),
    barrierDismissible: false,
    maintainState: false,
  );
}

PageRouteBuilder noTrancitionRoute({required Widget screen}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => screen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}
