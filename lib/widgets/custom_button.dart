import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;

  const CustomButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 20),
          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Center(
              child: Text(
            text,
            style: TextStyle(color: color),
          )),
        ),
      ),
    );
  }
}
