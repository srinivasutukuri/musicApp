import 'package:flutter/material.dart';

class Listviewlayout1 extends StatelessWidget {
  const Listviewlayout1({
    Key? key,
    required this.height,
    required this.itemBuilder,
    this.scrollDirection = Axis.horizontal,
    this.itemcount = 11,
    this.physics,
  }) : super(key: key);

  final double height;
  final IndexedWidgetBuilder itemBuilder;
  final Axis scrollDirection;
  final int itemcount;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: itemcount,
        shrinkWrap: true,
        physics: physics,
        scrollDirection: scrollDirection, // Use the parameter
        itemBuilder: itemBuilder,
      ),
    );
  }
}
