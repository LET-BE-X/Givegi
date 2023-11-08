// ignore_for_file: prefer_const_constructors

import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/view/app.dart';
import 'package:ecommercegiveji/view/authScreen/screens/forgot_pass.dart';
import 'package:ecommercegiveji/view/authScreen/screens/signup_page.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/customText.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_button.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_stack.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custon_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(color: kWhiteColor, myText: 'Login', size: 20),
      ),
      body: myStack(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextfield(
            decoration: InputDecoration(
              hintText: 'xyz@gmail.com',
            ),
          ),
          20.heightBox,
          CustomTextfield(
            decoration: InputDecoration(suffixIcon: Icon(Icons.visibility)),
          ),
          15.heightBox,
          GestureDetector(
            onTap: () {
              Get.to(() => ForgetPass());
            },
            child: CustomText(
              color: kGreenColor,
              myText: 'Forgot Password?',
              size: 19,
              fontWeight: FontWeight.w500,
            ),
          ),
          30.heightBox,
          MyButton(
            ontap: () {
              Get.to(() => Home());
            },
            height: 50,
            width: 344,
            text: 'Login',
          ),
          25.heightBox,
          GestureDetector(
            onTap: () {
              Get.to(() => SignupScreen());
            },
            child: CustomText(
              color: kGreenColor,
              myText: ' Don\'t have an account?Signup',
              size: 18,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ).marginOnly(left: 50, right: 50, top: 30)),
    );
  }
}
