import 'package:flutter/material.dart';
import 'package:sample/constants/images.dart';
import 'package:sample/features/musicplayscreen/screen/musicscreen/musicscrteen.dart';
import 'package:sample/utils/Cardtamplets/musicsqureplaycard.dart';

class Recentplaycards extends StatelessWidget {
  const Recentplaycards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MusicCardTamplat(
      hidht: 90,
      width: 90,
      ontap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Musicscreen(),
          ),
        );
      },
      imageurl: devotion,
      title: "Sooseki (From 'puspa2')",
    );
  }
}
