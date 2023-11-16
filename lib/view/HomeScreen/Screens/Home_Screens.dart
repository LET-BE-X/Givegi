// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/HomeTopBar.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/New_Arival.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/Swiper.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/popular_categories.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/products_list.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/topcategory.dart';
import 'package:ecommercegiveji/view/authScreen/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: hometopcolor,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: HomeTopBar(),
        ),
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(15.h),
              const TopCategory(),
              Gap(15.h),
              const Swiper(),
              Gap(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(
                      myText: 'New Arrivals',
                      size: 24.h,
                      fontWeight: FontWeight.w500),
                  InkWell(
                    onTap: (){},
                      child: Row(
                    children: [
                      Text(
                        "Explore All",
                        style: TextStyle(
                            fontSize: 13.h, fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.purple,
                        size: 13.h,
                      )
                    ],
                  )),
                ],
              ).marginOnly(left: 15.w, right: 15.h),
              Gap(10.h),
              NewArival(),
              Gap(20.h),
              customText(
                      myText: 'Popular Categories',
                      size: 25.h,
                      fontWeight: FontWeight.w500)
                  .marginOnly(left: 10.h),
              Gap(10.h),
              PopularCategories(),
              Gap(10.h),
              ProductList()
            ],
          ))),
    );
  }
}
