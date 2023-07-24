import 'package:dummy_project/widgets/custom_button.dart';
import 'package:dummy_project/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  final String? text;
  const NotesScreen({Key? key, this.text}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  var textController= TextEditingController();

  @override
  void initState() {
    super.initState();
    if(widget.text!=null){
      textController.text = widget.text!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(hint: 'hint', label: 'label',controller: textController),
          SizedBox(height: 10),
          CustomButton(text: 'submit', onTap: () {
            Navigator.pop(context,textController.text);
          })
        ],
      ),
    );
  }
}
