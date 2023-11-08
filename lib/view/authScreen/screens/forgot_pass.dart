import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/view/app.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/customText.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_button.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_stack.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custon_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myStack(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText(
              align: TextAlign.center,
              color: kGreenColor,
              myText:
                  'Please enter your email to receive a\n reset password link',
              size: 18),
          40.heightBox,
          CustomTextfield(
            decoration: const InputDecoration(hintText: 'E-mail Id'),
          ),
          30.heightBox,
          MyButton(
              ontap: () {
                Get.to(() => const Home());
              },
              height: 55,
              text: 'Submit',
              width: 343)
        ],
      ).marginOnly(left: 50, right: 50, top: 40)),
    );
  }
}
