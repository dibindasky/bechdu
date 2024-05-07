import 'package:flutter/material.dart';

class BellIconAnimation extends StatefulWidget {
  final Widget child;
  final bool animate;

  const BellIconAnimation(
      {super.key, required this.child, this.animate = false});

  @override
  // ignore: library_private_types_in_public_api
  _BellIconAnimationState createState() => _BellIconAnimationState();
}

class _BellIconAnimationState extends State<BellIconAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.animate
        ? AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.scale(
                scale: 1.0 - 0.1 * _controller.value,
                child: Transform.translate(
                  offset: Offset(4.0 * _controller.value, 0.0),
                  child: child,
                ),
              );
            },
            child: widget.child,
          )
        : widget.child;
  }
}
