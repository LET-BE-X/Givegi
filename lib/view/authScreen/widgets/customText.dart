// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types, must_be_immutable
import 'package:flutter/material.dart';

Widget customText(
    {String? myText,
      TextStyle? Style,
    TextAlign? align,
    double? size,
    FontWeight? fontWeight,
    Color? color}) {
  return Text(
    myText!,
    textAlign: align,
    style: Style==null?TextStyle(
        fontSize: size, color: color ?? Colors.black, fontWeight: fontWeight):Style,
  );
}
