import 'dart:io';
import 'package:ecommercegiveji/view/authScreen/widgets/customText.dart';
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
          toolbarHeight: 70.h.w,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Gap(65.h.w),
               Text(
                "Edit Profile",
                style: TextStyle(
                    fontSize: 28.h.w,
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
              Gap(20.h.w),
              Center(
                child: Stack(children: [
                  Container(
                    width: 130.h.w,
                    height: 130.h.w,
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
                        height: 40.h.w,
                        width: 50.h.w,
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
                            icon:
                                Icon(Icons.edit, color: Colors.white, size: 20.h),
                            color: Colors.white,
                          ),
                        ),
                      ))

                ]),
              ),
              Gap(15.h.w),
              customtextbox(hint: "First Name", ispass: false),
              customtextbox(hint: "Last Name", ispass: false),
              customtextbox(hint: "Email Id", ispass: false),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customtextbox(hint: "password", ispass: true),
                  Row(
                    children: [
                      Gap(30.w),
                      customText(myText: "Change Password",color: Colors.green,size: 18.h.w),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customtextbox(
                      hint: "Phone Number",
                      ispass: false,
                      type: TextInputType.number),

                  Row(
                    children: [
                      Gap(30.w),
                      customText(myText: "Change Phone Number",color: Colors.green,size: 18.h.w),
                    ],
                  )
                ],
              ),

              customtextbox(
                hint: DateFormat.yMd().format(_selecteddate),
                ispass: false,
                widget: IconButton(
                  icon: const Icon(Icons.calendar_month_outlined),
                  onPressed: () {
                    _getDateFromUser();
                  },
                ),
              ),
              
            ],
          ),
        ),

        bottomNavigationBar: SizedBox(
            width: double.infinity,
            height: 70,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Save Change",
                style:  TextStyle(fontSize: 28.h.w, fontWeight: FontWeight.bold),
              ),
            )),
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

        _selecteddate = _pickertime;
        print(_selecteddate);
      });
    } else {
      print("wrong");

    }
  }
}
