import 'package:flutter/material.dart';

class Outsidecurveclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.60);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.8, size.width, size.height * 0.60);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
