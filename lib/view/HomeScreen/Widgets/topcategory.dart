import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utils/ListConst.dart';

class TopCategory extends StatelessWidget {
  const TopCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            5,
                (index) => Column(
              children: [
                Container(
                  child: topcategory[index]
                      .text.center
                      .color(categorytextcolor)
                      .fontFamily(Vx.blackHex)
                      .make(),
                ).box.size(70.h, 25.h).padding( EdgeInsets.only(top: 2.h)).color(categorybgcolor).rounded.make(),
                10.h.heightBox,
              ],
            )
                .box
                .roundedSM
                .margin(
                 EdgeInsets.symmetric(horizontal: 4.h))
                .padding( EdgeInsets.all(4.h))
                .make()
                .onTap(() {})),
      ),
    );
  }
}
