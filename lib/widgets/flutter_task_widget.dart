import 'dart:math';

import 'package:flutter/material.dart';
import 'package:taskati_app/widgets/text_app_widget.dart';

class FlutterTaskWidget extends StatelessWidget {
  const FlutterTaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 130,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: const Color(0xff4e5ae8),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextAppWidget(title: 'Flutter Task -1', color: Colors.white),
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
                const TextAppWidget(
                    title: '02:25AM - 02:40 AM', color: Colors.white),
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
          const TextAppWidget(
              title: 'i Will do This Task', color: Colors.white),
        ],
      ),
    );
  }
}
