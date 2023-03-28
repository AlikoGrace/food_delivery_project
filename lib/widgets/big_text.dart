import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  Color color;
  double size = 20;
  TextOverflow overflow;
   BigText({required this.text, this.color =const Color(0xFF332d2b) , this.overflow= TextOverflow.ellipsis})

  @override
  Widget build(BuildContext context) {
    return Text(text,
      
    );
  }
}
