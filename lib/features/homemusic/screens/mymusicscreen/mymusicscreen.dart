import 'package:flutter/material.dart';
import 'package:sample/common/Text/headertext.dart';
import 'package:sample/common/cards/musiccards/horizontal/Musichorizontalcard.dart';
import 'package:sample/common/cards/musiccards/verticalcards/mixmusiccard.dart';
import 'package:sample/common/layouts/listlayout.dart';
import 'package:sample/constants/colors.dart';
import 'package:sample/features/homemusic/screens/mymusicscreen/widgets/appbar.dart';
import 'package:sample/features/homemusic/screens/mymusicscreen/widgets/pagegraid.dart';

class Mymusicscreen extends StatelessWidget {
  const Mymusicscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Mappbar(),
              Pagegrid(size: size),
              const SizedBox(height: 10),
              const Headline(headline: "Recenlt Played"),
              Listviewlayout1(
                height: size.height * 0.4,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => const Musictilecard(),
                scrollDirection: Axis.vertical,
                itemcount: 5,
              ),
              const SizedBox(height: 20),
              const Headline(headline: "Your Most Played Songs"),
              const SizedBox(height: 10),
              Listviewlayout1(
                  height: 150, itemBuilder: (_, index) => const Mixmusic()),
            ],
          ),
        ),
      ),
    );
  }
}
