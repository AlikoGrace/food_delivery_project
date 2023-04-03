import 'package:flutter/material.dart';
import 'small_text.dart';

class IconTextWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  IconTextWidget(
      {required this.icon, required this.iconColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(text: text),
      ],
    );
  }
}
