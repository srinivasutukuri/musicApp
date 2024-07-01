import 'package:flutter/material.dart';
import 'package:sample/common/appbars/topappbar.dart';
import 'package:sample/common/shapes/containers/circularcontainer.dart';
import 'package:sample/constants/colors.dart';

class Mappbar extends StatelessWidget {
  const Mappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Topappbar(
      backgroundColor: backgroundcolor,
      leading: CCircularContainer(
        child: Center(
          child: Text(
            "us",
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ),
      title: Text(
        "My Music",
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
