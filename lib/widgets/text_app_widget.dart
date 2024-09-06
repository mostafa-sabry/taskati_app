import 'package:flutter/material.dart';

class TextAppWidget extends StatelessWidget {
  const TextAppWidget({super.key, required this.title, required this.color,  this.fontSize = 20});

  final String title;
  final Color color;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      // 'October 30,2023 \n Today',
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
