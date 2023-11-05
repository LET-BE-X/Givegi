import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/view/splashscreen/Widgets/customText.dart';
import 'package:ecommercegiveji/view/splashscreen/Widgets/custom_stack.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(color: kWhiteColor, myText: 'Login', size: 20),
      ),
      body: myStack(child: Column(
        
      )),
    );
  }
}
