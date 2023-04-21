import 'package:flutter/material.dart';
import 'small_text.dart';
import 'package:food_delivery_project/dimentions.dart';

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
          size: Dimentions.iconSize24,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(text: text),
      ],
    );
  }
}
