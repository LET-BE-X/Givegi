import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/customText.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_stack.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return myStack(
        child: Column(
      children: [
        customText(
            color: kGreenColor,
            myText:
                'Please enter your email to receive a\n reset password link',
            size: 18)
      ],
    ).marginOnly(left: 40, right: 40, top: 40));
  }
}
