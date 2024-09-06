import 'package:flutter/material.dart';

class DaysWidget extends StatelessWidget {
  DaysWidget(
      {super.key,
      required this.title1,
      required this.title2,
      required this.title3,
      required this.SizeText,
      required this.color,
      required this.colorInText});

  String title1;
  String title2;
  String title3;
  double SizeText;
  Color color;
  Color colorInText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 90,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title1,
            style: TextStyle(color: colorInText, fontSize: SizeText),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title2,
            style: TextStyle(color: colorInText, fontSize: 28),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title3,
            style: TextStyle(color: colorInText, fontSize: SizeText),
          ),
        ],
      ),
    );
  }
}
