import 'package:ecommercegiveji/view/authScreen/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../../utils/image_const.dart';
import '../Widgets/background_splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    changescreen();
  }

  Future<void> changescreen() async {
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => const LoginScreen());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: background(
        child: Column(
          children: [
            Gap(70.h),
            Image.asset(
              logo,
              height: 82.h,
              width: 190.h,
            ),
            Gap(440.h),
            Text(
              "Collect Rewards",
              style: TextStyle(
                fontSize: 34.h,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Explore your true style",
              style: TextStyle(
                fontSize: 20.h,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gap(40.h),
          ],
        ),
      ),
    );
  }
}
