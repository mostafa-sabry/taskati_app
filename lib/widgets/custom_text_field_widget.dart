import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder(),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Color(0xff62FCD7),
        ),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(Colors.black),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: color ?? Colors.black,
        ));
  }
}
