import 'package:flutter/material.dart';
import 'package:sample/common/appbars/topappbar.dart';
import 'package:sample/constants/colors.dart';

class Aappbar extends StatelessWidget {
  const Aappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Topappbar(
      leading: const Icon(
        Icons.arrow_back_ios,
        color: seeallcolor,
      ),
      title: Text(
        "Settings",
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      centertitle: true,
      backgroundColor: backgroundcolor,
    );
  }
}
