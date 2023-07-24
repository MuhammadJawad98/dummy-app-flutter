import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final String label;

  const CustomTextField(
      {Key? key, this.controller, required this.hint, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var styling = OutlineInputBorder(
      borderSide: const BorderSide(width: 3, color: Colors.greenAccent), //<-- SEE HERE
      borderRadius: BorderRadius.circular(50.0));
    return TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          enabledBorder: styling,
          focusedBorder: styling,
          border: styling
        ));
  }
}
