import 'package:flutter/material.dart';
import 'package:sample/constants/colors.dart';

class Settingwidget extends StatelessWidget {
  const Settingwidget({
    super.key,
    required this.title,
    this.subtitle,
    this.showsubtitle = true,
  });
  final String title;
  final String? subtitle;
  final bool showsubtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Spacer(),
        if (showsubtitle)
          Text(
            subtitle!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.blue),
          ),
        const SizedBox(width: 7),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          color: seeallcolor,
        )
      ],
    );
  }
}
