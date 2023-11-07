import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../controller/profile_controller.dart';
import '../../../utils/image_const.dart';

class Profilephoto extends StatelessWidget {
  const Profilephoto({Key? key}) : super(key: key);

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
                  height: 30,
                ),
                 Row(
                  children: [
                    Gap(130),
                     const Text(
                       "Profile",
                       style: TextStyle(fontSize: 32),
                     ),
                    Gap(95),
                    InkWell(child: CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: Icon(Icons.exit_to_app),),onTap: (){},)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),

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
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            color: Colors.blue),
                        child: IconButton(
                          onPressed: () {
                            controller.changeProfile(context);
                          },
                          icon: Icon(Icons.edit),
                          color: Colors.white,
                        ),
                      ))
                ]),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Username",
                  style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "9811000000",style: TextStyle(fontSize: 18),

                )
              ],
            ).box
                .padding(const EdgeInsets.all(16))
                .margin(EdgeInsets.only())
                .make(),
          ),
    ),
    );
  }
}
