

import 'package:ecommercegiveji/view/ProfileScreen/Screens/Addresses.dart';
import 'package:ecommercegiveji/view/ProfileScreen/Screens/Edit_Profile.dart';
import 'package:ecommercegiveji/view/ProfileScreen/Screens/My%20Order.dart';
import 'package:ecommercegiveji/view/ProfileScreen/Screens/Paymentd.dart';
import 'package:ecommercegiveji/view/ProfileScreen/Widgets/profile_widgits.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../utils/ListConst.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return  Column(
        children: [
          const Profilephoto(Pagename: "Profile"),
          Gap(10.h),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:  EdgeInsets.only(left: 5.h),
                  child: ListTile(
                    onTap: () {
                      if(index==0){
                        Get.to(()=>const EditProfile());
                      }else if(index==1){
                        Get.to(()=>const Orders());
                      }else if(index==2){
                        Get.to(()=>const Payment());
                      }else if(index==3){
                        Get.to(()=>const Address());
                      }
                    },
                    title: profilebuttons[index]
                        .text
                        .fontFamily(Vx.cyanHex50)
                        .make(),
                    // subtitle: ,
                    trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15.h,),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return  Padding(
                  padding:  EdgeInsets.only(left: 20.h, right: 20.h),
                  child: Divider(
                    color:const Color(0xffD9D9D9),
                    height: 10.h,
                  ),
                );
              },
              itemCount: profilebuttons.length),


        ],

    );
  }
}
