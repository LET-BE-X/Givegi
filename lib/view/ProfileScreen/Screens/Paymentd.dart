import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            Gap(60.h),
            Text("My Payments",style: TextStyle(fontSize: 28.h,color: Colors.black,fontWeight: FontWeight.w600),),
          ],
        ),

      ),
      backgroundColor: const Color(0xffE6F8DE),
      body:const  Text("Payments"),
    );
  }
}
