import 'package:dummy_project/utils/app_assets.dart';
import 'package:dummy_project/utils/constants.dart';
import 'package:dummy_project/views/onboarding/onboarding1.dart';
import 'package:dummy_project/widgets/cusotm_widget.dart';
import 'package:dummy_project/widgets/custom_post.dart';
import 'package:flutter/material.dart';

import '../models/post.dart';
import 'notes_screen.dart';
import 'onboarding/onbaording2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> posts = [];
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: controller,
          children: [
       OnBoardingScreen1(),
        OnBoardingScreen2(onTap: (){
          controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.linear);
       },),
       Expanded(child: Container(color: Colors.blue,child: const Center(child: Text('My name is Khan '),),)),
       Expanded(child: Container(color: Colors.orangeAccent)),
      ]),
    );
  }
}
