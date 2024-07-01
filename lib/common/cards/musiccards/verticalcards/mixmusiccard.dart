import 'package:flutter/material.dart';
import 'package:sample/constants/images.dart';
import 'package:sample/utils/Cardtamplets/imageontextcard.dart';

class Mixmusic extends StatelessWidget {
  const Mixmusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const OnimagetextCardTamplat(
      imageurl: artistmix,
      onimagetitle: "devi Sri Prasead",
      title: "devi Sri Prasead mix",
      onimageSubtitle: "Mix",
    );
  }
}
