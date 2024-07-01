import 'package:flutter/material.dart';
import 'package:sample/common/Text/headertext.dart';
import 'package:sample/common/cards/musiccards/horizontal/Musichorizontalcard.dart';
import 'package:sample/features/homemusic/screens/Hellotunsscreen/Widgets/hellotunescardbg.dart';

class Hellotunescard extends StatelessWidget {
  const Hellotunescard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hellotunecardbg(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Headline(
                  issmall: true,
                  headline: "New Telugu Songs",
                  showeleveatedbutton: true,
                ),
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return const Musictilecard();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
