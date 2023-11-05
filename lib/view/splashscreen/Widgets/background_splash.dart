import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:flutter/cupertino.dart';

Widget background({Widget? child,image,height,width}){
  return Container(
    height: double.infinity,
    width: double.infinity,

    decoration: BoxDecoration(
      image: DecorationImage(image:AssetImage(splashBg),fit: BoxFit.fill),
    ),
    child: child,

  ) ;
}

