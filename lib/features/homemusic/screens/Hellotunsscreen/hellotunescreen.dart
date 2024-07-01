import 'package:flutter/material.dart';
import 'package:sample/common/Text/headertext.dart';
import 'package:sample/common/cards/musiccards/verticalcards/onimagecentertextcardt.dart';
import 'package:sample/common/cards/musiccards/verticalcards/planmusiccard.dart';
import 'package:sample/common/layouts/listlayout.dart';
import 'package:sample/features/homemusic/screens/Hellotunsscreen/Widgets/appbar.dart';
import 'package:sample/features/homemusic/screens/Hellotunsscreen/Widgets/ctabbar.dart';

class Helotunescreen extends StatelessWidget {
  Helotunescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 16, 26),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Happbar(),
                const SizedBox(height: 10),
                const Headline(headline: "Just For you"),
                const SizedBox(height: 10),
                Listviewlayout1(
                  height: 170,
                  itemBuilder: (_, index) => const Plainmusiccard(),
                ),
                const SizedBox(height: 10),
                const Headline(
                  headline: "Trending Hellotunes",
                  showseeall: false,
                ),
                const SizedBox(height: 10),
                Ctabbar(),
                const SizedBox(height: 20),
                const Headline(
                  headline: "Top Hellotunes This Week",
                ),
                const SizedBox(height: 10),
                Listviewlayout1(
                    height: 150,
                    itemBuilder: (_, index) => const Onimagecentertextcard()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
