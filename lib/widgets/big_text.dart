import 'package:flutter/material.dart';
import 'package:food_delivery_project/dimentions.dart';

class BigText extends StatelessWidget {
  final String text;
  Color color;
  double size;
  TextOverflow overflow;
  BigText(
      {required this.text,
      this.color = const Color(0xFF332d2b),
      this.overflow = TextOverflow.ellipsis,
      this.size = 0});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          color: color, fontSize: size == 0 ? Dimentions.font20 : size),
    );
  }
}
