import 'package:flutter/material.dart';
import 'package:sample/constants/colors.dart';
import 'package:sample/constants/size.dart';
import 'package:sample/features/homemusic/screens/Accountscreen/widgets/appbar.dart';
import 'package:sample/features/homemusic/screens/Accountscreen/widgets/listentingprefernces.dart';
import 'package:sample/features/homemusic/screens/Accountscreen/widgets/oflinepreferences.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: backgroundcolor,
        body: Padding(
          padding: EdgeInsets.all(defultscreenpadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Aappbar(),
                Listentingprefernces(),
                SizedBox(height: 20),
                Oflinepreferences(),
              ],
            ),
          ),
        ));
  }
}
