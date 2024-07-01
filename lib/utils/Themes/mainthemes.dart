import 'package:flutter/material.dart';
import 'package:sample/utils/Themes/widgettheme/elevatedbuttontheme.dart';
import 'package:sample/utils/Themes/widgettheme/texttheme.dart';

class AppTheme {
  static ThemeData lighttheme = ThemeData(
      brightness: Brightness.light,
      textTheme: Apptexttheme.ligthtexttheme,
      elevatedButtonTheme: Appelivatedbartheme.lightelevatedbuttontheme);
  static ThemeData darktheme = ThemeData(brightness: Brightness.dark);
}
