import 'package:dummy_project/utils/app_strings.dart';
import 'package:dummy_project/utils/common_functions.dart';
import 'package:dummy_project/views/home_page.dart';
import 'package:dummy_project/widgets/custom_button.dart';
import 'package:dummy_project/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  var emailTfController = TextEditingController();
  var passwordTfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppStrings.login),
            CustomTextField(
                hint: AppStrings.emailHint,
                label: AppStrings.email,
                controller: emailTfController),
            const SizedBox(height: 20),
            CustomTextField(
                hint: AppStrings.passwordHint,
                label: AppStrings.password,
                controller: passwordTfController),
            // TextField(
            //     controller: emailTfController,
            //     decoration: const InputDecoration(hintText: 'Email')),
            // TextField(
            //     obscureText: true,
            //     controller: passwordTfController,
            //     decoration: const InputDecoration(hintText: 'password')),
            // ElevatedButton(
            //     onPressed: () {
            //       onButtonTap(context);
            //     },
            //     child: const Text('Submit'))
            CustomButton(text: 'Submit',color: Colors.blue, onTap: (){
              showSnackBar(context, 'i am here.....');
            }),
            SizedBox(height: 20),
            CustomButton(text: 'Submit', onTap: (){
              showSnackBar(context, 'i am here.....');
            }),
          ],
        ),
      ),
    );
  }

  void onButtonTap(BuildContext context) {
    String email = emailTfController.text.trim();
    String password = passwordTfController.text.trim();
    if (email.isEmpty || !CommonFunctions.isValidEmail(email)) {
      showSnackBar(context, 'Invalid email');
    } else if (password.isEmpty || password.length < 8) {
      showSnackBar(context, 'Invalid Password');
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const HomePage()),
      );
    }
  }

  ///function
  void showSnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
    ));
  }
}
