import 'package:flutter/material.dart';
import 'package:sample/common/Text/headertext.dart';
import 'package:sample/common/cards/Settingcard/settingcardtoogle.dart';
import 'package:sample/common/cards/Settingcard/sttingcard.dart';

class Listentingprefernces extends StatelessWidget {
  const Listentingprefernces({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Headline(headline: "Music Listenting Prefernces", showseeall: false),
        SizedBox(height: 20),
        Settingwidget(title: "Music language(S)", subtitle: "Telugu"),
        SizedBox(height: 20),
        Settingwidget(
            title: "On Click Behaviour - List",
            subtitle: "play entire list instead"),
        SizedBox(height: 20),
        Settingwidget(title: "Streaming Quality", subtitle: "Auto"),
        SizedBox(height: 20),
        Settindcardwithtoogle(
          title: "Equalizer",
          subtitle: "adjust audio settings",
          showtoogle: false,
        ),
        SizedBox(height: 10),
        Settindcardwithtoogle(
          title: "Offline songs on slow internet",
          subtitle: "Play download and mp3 songs only",
          showtoogle: true,
        ),
        SizedBox(height: 10),
        Settindcardwithtoogle(
          title: "Allow explicit content",
          subtitle: "Turn off to skip explicit content",
          showsubtitle2: true,
          subtitle2: "Explicit content is labeled with E Tag",
          showtoogle: true,
        ),
        SizedBox(height: 5),
        Settindcardwithtoogle(
          title: "Sleep Timer",
          showsubtitle: false,
          showtoogle: true,
        ),
        SizedBox(height: 20),
        Settindcardwithtoogle(
          title: "Show lyriocs on player",
          showsubtitle: false,
          showtoogle: true,
        ),
      ],
    );
  }
}
