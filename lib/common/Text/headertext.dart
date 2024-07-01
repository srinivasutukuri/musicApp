import 'package:flutter/material.dart';
import 'package:sample/constants/colors.dart';

class Headline extends StatelessWidget {
  const Headline(
      {super.key,
      required this.headline,
      this.showseeall = true,
      this.issmall = false,
      this.showeleveatedbutton = false,
      this.btextcolor = seeallcolor,
      this.showicon = false,
      this.buttontext = "See all"});

  final String headline, buttontext;
  final bool showseeall;
  final bool issmall;
  final bool showeleveatedbutton;
  final Color btextcolor;
  final bool showicon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headline,
          style: issmall
              ? Theme.of(context).textTheme.titleMedium
              : Theme.of(context).textTheme.titleLarge,
        ),
        const Spacer(),
        if (showseeall)
          if (showeleveatedbutton)
            Container(
              padding: EdgeInsets.all(0),
              height: 27,
              width: 45,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  buttontext,
                  style: TextStyle(fontSize: 10, color: dark),
                ),
              ),
            )
          else
            TextButton(
              onPressed: () {},
              child: Text(
                buttontext,
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: btextcolor,
                    ),
              ),
            ),
        if (showicon)
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: red,
            size: 15,
          )
      ],
    );
  }
}
