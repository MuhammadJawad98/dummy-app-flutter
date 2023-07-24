import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final Function(String) onTap;
  const CustomWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      onTap('clicked....');
    }, child: const Text('submit'));
  }
}
