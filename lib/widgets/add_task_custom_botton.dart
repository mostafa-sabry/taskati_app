import 'package:flutter/material.dart';
import 'package:taskati_app/widgets/text_app_widget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xFF4e5ae8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: TextAppWidget(
            title: 'Create Task',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
