import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Circularimage extends StatelessWidget {
  const Circularimage({
    super.key,
    this.height = 50,
    this.width = 50,
    this.padding = 8,
    this.redius = 50,
    this.backgroundcolor,
    this.border,
    this.fit = BoxFit.cover,
    this.ontap,
    required this.image,
  });
  final double? height, width;
  final double redius;
  final double padding;
  final Color? backgroundcolor;
  final Border? border;
  final String image;
  final BoxFit? fit;
  final VoidCallback? ontap;
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
            color: backgroundcolor,
          ),
          child: Center(
            child: Image(
              image: AssetImage(
                image,
              ),
              fit: fit,
            ),
          )),
    );
  }
}
