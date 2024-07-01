import 'package:flutter/material.dart';
import 'package:sample/common/images/borderimage.dart';
import 'package:sample/constants/images.dart';

class Hellotunecardbg extends StatelessWidget {
  const Hellotunecardbg({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: const Boderedimage(
            redius: 20,
            hight: 350,
            width: 270,
            fit: BoxFit.cover,
            url: newreleasesimage,
          ),
        ),
        Positioned(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 350,
            width: 270,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Colors.grey.shade100.withOpacity(0.5),
                    Colors.grey,
                    Colors.grey,
                    Colors.grey,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
            child: child,
          ),
        )
      ],
    );
  }
}
