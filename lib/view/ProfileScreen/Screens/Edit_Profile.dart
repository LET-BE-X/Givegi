import 'dart:io';
import 'package:flutter/material.dart';
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
                            icon:
                                Icon(Icons.edit, color: Colors.white, size: 20),
                            color: Colors.white,
                          ),
                        ),
                      ))
                ]),
              ),
              Gap(10),
              customtextbox(hint: "First Name", ispass: false),
              Gap(10),
              customtextbox(hint: "Last Name", ispass: false),
              Gap(10),
              customtextbox(hint: "Email Id", ispass: false),
              Gap(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customtextbox(hint: "password", ispass: true),
                  Gap(10),
                  "Change Password"
                      .text
                      .start
                      .size(16)
                      .color(Colors.green)
                      .make()
                ],
              ),
              Gap(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
            ],
          ),
        ),
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
