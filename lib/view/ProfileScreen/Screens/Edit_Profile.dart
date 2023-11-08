import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../controller/profile_controller.dart';
import '../../../utils/image_const.dart';
import '../Widgets/customtextbox.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  DateTime _selecteddate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    var controller = Get.find<ProfileController>();
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Gap(66),
              Text(
                "Edit Profile",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Gap(20),
              Center(
                child: Stack(children: [
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
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                            color: Colors.green),
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              controller.changeProfile(context);
                            },
<<<<<<< HEAD
                            icon: Icon(Icons.edit,color: Colors.white,size: 20.h),
=======
                            icon:
                                Icon(Icons.edit, color: Colors.white, size: 20),
>>>>>>> 89c05cfd4ee5bb45cd3d5d9830703f9c7875f121
                            color: Colors.white,
                          ),
                        ),
                      ))
<<<<<<< HEAD
                ]),),
              Gap(10.h),
              Customtextbox(hint: "First Name",ispass: false),
              Gap(10.h),
              Customtextbox(hint: "Last Name",ispass: false),
              Gap(10.h),
              Customtextbox(hint: "Email Id",ispass: false),
              Gap(10.h),
=======
                ]),
              ),
              Gap(10),
              customtextbox(hint: "First Name", ispass: false),
              Gap(10),
              customtextbox(hint: "Last Name", ispass: false),
              Gap(10),
              customtextbox(hint: "Email Id", ispass: false),
              Gap(10),
>>>>>>> 89c05cfd4ee5bb45cd3d5d9830703f9c7875f121
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
<<<<<<< HEAD
                  Customtextbox(hint: "password",ispass: true),
                  Gap(10.h),
                  "Change Password".text.start.size(16).color(Colors.green).make()
=======
                  customtextbox(hint: "password", ispass: true),
                  Gap(10),
                  "Change Password"
                      .text
                      .start
                      .size(16)
                      .color(Colors.green)
                      .make()
>>>>>>> 89c05cfd4ee5bb45cd3d5d9830703f9c7875f121
                ],
              ),
              Gap(10.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
<<<<<<< HEAD
                  Customtextbox(hint: "Phone Number",ispass: false,type: TextInputType.number),
                  Gap(10.h),
                  "Change Phone Number".text.start.size(16).color(Colors.green).make()
                ],
              ),
              Gap(10.h),
              Customtextbox( hint: DateFormat.yMd().format(_selecteddate),ispass:false,widget: IconButton(
                icon:const Icon(Icons.calendar_month_outlined),
                onPressed: (){
                  _getDateFromUser();

                },
              ),),
              Gap(10.h),
=======
                  customtextbox(
                      hint: "Phone Number",
                      ispass: false,
                      type: TextInputType.number),
                  Gap(10),
                  "Change Phone Number"
                      .text
                      .start
                      .size(16)
                      .color(Colors.green)
                      .make()
                ],
              ),
              Gap(10),
              customtextbox(
                hint: DateFormat.yMd().format(_selecteddate),
                ispass: false,
                widget: IconButton(
                  icon: Icon(Icons.calendar_month_outlined),
                  onPressed: () {
                    _getDateFromUser();
                  },
                ),
              ),
              Gap(10),
>>>>>>> 89c05cfd4ee5bb45cd3d5d9830703f9c7875f121
            ],
          ),
        ),
<<<<<<< HEAD
      bottomSheet: SizedBox(
          width: double.infinity,
          height: 70,
          child: ElevatedButton(onPressed: (){}, child: Text("Save Change",style: TextStyle(fontSize: 28.h,fontWeight: FontWeight.bold),),)),

=======
        bottomSheet: Container(
            width: double.infinity,
            height: 70,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Save Change",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            )),
>>>>>>> 89c05cfd4ee5bb45cd3d5d9830703f9c7875f121
      ),
    );
  }

  _getDateFromUser() async {
    DateTime? _pickertime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030));
    if (_pickertime != null) {
      setState(() {
<<<<<<< HEAD
        _selecteddate=_pickertime;

      });
    }else{

=======
        _selecteddate = _pickertime;
        print(_selecteddate);
      });
    } else {
      print("wrong");
>>>>>>> 89c05cfd4ee5bb45cd3d5d9830703f9c7875f121
    }
  }
}
