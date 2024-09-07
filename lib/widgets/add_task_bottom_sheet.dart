import 'package:flutter/material.dart';
import 'package:taskati_app/widgets/custom_text_field_widget.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextField()
        ],
      ),
    );
  }
}
