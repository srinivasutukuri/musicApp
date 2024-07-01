import 'package:flutter/material.dart';
import 'package:sample/common/appbars/topappbar.dart';
import 'package:sample/common/images/circularimage.dart';
import 'package:sample/constants/colors.dart';
import 'package:sample/constants/images.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Topappbar(
      backgroundColor: backgroundcolor,
      leading: Circularimage(
        padding: 8,
        height: 30,
        width: 30,
        redius: 30,
        image: logo,
        backgroundcolor: red,
      ),
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 35,
          ),
        ),
        SizedBox(),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.notification_add,
            color: Colors.white,
            size: 35,
          ),
        ),
      ],
    );
  }
}
