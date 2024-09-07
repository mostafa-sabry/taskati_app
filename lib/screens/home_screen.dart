import 'package:flutter/material.dart';
import 'package:taskati_app/widgets/days_widget.dart';
import 'package:taskati_app/widgets/profile_named_widget.dart';
import 'package:taskati_app/widgets/text_app_widget.dart';

import '../widgets/days_list_view_widget.dart';
import '../widgets/elevated_button_widget.dart';
import '../widgets/new_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfileNamed(),
              SizedBox(height: 20,),    
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextAppWidget(
                      title: 'October 30,2023 \n Today', color: Colors.black),
                  ElevatedButtonWidget(),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 100,
                child: NewListViewDaysWidget(),
              ),
              NewListView(),
            ],
          ),
        ),
      ),
    );
  }
}
