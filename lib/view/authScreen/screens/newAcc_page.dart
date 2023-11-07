import 'package:ecommercegiveji/view/authScreen/widgets/custom_button.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custom_stack.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/custon_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class NewAccScreen extends StatefulWidget {
  const NewAccScreen({super.key});

  @override
  State<NewAccScreen> createState() => _NewAccScreenState();
}

class _NewAccScreenState extends State<NewAccScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myStack(
          child: Column(
        children: [
          CustomTextfield(
            decoration: InputDecoration(hintText: 'Email/Username'),
          ),
          15.heightBox,
          CustomTextfield(
            decoration: InputDecoration(),
          ),
          15.heightBox,
          CustomTextfield(
            decoration: const InputDecoration(
                suffixIcon: Icon(Icons.visibility), hintText: 'Password'),
          ),
          40.heightBox,
          MyButton(
            ontap: () {},
            height: 55,
            width: 343,
            text: 'Continue',
          )
        ],
      ).marginOnly(left: 50, right: 50, top: 30)),
    );
  }
}
