import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: buildBorder(),
        hintText: 'Title',
        hintStyle:const TextStyle(
          color: Color(0xff62FCD7),
        ),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder( Colors.black),
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
