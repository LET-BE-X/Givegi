import 'dart:math';
import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:ecommercegiveji/view/authScreen/signup.dart';
import 'package:ecommercegiveji/view/splashscreen/Widgets/customText.dart';
import 'package:ecommercegiveji/view/splashscreen/Widgets/custom_button.dart';
import 'package:ecommercegiveji/view/splashscreen/Widgets/custom_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../splashscreen/Widgets/custon_textfield.dart';
import '../splashscreen/Widgets/google_facebook.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(color: kWhiteColor, myText: 'Signup', size: 22.w),
      ),
      body: myStack(
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
          Obx(
            () => MyButton(
              ontap: () {
                Get.off(() => LoginScreen());
              },
              height: max(30.w, 60),
              width: double.infinity,
              text: 'Create Account',
            ),
          ),
          40.h.heightBox,
          Center(
            child: customText(
              color: Colors.grey,
              myText: 'or continue with',
              size: 25.w,
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
          40.h.heightBox,
          customText(
            color: Colors.black,
            myText:
                'By creating an account, you agree with\nGiveji’s Terms and Conditions and Privacy Policy',
            size: 18,
            align: TextAlign.center,
          )
        ],
      ).marginOnly(left: 65.w, right: 60.w, top: 30.h)),
    );
  }
}
