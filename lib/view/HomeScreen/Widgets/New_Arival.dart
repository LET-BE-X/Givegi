import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utils/ListConst.dart';

class NewArival extends StatelessWidget {
  const NewArival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(6, (index) => Card(
            elevation: 7,
            child: SizedBox(
              height: 280.h,
              width: 220.h,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Image.asset(featureproductimage[index],width: 130.h,height: 150.h,fit: BoxFit.fill,)),
                      Gap(20.h),
                      featureproductname[index].text.bold.size(22.h).make(),
                      Gap(10.h),
                      "Description".text.size(18.h).color(Colors.blueGrey).make(),
                      Gap(20.h),
                      featureproductprice[index].text.size(20.h).color(Colors.black87).make(),
                    ],
                  ).onTap(() { }),
                  Gap(30.h),

                ],
              ),
            ),
          ).box.padding( EdgeInsets.only(left: 10.h,top: 10.h)).make()),
        ),

    );
  }
}
