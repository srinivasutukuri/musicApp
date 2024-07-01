import 'package:flutter/material.dart';
import 'package:sample/common/Text/scrollingtext.dart';
import 'package:sample/common/icons/circularicon.dart';
import 'package:sample/common/images/borderimage.dart';
import 'package:sample/common/shapes/containers/Outsidecurvecon.dart';
import 'package:sample/constants/colors.dart';
import 'package:sample/constants/images.dart';

class Tambnail extends StatelessWidget {
  const Tambnail({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Outsidecurvecon(size: size),
        Positioned(
          top: size.height * 0.05,
          left: size.width * .21,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width * .5,
                child: ScrollingText(
                  text: "E Therugananu Sri Ramadasu",
                ),
              ),
              const SizedBox(width: 2),
              const Circularicon(
                icon: Icons.arrow_forward_ios_rounded,
                iconcolor: white,
                iconsize: 20,
              )
            ],
          ),
        ),
        Positioned(
          top: size.height * .1,
          left: size.width * .21,
          child: Boderedimage(
            width: size.width * .60,
            hight: size.width * .60,
            url: devotion,
          ),
        ),
      ],
    );
  }
}
