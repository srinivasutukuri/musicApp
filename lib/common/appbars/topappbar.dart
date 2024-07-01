import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Topappbar extends StatelessWidget implements PreferredSizeWidget {
  const Topappbar(
      {super.key,
      this.actions,
      this.elevation = 0,
      this.leading,
      this.title,
      this.backgroundColor,
      this.centertitle = false});
  final Widget? title, leading;
  final List<Widget>? actions;
  final double elevation;
  final Color? backgroundColor;
  final bool centertitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: AppBar(
          title: title,
          actions: actions,
          elevation: elevation,
          leading: leading,
          backgroundColor: backgroundColor,
          centerTitle: centertitle,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
