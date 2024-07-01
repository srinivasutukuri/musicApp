import 'package:flutter/material.dart';
import 'package:sample/common/images/borderimage.dart';
import 'package:sample/constants/colors.dart';
import 'package:sample/constants/images.dart';

class Musictilecard extends StatelessWidget {
  const Musictilecard({super.key, this.showicon = true});
  final bool showicon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            const Boderedimage(
              width: 50,
              hight: 50,
              url: treanding,
              redius: 0,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Angaaron (From'Pushpa 2 The Rule')",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    "Shreya Ghoshal - Angaaron (From 'Pushpa 2 The Rule')",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: seeallcolor),
                  ),
                ],
              ),
            ),
            if (showicon) const Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }
}
