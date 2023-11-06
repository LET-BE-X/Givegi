import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        mainAxisExtent: 230
          ),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12)),
              child: Container(
                height: 150,
                width: 150,
                color: Color(0xffE9E9E9),
                child: Image.asset(
                  Categoriesproductimage[index],
                  width: 135,
                  // height: 160,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            10.heightBox,
            categoriesproductname[index]
                .text.center
                .fontFamily(Vx.blackHex)
                .fontWeight(FontWeight.w800)
                .size(8)
                .make()
                .marginOnly(left: 5),
            10.heightBox,


          ],
        )
            .box
            .rounded
        // .color(const Color.fromARGB(96, 37, 37, 37))
            .padding(const EdgeInsets.all(9))
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
