import 'package:flutter/material.dart';
import 'package:sample/common/Text/headertext.dart';
import 'package:sample/common/cards/Settingcard/sttingcard.dart';

class Oflinepreferences extends StatelessWidget {
  const Oflinepreferences({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Headline(headline: 'Offline Music Preferences'),
        SizedBox(height: 20),
        Settingwidget(
          title: "manage Hellotunes",
          showsubtitle: false,
        ),
        SizedBox(height: 20),
        Settingwidget(
          title: "My Profile",
          showsubtitle: false,
        ),
        SizedBox(height: 20),
        Settingwidget(
          title: "Help & Support",
          showsubtitle: false,
        ),
        SizedBox(height: 20),
        Settingwidget(
          title: "logout",
          showsubtitle: false,
        ),
      ],
    );
  }
}
