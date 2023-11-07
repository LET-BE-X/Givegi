import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_stack.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          x: 0,
          y: 0,
          color: kOtp,
          child: Column(
            children: [],
          ).marginOnly(left: 50, right: 50, top: 40)),
    );
  }
}
