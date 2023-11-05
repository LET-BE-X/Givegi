import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controller/app_controller.dart';
import '../utils/image_const.dart';
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
      HomePage(),
      HomePage(),
      const CartScreen(),
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
        () => CurvedNavigationBar(
          
          animationDuration: Duration(milliseconds: 100),
          height: 60,
          index: controller.currentNavIndex.value,
          buttonBackgroundColor: Colors.lightGreen,
          backgroundColor: Colors.transparent,
          items: [
            Image.asset(
              category,
              width: 40,
            ),
            Image.asset(
              Cart,
              width: 30,
              
            ),
            Image.asset(
              home,
              width: 50,
            ),
            Image.asset(
              notification,
              width: 40,
            ),
            Image.asset(
              profile,
              width: 40,
            ),
          ],
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
