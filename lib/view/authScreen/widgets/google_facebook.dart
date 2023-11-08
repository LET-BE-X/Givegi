// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'customText.dart';

class Google_facebook extends StatelessWidget {
  double? width;
  String asset;
  String text;
  void Function()? ontap;
  Google_facebook({
    Key? key,
    this.width,
    required this.asset,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50.46.h,
        width: width ?? 150.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 0.8,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              asset,
              width: 40.w,
            ),
            5.widthBox,
            customText(
              color: Colors.black,
              myText: text,
              size: 18.h,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }
}
