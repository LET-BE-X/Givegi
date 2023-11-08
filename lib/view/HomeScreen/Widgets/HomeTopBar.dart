import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:ecommercegiveji/view/cart/Screens/Cart_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      width: double.infinity,
      color: hometopcolor,
      child: Column(
        children: [
          Gap(25.h),
          Image.asset(logo,height: 50.h,width: 90.h,),
          Gap(10.h),
          Row(
            children: [
              Gap(20.h),
              SizedBox(
                width: 315.h,
                height: 50.h,
                child: TextFormField(

                  style:const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.h),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.green,
                        size: 30.h,
                      ),
                      suffixIconColor: Colors.green,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search Product",
                      hintStyle:const TextStyle(color: Colors.grey)),
                ),
              ),
              Gap(20.h),
              InkWell(child: Image.asset(cartbag,height: 40.h,),onTap: (){
                Get.to(()=>const CartScreen());
              },)
            ],
          ),

        ],
      ),
    );
  }
}
