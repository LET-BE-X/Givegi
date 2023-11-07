import 'package:ecommercegiveji/view/authScreen/widgets/custom_stack.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          
        ],
      ).marginOnly(left: 50, right: 50, top: 30)),
    );
  }
}
