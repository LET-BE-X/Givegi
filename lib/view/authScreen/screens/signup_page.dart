import 'dart:math';
import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:ecommercegiveji/view/app.dart';
import 'package:ecommercegiveji/view/authScreen/screens/login_page.dart';

import 'package:ecommercegiveji/view/authScreen/widgets/customText.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_button.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/custon_textfield.dart';
import '../widgets/google_facebook.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(color: kWhiteColor, myText: 'Signup', size: 22.w),
      ),
      body: myStack(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText(
                color: kGreenColor,
                myText: 'Lets start, create your Giveji Account',
                fontWeight: FontWeight.bold,
                size: max(14.w, 20.h)),
            30.h.heightBox,
            CustomTextfield(
                decoration: const InputDecoration(
                    focusColor: Colors.grey,
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 0.8)),
                    focusedBorder: OutlineInputBorder())),
            30.h.heightBox,
            MyButton(
              ontap: () {
                Get.to(() => LoginScreen());
              },
              height: 55,
              width: double.infinity,
              text: 'Create Account',
            ),
            20.heightBox,
            Center(
              child: customText(
                color: Colors.grey,
                myText: 'or continue with',
                size: 20,
              ),
            ),
            25.h.heightBox,
            Google_facebook(
                width: 400,
                asset: svgMail,
                text: 'CONTINUE WITH EMAIL',
                ontap: () {}),
            30.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Google_facebook(
                  ontap: () {},
                  asset: svgGoogle,
                  text: 'GOOGLE',
                ),
                Google_facebook(
                  ontap: () {},
                  asset: svgFacebook,
                  text: 'FACEBOOK',
                )
              ],
            ),
            30.heightBox,
            customText(
              color: Colors.black,
              myText:
                  'By creating an account, you agree with\nGiveji’s Terms and Conditions and Privacy Policy',
              size: 15,
              align: TextAlign.center,
            )
          ],
        ).marginOnly(left: 65, right: 60, top: 30),
      )),
    );
  }
}
