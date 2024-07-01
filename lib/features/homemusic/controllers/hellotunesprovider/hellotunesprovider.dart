import 'package:flutter/material.dart';

class ColorIndexProvider with ChangeNotifier {
  int _colorIndex = 0;

  int get colorIndex => _colorIndex;

  void setColorIndex(int index) {
    _colorIndex = index;
    notifyListeners();
  }
}
