import 'package:flutter/material.dart';
import 'package:sample/common/shapes/clipper/outsidecure.dart';

class Outsidecurvecon extends StatelessWidget {
  const Outsidecurvecon({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Outsidecurveclipper(),
      child: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 255, 183, 2)),
        width: double.infinity,
        height: size.height * .37,
        child: const Text("con"),
      ),
    );
  }
}
