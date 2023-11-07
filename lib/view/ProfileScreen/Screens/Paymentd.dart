import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Gap(60),
            Text("My Payments",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.w600),),
          ],
        ),

      ),
      backgroundColor: Color(0xffE6F8DE),
      body: Text("Payments"),
    );
  }
}
