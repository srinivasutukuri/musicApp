import 'package:flutter/material.dart';
import 'package:sample/constants/colors.dart';

class CCircularContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final double borderRadius;
  final Color color;

  const CCircularContainer({
    Key? key,
    this.height,
    this.width,
    this.padding,
    this.borderRadius = 50.0,
    this.child,
    this.color = blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      child: child,
    );
  }
}
