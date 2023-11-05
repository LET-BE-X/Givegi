import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/view/splashscreen/Widgets/custom_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: myStack(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'hello',
            style: TextStyle(
                fontSize: 25.h,
                color: kGreenColor,
                fontWeight: FontWeight.bold),
          ),
        ],
      ).marginOnly(left: 80.w, right: 50.w, top: 50.h)),
    );
  }
}
