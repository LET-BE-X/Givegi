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
          Gap(20.h),
          Image.asset(logo,height: 60.h,width: 110.h,),
          Gap(15.h),
          Row(
            children: [
              Gap(20.h),
              SizedBox(
                width: 335.h,
                height: 50.h,
                child: SearchBar(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.h))),
                 elevation: MaterialStateProperty.all(16/9.h),
                  hintText: "Search Products",
                  hintStyle: MaterialStateProperty.all(const TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,)),
                leading: Icon(Icons.search,color: Colors.grey,size: 25.h,),
                  surfaceTintColor:MaterialStateProperty.all(hometopcolor),),
              ),
              Gap(40.h),
              InkWell(child: Stack(fit: StackFit.passthrough,alignment: Alignment.topRight,
                  children:[ Image.asset(cartbag,height: 50.h,),CircleAvatar(
                    backgroundColor: const Color(0xffFF1414),
                      radius: 9.h,child: Text("99+",style: TextStyle(color: Colors.black,fontSize: 9.h,fontWeight: FontWeight.w600),))]),onTap: (){
                Get.to(()=>const CartScreen());
              },)
            ],
          ),

        ],
      ),
    );
  }
}
