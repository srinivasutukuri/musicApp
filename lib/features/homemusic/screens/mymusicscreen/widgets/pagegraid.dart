import 'package:flutter/material.dart';
import 'package:sample/features/homemusic/screens/mymusicscreen/widgets/pagecards.dart';

class Pagegrid extends StatelessWidget {
  const Pagegrid({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .5,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 1.4,
        primary: false,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: const [
          Pagecards(
            title: "Downloads",
            subtitle: "Get Premium",
            icon: Icons.lock,
          ),
          Pagecards(
            title: "Local Mp3",
            showsubtitle: false,
            icon: Icons.download_for_offline_rounded,
          ),
          Pagecards(
            title: "Liked music",
            subtitle: "2 songs",
            icon: Icons.favorite,
          ),
          Pagecards(
            title: "Playlists",
            subtitle: "3 playlists",
            icon: Icons.list_rounded,
          ),
          Pagecards(
            title: "Artists",
            subtitle: "4 artists",
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}
