import 'package:flutter/material.dart';
import 'package:taskati_app/widgets/days_widget.dart';
import 'package:taskati_app/widgets/flutter_task_widget.dart';
import 'package:taskati_app/widgets/profile_named_widget.dart';
import 'package:taskati_app/widgets/text_app_widget.dart';

import '../widgets/elevated_button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ProfileNamed(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextAppWidget(
                      title: 'October 30,2023 \n Today', color: Colors.black),
                  ElevatedButtonWidget(),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DaysWidget(
                    title1: 'OCT',
                    title2: '30',
                    title3: 'MON',
                    SizeText: 13,
                    color: const Color(0xFF4e5ae8),
                    colorInText: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  DaysWidget(
                    title1: 'Oct',
                    title2: '31',
                    title3: 'TUE',
                    SizeText: 13,
                    color: Colors.white,
                    colorInText: Colors.black,
                  ),
                  const SizedBox(width: 10),
                  DaysWidget(
                    title1: 'NOV',
                    title2: '1',
                    title3: 'WED',
                    SizeText: 13,
                    color: Colors.white,
                    colorInText: Colors.black,
                  ),
                  const SizedBox(width: 10),
                  DaysWidget(
                    title1: 'NOV',
                    title2: '2',
                    title3: 'THU',
                    SizeText: 13,
                    color: Colors.white,
                    colorInText: Colors.black,
                  ),
                  const SizedBox(width: 10),
                  DaysWidget(
                    title1: 'NOV',
                    title2: '3',
                    title3: 'THU',
                    SizeText: 13,
                    color: Colors.white,
                    colorInText: Colors.black,
                  ),
                ],
              ),
            ),
            FlutterTaskWidget(
              titleText: 'Flutter Task -1',
              titleTime: '02:25AM - 02:40 AM',
              colorContainer: const Color(0xff4e5ae8),
              colorText: Colors.white,
              sizeText: 20,
            ),
            FlutterTaskWidget(
              titleText: 'Flutter Task -2',
              titleTime: '02:25AM - 02:40 AM',
              colorContainer: const Color(0xffff4667),
              colorText: Colors.white,
              sizeText: 20,
            ),
            FlutterTaskWidget(
              titleText: 'Flutter Task -3',
              titleTime: '02:25AM - 02:40 AM',
              colorContainer: const Color(0xffff9e69),
              colorText: Colors.white,
              sizeText: 20,
            ),
          ],
        ),
      ),
    );
  }
}
