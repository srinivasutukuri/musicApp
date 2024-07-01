import 'package:flutter/material.dart';
import 'package:sample/common/images/borderimage.dart';

class OnimagetextCardTamplat extends StatelessWidget {
  const OnimagetextCardTamplat({
    super.key,
    this.Rightplaybutton = false,
    this.hidht = 120,
    this.width = 120,
    this.redius = 5,
    required this.title,
    required this.imageurl,
    this.showbutton = true,
    this.ontap,
    this.crossAxisAlignment,
    this.isonimagesubtitle = true,
    this.onimageSubtitle,
    required this.onimagetitle,
  });
  final bool Rightplaybutton;
  final double? width, hidht;
  final String title, imageurl, onimagetitle;

  final String? onimageSubtitle;
  final double redius;
  final bool showbutton;
  final VoidCallback? ontap;
  final CrossAxisAlignment? crossAxisAlignment;
  final bool isonimagesubtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: GestureDetector(
        onTap: ontap,
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
                      left: 0,
                      child: Column(
                        crossAxisAlignment:
                            crossAxisAlignment ?? CrossAxisAlignment.start,
                        children: [
                          Text(
                            onimagetitle,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (isonimagesubtitle)
                            Text(
                              onimageSubtitle!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                        ],
                      ),
                    )
                ],
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
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
