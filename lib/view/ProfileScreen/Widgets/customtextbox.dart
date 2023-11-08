// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget customtextbox({String? hint, controller, ispass, type, Widget? widget}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      7.heightBox,
      Row(
        children: [
          TextFormField(
            keyboardType: type,
            obscureText: ispass,
            controller: controller,
<<<<<<< HEAD
            decoration:  InputDecoration(

              contentPadding:const EdgeInsets.only(left: 20,right: 20),
              constraints:const BoxConstraints.expand(width: 350,height: 50),

              labelStyle:const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),
=======
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20, right: 20),
              constraints: BoxConstraints.expand(width: 350, height: 50),
              labelStyle:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
>>>>>>> 89c05cfd4ee5bb45cd3d5d9830703f9c7875f121
              labelText: hint,
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
      10.heightBox
    ],
  );
}
