import 'package:flutter/material.dart';
import 'package:taskati_app/widgets/text_app_widget.dart';

class DaysWidget extends StatelessWidget {
  const DaysWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin:const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: const Color(0xFF4e5ae8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextAppWidget(
            title: 'OCT',
            color: Colors.white,
            fontSize: 13,
          ),
          SizedBox(
            height: 10,
          ),
          TextAppWidget(
            title: '30',
            color: Colors.white,
            fontSize: 13,
          ),
          SizedBox(
            height: 10,
          ),
          TextAppWidget(
            title: 'MON',
            color: Colors.white,
            fontSize: 13,
          ),
        ],
      ),
    );
  }
}
