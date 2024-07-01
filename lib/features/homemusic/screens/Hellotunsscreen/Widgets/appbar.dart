import 'package:flutter/material.dart';
import 'package:sample/common/appbars/topappbar.dart';
import 'package:sample/constants/colors.dart';

class Happbar extends StatelessWidget {
  const Happbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Topappbar(
      backgroundColor: const Color.fromARGB(255, 1, 16, 26),
      title: Text(
        "Hellotunes",
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      actions: const [
        Icon(
          Icons.search,
          color: white,
        )
      ],
    );
  }
}
