import 'package:flutter/material.dart';
import 'package:sample/common/icons/circularicon.dart';
import 'package:sample/common/images/borderimage.dart';
import 'package:sample/constants/colors.dart';

class MusicCardTamplat extends StatelessWidget {
  const MusicCardTamplat({
    super.key,
    this.Rightplaybutton = false,
    this.hidht = 120,
    this.width = 120,
    this.redius = 5,
    required this.title,
    this.atistname = false,
    this.subtitle,
    required this.imageurl,
    this.showbutton = true,
    this.ontap,
    this.crossAxisAlignment,
  });
  final bool Rightplaybutton;
  final double? width, hidht;
  final String title, imageurl;
  final bool atistname;
  final String? subtitle;
  final double redius;
  final bool showbutton;
  final VoidCallback? ontap;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Boderedimage(
                    url: imageurl,
                    width: double.infinity,
                    hight: hidht,
                    redius: redius,
                  ),
                  if (showbutton)
                    Positioned(
                      bottom: 0,
                      left: Rightplaybutton
                          ? null
                          : 0, // Set left to 0 if Rightplaybutton is false
                      right: Rightplaybutton ? 0 : null,
                      child: const Circularicon(
                        icon: Icons.play_arrow,
                        backgroundcolor: Colors.white,
                        iconcolor: Colors.black,
                      ),
                    )
                ],
              ),
              SizedBox(height: 5),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              if (atistname)
                Text(
                  subtitle!,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: seeallcolor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
