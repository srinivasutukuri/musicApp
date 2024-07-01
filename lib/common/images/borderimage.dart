import 'package:flutter/material.dart';

class Boderedimage extends StatelessWidget {
  const Boderedimage({
    super.key,
    this.width,
    this.hight,
    this.redius = 10,
    this.border,
    this.fit = BoxFit.cover,
    this.isnetworkimage = false,
    this.ontap,
    required this.url,
  });
  final double? width, hight;
  final double redius;
  final VoidCallback? ontap;
  final BoxFit fit;
  final String url;
  final bool isnetworkimage;
  final Border? border;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          border: border,
        ),
        width: width,
        height: hight,
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(redius)),
            child: Image(
              image: isnetworkimage
                  ? NetworkImage(url)
                  : AssetImage(url) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}
