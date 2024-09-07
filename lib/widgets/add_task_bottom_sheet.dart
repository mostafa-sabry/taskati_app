import 'package:flutter/material.dart';
import 'package:taskati_app/widgets/add_task_custom_botton.dart';
import 'package:taskati_app/widgets/custom_text_field_widget.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hint: 'Note',
              maxLines: 5,
            ),
            SizedBox(
              height: 60,
            ),
            CustomButton(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
