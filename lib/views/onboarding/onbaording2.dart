import 'package:flutter/material.dart';

class OnBoardingScreen2 extends StatelessWidget {
  final VoidCallback onTap;

  const OnBoardingScreen2({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: onTap,
        child: Text('click'),
      )),
    );
  }
}
