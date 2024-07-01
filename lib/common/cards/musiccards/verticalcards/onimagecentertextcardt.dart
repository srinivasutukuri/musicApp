import 'package:flutter/material.dart';
import 'package:sample/constants/images.dart';
import 'package:sample/utils/Cardtamplets/imageontextcard.dart';

class Onimagecentertextcard extends StatelessWidget {
  const Onimagecentertextcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const OnimagetextCardTamplat(
      imageurl: flavorsofmusic,
      onimagetitle: "Romantic",
      title: "Romantic",
      isonimagesubtitle: false,
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}
