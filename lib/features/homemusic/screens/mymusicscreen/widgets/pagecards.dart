import 'package:flutter/material.dart';
import 'package:sample/common/shapes/containers/ligthshadecontainer.dart';
import 'package:sample/constants/colors.dart';

class Pagecards extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final bool showsubtitle;

  const Pagecards(
      {Key? key,
      required this.icon,
      required this.title,
      this.subtitle,
      this.showsubtitle = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ligthshadecontainer(
      padding: 20,
      width: 180,
      higth: 110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: white,
          ),
          SizedBox(height: 5),
          Text(title, style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 5),
          if (showsubtitle)
            Text(
              subtitle!,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: seeallcolor),
            ),
        ],
      ),
    );
  }
}
