import 'dart:math';

import 'package:flutter/material.dart';

class FlutterTaskWidget extends StatelessWidget {
  FlutterTaskWidget({
    super.key,
    this.colorContainer,
    required this.titleText,
    required this.titleTime,
    required this.colorText,
    required this.sizeText,
  });
final  String titleText;
final  String titleTime;
final  Color? colorContainer;
final  Color colorText;
  double sizeText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 130,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            //  'Flutter Task -1',
            titleText,
            style: TextStyle(
              color: colorText,
              fontSize: sizeText,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                const Icon(
                  Icons.timer_sharp,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                
                  titleTime,
                  style: TextStyle(color: colorText),
                ),
                const Spacer(),
                const SizedBox(
                  child: VerticalDivider(
                    color: Color(0xFFf4cfba),
                  ),
                ),
                Transform.rotate(
                  angle: -pi / 2,
                  child: const Text(
                  
                    'TODO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'i Will do This Task',
            style: TextStyle(
              color: colorText,
              fontSize: sizeText,
            ),
          )
        ],
      ),
    );
  }
}
