import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utils/ListConst.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: categoriesproductname.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
        mainAxisExtent: 230.h
          ),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14.h),
                  topRight: Radius.circular(14.h)),
              child: Container(
                height: 150.h,
                width: 150.h,
                color:const Color(0xffE9E9E9),
                child: Image.asset(
                  Categoriesproductimage[index],

                  // height: 160,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            10.h.heightBox,
            categoriesproductname[index]
                .text.center
                .fontFamily(Vx.blackHex)
                .fontWeight(FontWeight.w600)
                .size(10.h)
                .make()
                .marginOnly(left: 5),
            10.h.heightBox,


          ],
        )
            .box
            .rounded
        // .color(const Color.fromARGB(96, 37, 37, 37))
            .padding( EdgeInsets.all(9.h))
            .make()
            .onTap(() {
          // Get.to(() => ItemDetails(
          //     title: featureproductname[index],
          //     image: featureproductimage[index],
          //     price: featureproductprice[index]));
        });
      },
    );
  }
}
