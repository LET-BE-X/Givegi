import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                ).box.size(70, 25).padding(EdgeInsets.only(top: 2)).color(categorybgcolor).rounded.make(),
                10.heightBox,
              ],
            )
                .box
                .roundedSM
                .margin(
                const EdgeInsets.symmetric(horizontal: 4))
                .padding(const EdgeInsets.all(4))
                .make()
                .onTap(() {})),
      ),
    );
  }
}
