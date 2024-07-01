import 'package:flutter/material.dart';
import 'package:sample/constants/colors.dart';

class Ligthshadecontainer extends StatelessWidget {
  const Ligthshadecontainer({
    super.key,
    required this.child,
    this.width,
    this.higth,
    this.padding = 15,
  });
  final Widget child;
  final double? width, higth;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: higth,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: white.withOpacity(0.1)),
        child: child);
  }
}
