// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  InputDecoration? decoration;
  CustomTextfield( {
    Key? key,
   this.decoration
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: decoration,
    );
  }
}
