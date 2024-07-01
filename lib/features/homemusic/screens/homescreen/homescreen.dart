import 'package:flutter/material.dart';
import 'package:sample/common/Text/headertext.dart';
import 'package:sample/common/cards/musiccards/verticalcards/Circularmusiccard.dart';
import 'package:sample/common/cards/musiccards/verticalcards/Recentplaymusiccard.dart';
import 'package:sample/common/cards/musiccards/verticalcards/mixmusiccard.dart';
import 'package:sample/common/cards/musiccards/verticalcards/musiccardwithplayicon.dart';
import 'package:sample/common/cards/musiccards/verticalcards/onimagecentertextcardt.dart';
import 'package:sample/common/cards/musiccards/verticalcards/planmusiccard.dart';
import 'package:sample/common/layouts/listlayout.dart';
import 'package:sample/common/sliders/Bannersliders.dart';
import 'package:sample/constants/colors.dart';
import 'package:sample/constants/images.dart';
import 'package:sample/features/homemusic/screens/homescreen/Widgets/appbar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
          child: Column(
            children: [
              const HomeAppbar(),
              const SizedBox(height: 20),
              const Headline(
                headline: "Featured Today",
                showseeall: false,
              ),
              const SizedBox(height: 10),
              const Bannerslider(
                images: [featuresimage1, featuresimage2, featuresimage3],
              ),
              const SizedBox(height: 20),
              const Headline(
                  headline: "Recent Played", showseeall: true, issmall: true),
              const SizedBox(height: 10),
              Listviewlayout1(
                  height: 120,
                  itemBuilder: (_, index) => const Recentplaycards()),
              const SizedBox(height: 20),
              const Headline(headline: "New Releases"),
              const SizedBox(height: 10),
              Listviewlayout1(
                  height: 170,
                  itemBuilder: (_, index) => const Plainmusiccard()),
              const SizedBox(height: 20),
              const Headline(headline: "Your Artist Mixes"),
              const SizedBox(height: 10),
              Listviewlayout1(
                  height: 150, itemBuilder: (_, index) => const Mixmusic()),
              const SizedBox(height: 20),
              const Headline(headline: "Trending Near You"),
              const SizedBox(height: 10),
              Listviewlayout1(
                  height: 180,
                  itemBuilder: (_, index) => const Musiccardwithplayicon()),
              const SizedBox(height: 20),
              const Headline(headline: "Flavours of Music"),
              const SizedBox(height: 10),
              Listviewlayout1(
                  height: 150,
                  itemBuilder: (_, index) => const Onimagecentertextcard()),
              const SizedBox(height: 20),
              const Headline(headline: "Top Indie Artist"),
              const SizedBox(height: 10),
              Listviewlayout1(
                  height: 180,
                  itemBuilder: (_, index) => const CircularMusiccard()),
            ],
          ),
        ),
      ),
    );
  }
}
