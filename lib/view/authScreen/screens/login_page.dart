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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(color: kWhiteColor, myText: 'Login', size: 20),
      ),
      body: myStack(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextfield(
            decoration: InputDecoration(
              hintText: 'xyz@gmail.com',
            ),
            ispass: false,
          ),
          20.h.heightBox,
          CustomTextfield(
            decoration:const InputDecoration(suffixIcon: Icon(Icons.visibility),hintText: "Password"),
            ispass: true,

          ),
          15.h.heightBox,
          GestureDetector(
            onTap: () {
              Get.to(() => const ForgetPass());
            },
            child: customText(
              color: kGreenColor,
              myText: 'Forgot Password?',
              size: 19.h,
              fontWeight: FontWeight.w500,
            ),
          ),
          30.h.w.heightBox,
          MyButton(
            ontap: () {
              Get.offAll(() =>const Home());
            },
            height: 50,
            width: 344,
            text: 'Login',
          ),
          25.heightBox,
          GestureDetector(
            onTap: () {
              Get.to(() => const SignupScreen());
            },
            child: customText(
              color: kGreenColor,
              myText: ' Don\'t have an account?Signup',
              size: 18.h,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ).marginOnly(left: 50.h, right: 50.h, top: 30.h)),
    );
  }
}
