import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/Bottomnavigator.dart';
import 'package:sample/features/homemusic/controllers/hellotunesprovider/hellotunesprovider.dart';
import 'package:sample/features/musicplayscreen/controller/musicbarprovider.dart';
import 'package:sample/utils/Themes/mainthemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ColorIndexProvider()),
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(
          create: (_) => Musicbarprovider()..initplayer(),
        )
      ],
      child: MaterialApp(
          title: 'Music App',
          theme: AppTheme.lighttheme,
          darkTheme: AppTheme.darktheme,
          home: Musicapp()),
    );
  }
}
