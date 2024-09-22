import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});

  final String hint;
  final int maxLines;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (Value) {
        if (Value?.isEmpty ?? true) {
          return 'Field is  required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder(),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Color(0xFF4e5ae8),
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
