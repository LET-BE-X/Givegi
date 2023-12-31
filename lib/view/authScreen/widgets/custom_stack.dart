import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:flutter/material.dart';

Widget myStack(
    {Widget? child, double? x, double? y, Color? color, Widget? topchild}) {
  return Stack(
    children: [
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: topchild ?? Image.asset(authbg, fit: BoxFit.cover),
      ),
      Positioned(
          top: 280,
          right: -20,
          left: -20,
          child: Container(
            height: 516,
            width: double.infinity,
            decoration: BoxDecoration(
              color: color ?? kWhiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(60, 140),
                  topRight: Radius.elliptical(x ?? 60, y ?? 140)),
            ),
            child: child,
          ))
    ],
  );
}
