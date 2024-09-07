import 'package:flutter/material.dart';
import 'package:taskati_app/widgets/add_task_bottom_sheet.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF4e5ae8),
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddTaskBottomSheet();
            });
      },
      child: const Text(
        '+ Add Task',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}


