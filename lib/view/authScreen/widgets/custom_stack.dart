import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget myStack({Widget? child}) {
  return Stack(
    children: [
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Image.asset(authbg, fit: BoxFit.cover),
      ),
      Positioned(
          top: 220,
          right: -20,
          left: -20,
          child: Container(
            height: 600.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(60, 140),
                  topRight: Radius.elliptical(60, 140)),
            ),
            child: child,
          ))
    ],
  );
}
