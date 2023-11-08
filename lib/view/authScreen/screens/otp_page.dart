import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/customText.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_button.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  String _code = "";

  bool _onEditing = false;

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
            CustomText(
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
            VerificationCode(
              digitsOnly: true,
              fullBorder: true,
              fillColor: kWhiteColor,
              textStyle: const TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              keyboardType: TextInputType.number,
              underlineColor: kGreenColor,
              length: 4,
              margin: const EdgeInsets.all(5),
              cursorColor: Colors.blue,
              onCompleted: (String value) {
                setState(() {
                  _code = value;
                });
              },
              onEditing: (bool value) {
                setState(() {
                  _onEditing = value;
                });
                if (!_onEditing) FocusScope.of(context).unfocus();
              },
            ),
            60.heightBox,
            MyButton(
              ontap: () {},
              height: 53.85,
              width: 343,
              text: 'Confirm',
            ),
            40.heightBox,
            CustomText(
              color: Colors.black,
              myText: 'Didn\'t receive an OTP?',
              size: 18,
              fontWeight: FontWeight.w400,
            )
          ],
        ).marginOnly(left: 50, right: 50, top: 80),
      ),
    );
  }
}
