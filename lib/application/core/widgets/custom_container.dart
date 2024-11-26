import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.height,
    required this.width,
    this.child,
    this.color,
    this.borderRadius,
    this.borderColor,
  });
  final double height;
  final double width;
  final Widget? child;
  final Color? color;
  final BorderRadius? borderRadius;
  final Border? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color, borderRadius: borderRadius, border: borderColor),
      child: child,
    );
  }
}