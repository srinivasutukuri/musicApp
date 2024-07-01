import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/constants/colors.dart';
import 'package:sample/features/musicplayscreen/controller/musicbarprovider.dart';

class CMusicbar extends StatefulWidget {
  const CMusicbar({super.key});

  @override
  State<CMusicbar> createState() => _CMusicbarState();
}

class _CMusicbarState extends State<CMusicbar> {
  @override
  Widget build(BuildContext context) {
    final musicprovider = Provider.of<Musicbarprovider>(context);
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Consumer<Musicbarprovider>(
          builder: (context, value, child) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(formatDuration(value.position)),
              SizedBox(
                width: size.width * .70,
                child: Slider(
                    thumbColor: Colors.grey,
                    min: 0,
                    max: value.duration.inSeconds.toDouble(),
                    inactiveColor: Colors.grey,
                    activeColor: red,
                    value: value.position.inSeconds.toDouble(),
                    onChanged: (value1) async {
                      await value.player
                          .seek(Duration(seconds: value1.toInt()));
                    }),
              ),
              Text(formatDuration(musicprovider.duration))
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                musicprovider.player.seek(
                    Duration(seconds: musicprovider.position.inSeconds - 10));
                setState(() {});
              },
              child: const Icon(
                Icons.forward_10_rounded,
                color: white,
                size: 30,
              ),
            ),
            InkWell(
              onTap: musicprovider.playpause,
              child: Icon(
                musicprovider.isplaying
                    ? Icons.pause_circle
                    : Icons.play_circle,
                color: red,
                size: 50,
              ),
            ),
            InkWell(
              onTap: () {
                musicprovider.player.seek(
                    Duration(seconds: musicprovider.position.inSeconds + 10));
                setState(() {});
              },
              child: const Icon(
                Icons.forward_10_rounded,
                color: white,
                size: 30,
              ),
            ),
          ],
        )
      ],
    );
  }
}

String formatDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));
  return '$minutes:$seconds';
}
