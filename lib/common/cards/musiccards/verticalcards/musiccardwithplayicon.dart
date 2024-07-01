import 'package:flutter/material.dart';
import 'package:sample/constants/images.dart';
import 'package:sample/utils/Cardtamplets/musicsqureplaycard.dart';

class Musiccardwithplayicon extends StatelessWidget {
  const Musiccardwithplayicon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MusicCardTamplat(
      ontap: null,
      hidht: 130,
      width: 130,
      title: "Dasarathi",
      imageurl: devotion,
      Rightplaybutton: true,
      atistname: true,
      subtitle: "S.P. Balasubrahmanyam",
    );
  }
}
