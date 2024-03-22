import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class RefreshIndicatorCustom extends StatelessWidget {
  const RefreshIndicatorCustom({
    super.key,
    required this.message,
    required this.onRefresh,
    this.height = 0.3,
  });
  final String message;
  final VoidCallback onRefresh;
  final double height;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        onRefresh();
        await Future.delayed(const Duration(seconds: 2));
      },
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) => SizedBox(
          height: height * sHeight,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.refresh),
              kHeight20,
              Text(message),
            ],
          ),
        ),
      ),
    );
  }
}
