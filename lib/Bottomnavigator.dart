import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/features/homemusic/screens/Accountscreen/accountscreen.dart';
import 'package:sample/features/homemusic/screens/Hellotunsscreen/hellotunescreen.dart';
import 'package:sample/features/homemusic/screens/homescreen/homescreen.dart';
import 'package:sample/features/homemusic/screens/mymusicscreen/mymusicscreen.dart';

class Musicapp extends StatefulWidget {
  const Musicapp({super.key});

  @override
  _MusicappState createState() => _MusicappState();
}

class _MusicappState extends State<Musicapp> {
  int currentIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Homescreen(),
    const Mymusicscreen(),
    Helotunescreen(),
    Container(
      color: Colors.blue,
    ),
    const AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<NavigationProvider>(
      builder: (context, provider, child) {
        return _widgetOptions.elementAt(provider.currentIndex);
      },
    ), bottomNavigationBar: Consumer<NavigationProvider>(
      builder: (context, provider, child) {
        return NavigationBar(
          height: 70,
          selectedIndex: provider._currentIndex,
          onDestinationSelected: (int index) {
            provider.setCurrentIndex(index);
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_filled), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.music_note), label: "My Music"),
            NavigationDestination(
                icon: Icon(Icons.headphones_rounded), label: "Hellotunes"),
            NavigationDestination(
                icon: Icon(Icons.podcasts_outlined), label: "Podcasts"),
            NavigationDestination(
                icon: Icon(Icons.person_add_alt_1), label: "My Account"),
          ],
        );
      },
    ));
  }
}

// Provider

class NavigationProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
