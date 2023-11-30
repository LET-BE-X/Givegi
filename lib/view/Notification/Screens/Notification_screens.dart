

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utils/ListConst.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // toolbarHeight: 50,
          // backgroundColor: Colors.white,
          title: Text("Notification",style: TextStyle(fontSize: 28.h),),

          ),
        backgroundColor:const Color(0xffE6F8DE),
        body: ListView.builder(itemBuilder: (context, index) {
          return Card(
            elevation: 7,
            margin:const EdgeInsets.only(left: 25,right: 50,top: 20),


            child: ListTile(
              splashColor: Colors.green,dense: true,

              style: ListTileStyle.drawer,
              contentPadding:const EdgeInsets.all(10),
              title: orders[index].text.fontWeight(FontWeight.w600).make(),
              subtitle: "2:20".text.make(),
            ).box.roundedFull.make(),
          ).box.size(100, 90).roundedSM.alignTopLeft.make();
        },itemCount: orders.length,)
    );;
  }
}
