// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:ecommercegiveji/view/More/screens/More_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../controller/app_controller.dart';
import 'HomeScreen/Screens/Home_Screens.dart';
import 'Notification/Screens/Notification_screens.dart';
import 'ProfileScreen/Screens/Profile_screens.dart';
import 'cart/Screens/Cart_screens.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbody = [
      const MoreScreen(),
      const CartScreen(),
      const HomePage(),
      const NotificationScreen(),
      const ProfileScreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
                child: navbody.elementAt(controller.currentNavIndex.value),
              )),
        ],
      ),
      bottomNavigationBar: Obx(
        () => Card(
          elevation: 10,
          child: CurvedNavigationBar(


            animationDuration: Duration(milliseconds: 100),
            height: 50,
            index: controller.currentNavIndex.value,
            buttonBackgroundColor: Colors.green,
            backgroundColor: Colors.transparent,
            items: [
              _buildSvgIcon(svgGrid, 0),
              _buildSvgIcon(svgCart, 1),
              _buildSvgIcon(svgHome, 2),
              _buildSvgIcon(svgBell, 3),
              _buildSvgIcon(svgUser, 4),
            ],
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          ),
        ),
      ),
    );
  }

  Widget _buildSvgIcon(String svgPath, int index) {
    var controller = Get.put(HomeController());
    return SvgPicture.asset(
      svgPath,
      height: 35,
      color: controller.currentNavIndex.value == index
          ? Colors.white
          : Colors.grey,

    );
  }
}
