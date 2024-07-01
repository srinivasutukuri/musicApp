import 'package:flutter/material.dart';
import 'package:sample/constants/images.dart';
import 'package:sample/utils/Cardtamplets/musicsqureplaycard.dart';

class CircularMusiccard extends StatelessWidget {
  const CircularMusiccard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MusicCardTamplat(
      ontap: null,
      hidht: 130,
      width: 130,
      redius: 130,
      title: "Devi sri Prasad",
      imageurl: artistmix,
      showbutton: false,
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}
