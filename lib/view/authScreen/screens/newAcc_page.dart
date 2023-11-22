// ignore_for_file: camel_case_types, file_names

import 'package:ecommercegiveji/view/authScreen/screens/otp_page.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_button.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_stack.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custon_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class New_accScreen extends StatefulWidget {
  const New_accScreen({super.key});

  @override
  State<New_accScreen> createState() => _New_accScreenState();
}

class _New_accScreenState extends State<New_accScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myStack(
          child: Column(
        children: [
          Gap(20.h),
          CustomTextfield(
            decoration: const InputDecoration(hintText: 'Email/Username'),ispass: false,
          ),
          15.h.heightBox,
          CustomTextfield(
            decoration:const InputDecoration(),ispass: false,
          ),
          15.h.heightBox,
          CustomTextfield(
            decoration: const InputDecoration(
                suffixIcon: Icon(Icons.visibility), hintText: 'Password'),ispass: true,
          ),
          70.h.heightBox,
          MyButton(
            ontap: () {
              Get.to(() => const OtpPage());
            },
            height: 55.h,
            width: 375.h,
            text: 'Continue',
          )
        ],
      ).marginOnly(left: 50.h, right: 60.h, top: 30.h)),
    );
  }
}
