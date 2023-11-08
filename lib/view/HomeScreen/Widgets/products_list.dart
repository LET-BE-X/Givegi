import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utils/ListConst.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: featureproductimage.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 300),
        itemBuilder: (context, index) {
          return Card(
            elevation: 7.2,
            margin: EdgeInsets.all(8),
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(6), side: BorderSide.none),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  child: Image.asset(
                    featureproductimage[index],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                10.heightBox,
                featureproductname[index]
                    .text
                    .fontFamily(Vx.blackHex)
                    .fontWeight(FontWeight.w800)
                    .size(16)
                    .make()
                    .marginOnly(left: 5),
                10.heightBox,
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    Text(
                      featureproductrating[index] + " /(5)",
                      style: TextStyle(
                        fontFamily: Vx.blackHex,
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ).marginOnly(left: 2, bottom: 10),
                featureproductprice[index]
                    .text
                    .fontFamily(Vx.blackHex)
                    .size(15)
                    .fontWeight(FontWeight.w800)
                    .color(Colors.green)
                    .make()
                    .marginOnly(left: 5),
              ],
            )
                .box
                .rounded
                // .color(const Color.fromARGB(96, 37, 37, 37))
                .padding(const EdgeInsets.all(3))
                .make()
                .onTap(() {
              // Get.to(() => ItemDetails(
              //     title: featureproductname[index],
              //     image: featureproductimage[index],
              //     price: featureproductprice[index]));
            }),
          );
        },
      ),
    );
  }
}
