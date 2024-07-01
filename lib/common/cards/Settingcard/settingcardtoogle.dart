import 'package:flutter/material.dart';
import 'package:sample/common/toggolbutton/Toggolbutton.dart';
import 'package:sample/constants/colors.dart';

class Settindcardwithtoogle extends StatelessWidget {
  const Settindcardwithtoogle(
      {super.key,
      this.showsubtitle = true,
      this.showsubtitle2 = false,
      this.showtoogle = true,
      this.subtitle,
      this.subtitle2,
      required this.title});
  final bool showsubtitle;
  final bool showsubtitle2;
  final bool showtoogle;
  final String title;
  final String? subtitle, subtitle2;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: showsubtitle
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle!,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey),
                ),
                if (showsubtitle2)
                  Text(
                    subtitle2!,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.grey),
                  ),
              ],
            )
          : null,
      trailing: showtoogle
          ? SizedBox(width: 30, height: 20, child: ToggleSwitch())
          : const Icon(
              Icons.arrow_forward_ios_outlined,
              color: seeallcolor,
            ),
    );
  }
}
