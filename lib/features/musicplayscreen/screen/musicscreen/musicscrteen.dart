import 'package:flutter/material.dart';
import 'package:sample/common/Text/headertext.dart';
import 'package:sample/common/cards/musiccards/horizontal/Musichorizontalcard.dart';
import 'package:sample/common/cards/musiccards/verticalcards/Recentplaymusiccard.dart';
import 'package:sample/common/icons/labledicon.dart';
import 'package:sample/common/layouts/listlayout.dart';
import 'package:sample/common/shapes/containers/ligthshadecontainer.dart';
import 'package:sample/constants/colors.dart';
import 'package:sample/features/musicplayscreen/screen/musicscreen/wedgets/musicbar.dart';
import 'package:sample/features/musicplayscreen/screen/musicscreen/wedgets/tambnail.dart';

class Musicscreen extends StatelessWidget {
  const Musicscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: dark,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Tambnail(size: size),
            const SizedBox(height: 10),
            const CMusicbar(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Ligthshadecontainer(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        LabeledIcon(icon: Icons.favorite_border, text: "Like"),
                        LabeledIcon(
                            icon: Icons.format_list_bulleted_add,
                            text: "Playlist"),
                        LabeledIcon(
                            icon: Icons.downloading_outlined, text: "Download"),
                        LabeledIcon(
                            icon: Icons.phone_outlined, text: "Hello Tune"),
                        LabeledIcon(icon: Icons.more_vert, text: "More")
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Headline(
                    headline: "Up Next",
                    buttontext: "Queue",
                    btextcolor: red,
                    showicon: true,
                  ),
                  const SizedBox(height: 10),
                  const Ligthshadecontainer(
                    child: Musictilecard(
                      showicon: false,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Headline(
                    headline: "Similer Songs",
                    buttontext: "Play All",
                    btextcolor: red,
                    issmall: true,
                  ),
                  const SizedBox(height: 10),
                  Listviewlayout1(
                      height: 120,
                      itemBuilder: (_, index) => const Recentplaycards()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
