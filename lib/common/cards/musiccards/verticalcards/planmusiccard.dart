import 'package:flutter/material.dart';
import 'package:sample/constants/images.dart';
import 'package:sample/utils/Cardtamplets/musicsqureplaycard.dart';

class Plainmusiccard extends StatelessWidget {
  const Plainmusiccard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MusicCardTamplat(
      ontap: null,
      hidht: 130,
      width: 130,
      title: "New Telugu songs",
      imageurl: newreleasesimage,
      showbutton: false,
    );
  }
}
