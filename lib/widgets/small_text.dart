import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color color;
  double size;
  double height;
  SmallText(
      {required this.text,
      this.size = 12,
      this.color = const Color(0xFFccc7c5),
      this.height = 1.2});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
