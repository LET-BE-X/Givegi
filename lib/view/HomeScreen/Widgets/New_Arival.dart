// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utils/ListConst.dart';

class NewArival extends StatelessWidget {
  const NewArival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
            6,
            (index) => Card(
                  elevation: 1,
                  child: SizedBox(
                    height: 250.h,
                    width: 220.h,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Image.asset(
                              featureproductimage[index],
                              width: 130.w,
                              height: 130.h,
                              fit: BoxFit.cover,
                            )),
                            Gap(20.h),
                            featureproductname[index]
                                .text
                                .bold
                                .size(22.h)
                                .make(),
                            Gap(5.h),
                            "Description"
                                .text
                                .size(18.h)
                                .color(Colors.blueGrey)
                                .make(),
                            Gap(5.h),
                            featureproductprice[index]
                                .text
                                .size(20.h)
                                .color(Colors.black87)
                                .make()
                          ],
                        ).onTap(() {}).marginOnly(left: 10.w, bottom: 20.h),
                        Gap(10.h),
                      ],
                    ),
                  ),
                ).box.padding(EdgeInsets.only(left: 10.h, top: 10.h)).make()),
      ),
    );
  }
}
