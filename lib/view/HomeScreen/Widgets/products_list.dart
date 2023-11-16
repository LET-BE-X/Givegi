// ignore_for_file: avoid_unnecessary_containers

import 'package:ecommercegiveji/view/authScreen/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utils/ListConst.dart';

class ProductList extends StatelessWidget {
   const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool offer=true;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: featureproductimage.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 6.h,
          crossAxisSpacing: 0.h,
          mainAxisExtent: 395.h),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.h),
                  topRight: Radius.circular(12.h)),
              child: Image.asset(
                featureproductimage[index],
                height: 240.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            10.h.heightBox,
            featureproductname[index]
                .text
                .fontFamily(Vx.blackHex)
                .fontWeight(FontWeight.w800)
                .size(16.w)
                .make()
                .marginOnly(left: 5.h),
            10.h.heightBox,
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20.h,
                ),
                Text(
                  "${featureproductrating[index]} /(5)",
                  style: TextStyle(
                    fontFamily: Vx.blackHex,
                    fontSize: 15.h,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ).marginOnly(left: 2.w, bottom: 5.h),
            featureproductprice[index]
                .text
                .fontFamily(Vx.blackHex)
                .size(13.w)
                .fontWeight(FontWeight.w800)
                .color(Colors.green)
                .make()
                .marginOnly(left: 5.h),
            10.h.heightBox,
            offer==true?Container(decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.white,border: Border.all(width: 1.3.h,color: Colors.grey)),width: 100.h,height: 25.h,child: Center(child: customText(myText: "Free Shipping",size: 14.h)),):Container()

          ],
        )
            .box
            .rounded
        // .color(const Color.fromARGB(96, 37, 37, 37))
            .padding( EdgeInsets.all(3.h))
            .make()
            .onTap(() {
          // Get.to(() => ItemDetails(
          //     title: featureproductname[index],
          //     image: featureproductimage[index],
          //     price: featureproductprice[index]));
        });
      });}

}
