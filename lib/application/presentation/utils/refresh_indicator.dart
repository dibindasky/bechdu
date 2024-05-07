import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class RefreshIndicatorCustom extends StatelessWidget {
  const RefreshIndicatorCustom({
    super.key,
    required this.message,
    required this.onRefresh,
    this.image,
    this.height = 0.3,
    this.axis,
  });
  final String message;
  final VoidCallback onRefresh;
  final double height;
  final String? image;
  final Axis? axis;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        onRefresh();
        await Future.delayed(const Duration(seconds: 2));
      },
      child: ListView.builder(
        itemCount: 1,
        scrollDirection: axis ?? Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => SizedBox(
          height: height * sHeight,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image == null
                  ? const Icon(Icons.refresh)
                  : Expanded(child: Image.asset(image!)),
              kHeight20,
              Text(message),
            ],
          ),
        ),
      ),
    );
  }
}

class ErrorRefreshIndicator extends StatelessWidget {
  const ErrorRefreshIndicator(
      {super.key,
      this.shrinkWrap = false,
      required this.onRefresh,
      this.errorMessage = 'something went wrong pull to refresh',
      this.image});

  final VoidCallback onRefresh;
  final String errorMessage;
  final bool shrinkWrap;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        onRefresh();
        await Future.delayed(const Duration(milliseconds: 1500));
      },
      child: ListView(
        shrinkWrap: shrinkWrap,
        children: [
          kHeight50,
          image != null
              ? Image.asset(image!)
              : const Icon(Icons.refresh, color: klightgrey),
          Center(child: Text(errorMessage, style: textHeadMedium1)),
          const SizedBox(width: double.infinity)
        ],
      ),
    );
  }
}
