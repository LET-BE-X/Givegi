

import 'package:ecommercegiveji/view/ProfileScreen/Screens/Edit_Profile.dart';
import 'package:ecommercegiveji/view/ProfileScreen/Widgets/profile_widgits.dart';
import 'package:flutter/material.dart';
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
          Profilephoto(),
          Gap(10),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ListTile(
                    onTap: () {
                      if(index==0){
                        Get.to(()=>EditProfile());
                      }
                    },
                    title: profilebuttons[index]
                        .text
                        .fontFamily(Vx.cyanHex50)
                        .make(),
                    // subtitle: ,
                    trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Padding(
                  padding:  EdgeInsets.only(left: 20, right: 20),
                  child: Divider(
                    color: Color(0xffD9D9D9),
                    height: 10,
                  ),
                );
              },
              itemCount: profilebuttons.length),


        ],

    );
  }
}
