// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

Widget customtextbox({String? hint, controller, ispass, type, Widget? widget}) {
  return Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      7.h.heightBox,
      Row(
        children: [
          Gap(30.h.w),
          TextFormField(
            keyboardType: type,
            obscureText: ispass,
            controller: controller,
            autofocus: RenderObject.debugCheckingIntrinsics,

            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.h),
              constraints: BoxConstraints.expand(width: 370.h, height: 70.h),
              hintStyle:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
              hintText: hint,
              fillColor: Colors.black,
              focusColor: Colors.black,
            ),
          ),
          widget == null
              ? Container()
              : Container(
                  child: widget,
                )
        ],
      ),
      10.h.heightBox
    ],
  );
}
