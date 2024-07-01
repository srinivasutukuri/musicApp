import "package:audioplayers/audioplayers.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class Musicbarprovider with ChangeNotifier {
  late final AudioPlayer player;
  late final AssetSource path;
  bool _isplaying = false;
  Duration _duration = const Duration();
  Duration _position = const Duration();

  Duration get duration => _duration;
  Duration get position => _position;
  bool get isplaying => _isplaying;

  bool _isInitialized = false;

  Future<void> initplayer() async {
    if (_isInitialized) return;

    player = AudioPlayer();
    path = AssetSource("audio/YetherugaNanu.mp3");

    player.onDurationChanged.listen((Duration d) {
      _duration = d;
      notifyListeners();
    });

    player.onPositionChanged.listen((Duration p) {
      _position = p;
      notifyListeners();
    });

    player.onPlayerComplete.listen((_) {
      _position = _duration;
      notifyListeners();
    });

    _isInitialized = true;
  }

  Future<void> dispose() async {
    await player.dispose();
    super.dispose();
  }

  void playpause() async {
    if (isplaying) {
      player.pause();
      _isplaying = false;
      notifyListeners();
    } else {
      player.play(path);
      _isplaying = true;
      notifyListeners();
    }
  }
}
