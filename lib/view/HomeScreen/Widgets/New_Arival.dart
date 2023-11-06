import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:flutter/material.dart';
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
            child: Container(
              height: 280,
              width: 220,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Image.asset(featureproductimage[index],width: 130,height: 150,fit: BoxFit.fill,)),
                      10.heightBox,
                      featureproductname[index].text.bold.size(22).make(),
                      Gap(10),
                      "Description".text.size(18).color(Colors.blueGrey).make(),
                      Gap(20),
                      featureproductprice[index].text.size(20).color(Colors.black87).make(),
                    ],
                  ).onTap(() { }),
                  Gap(30),
                  InkWell(child: Image.asset(cartbag,height: 35,),onTap: () {

                  },),

                ],
              ),
            ),
          ).box.padding(EdgeInsets.only(left: 10)).make()),
        ),

    );
  }
}
