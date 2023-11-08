import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../controller/profile_controller.dart';
import '../../../utils/image_const.dart';

class Profilephoto extends StatelessWidget {
  final String Pagename;
  const Profilephoto({Key? key,required this.Pagename}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    var controller = Get.find<ProfileController>();
    return Obx(()=>Card(
      elevation: 3,
      child: Container(

            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                 Row(
                  children: [
                    Gap(160.h),
                      Text(
                      "$Pagename",
                       style: TextStyle(fontSize: 26.h,fontWeight: FontWeight.bold),
                     ),
                    Gap(135.h),
                    InkWell(child: CircleAvatar(
                      radius: 15.h,
                      backgroundColor: Colors.purple,
                      child: Icon(Icons.exit_to_app,size: 20.h,),),onTap: (){},)
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Stack(children: [
                  Container(
                    width: 130.h,
                    height: 130.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4.h, color: Colors.white),

                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: controller.profileimgpath.isEmpty
                          ? Image.asset(
                        profilepic,
                        fit: BoxFit.fill,
                      ) // Provide a default asset path
                          : Image.file(
                        File(controller.profileimgpath.value),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40.h,
                        width: 50.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2.h,
                              color: Colors.white,
                            ),
                            color: Colors.green),
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              controller.changeProfile(context);
                            },
                            icon: Icon(Icons.edit,color: Colors.white,size: 20.h),
                            color: Colors.white,
                          ),
                        ),
                      ))
                ]),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Username",
                  style: TextStyle(fontSize: 18.h,fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "9811000000",style: TextStyle(fontSize: 14.h),

                )
              ],
            ).box
                .padding( EdgeInsets.all(16.h))
                .make(),
          ),
    ),
    );
  }
}
