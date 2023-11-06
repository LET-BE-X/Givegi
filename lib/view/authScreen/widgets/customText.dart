// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class customText extends StatelessWidget {
  Color color;
  String myText;
  double size;
  TextAlign? align;
  FontWeight? fontWeight;
  customText({
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
