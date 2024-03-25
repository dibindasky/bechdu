import 'package:flutter/material.dart';

class AnimatedGrowShrinkContainer extends StatefulWidget {
  final Widget child;

  const AnimatedGrowShrinkContainer({Key? key, required this.child})
      : super(key: key);

  @override
  State<AnimatedGrowShrinkContainer> createState() =>
      _AnimatedGrowShrinkContainerState();
}

class _AnimatedGrowShrinkContainerState
    extends State<AnimatedGrowShrinkContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _scaleAnimation = Tween<double>(begin: .85, end: 0.9).animate(_controller)
      ..addListener(() => setState(() {}));
    _controller.repeat(
      reverse: true,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: widget.child,
    );
  }
}
