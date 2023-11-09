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
                      size: 26,
                      fontWeight: FontWeight.w500),
                  InkWell(
                      child: Row(
                    children: [
                      Text(
                        "Explore All",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.purple,
                      )
                    ],
                  )),
                ],
              ).marginOnly(left: 15, right: 15),
              Gap(10.h),
              NewArival(),
              Gap(20.h),
              customText(
                      myText: 'Popular Categories',
                      size: 30,
                      fontWeight: FontWeight.w500)
                  .marginOnly(left: 15),
              Gap(10.h),
              PopularCategories(),
              Gap(10.h),
              ProductList()
            ],
          ))),
    );
  }
}
