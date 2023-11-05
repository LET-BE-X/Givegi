import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:flutter/material.dart';

Widget myStack({Widget? child}) {
  return Stack(
    children: [
      Positioned(child: Image.asset(authbg)),
      Positioned(
          top: 250,
          right: -20,
          left: -20,
          child: Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: child,
          ))
    ],
  );
}
