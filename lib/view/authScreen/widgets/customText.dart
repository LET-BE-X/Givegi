// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types, must_be_immutable
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  Color color;
  String myText;
  double size;
  TextAlign? align;
  FontWeight? fontWeight;
  CustomText({
    Key? key,
    required this.color,
    required this.myText,
    required this.size,
    this.align,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      textAlign: align,
      style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight),
    );
  }
}
