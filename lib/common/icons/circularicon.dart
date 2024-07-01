import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Circularicon extends StatelessWidget {
  const Circularicon({
    super.key,
    this.height = 30,
    this.width = 30,
    this.padding = 0,
    this.redius = 30,
    this.backgroundcolor,
    this.iconcolor,
    this.border,
    this.fit = BoxFit.cover,
    this.ontap,
    required this.icon,
    this.opacity = 0.7,
    this.iconsize,
  });
  final double? height, width, iconsize;
  final double redius;
  final double padding;
  final Color? backgroundcolor, iconcolor;
  final Border? border;
  final IconData icon;
  final BoxFit? fit;
  final VoidCallback? ontap;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            border: border,
            borderRadius: BorderRadius.circular(redius),
            color: backgroundcolor?.withOpacity(opacity),
          ),
          child: Center(
              child: Icon(
            icon,
            color: iconcolor,
            size: iconsize,
          ))),
    );
  }
}
