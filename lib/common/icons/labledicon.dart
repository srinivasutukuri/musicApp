import 'package:flutter/material.dart';
import 'package:sample/constants/colors.dart';

class LabeledIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  const LabeledIcon({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: seeallcolor,
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
