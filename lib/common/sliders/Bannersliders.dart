import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sample/common/images/borderimage.dart';

class Bannerslider extends StatelessWidget {
  const Bannerslider({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: images
            .map((imageurl) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Boderedimage(url: imageurl),
                ))
            .toList(),
        options: CarouselOptions(
            height: 120,
            viewportFraction: 1,
            enableInfiniteScroll: true,
            autoPlay: true));
  }
}
