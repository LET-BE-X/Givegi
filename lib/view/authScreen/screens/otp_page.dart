import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/customText.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_button.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_stack.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myStack(
          topchild: Column(
            children: [
              Image.asset(
                otpImage,
                height: 174,
                width: 174,
              ),
              10.heightBox,
              customText(
                  align: TextAlign.center,
                  color: kGreenColor,
                  myText: 'Please enter OTP sent to your mobile number',
                  fontWeight: FontWeight.w500,
                  size: 18),
            ],
          ).marginOnly(top: 30, left: 30, right: 30),
          x: 0,
          y: 0,
          color: kOtp,
          child: Column(
            children: [
              MyButton(
                ontap: () {},
                height: 53.85,
                width: 343,
                text: 'Confirm',
              )
            ],
          ).marginOnly(left: 50, right: 50, top: 40)),
    );
  }
}
