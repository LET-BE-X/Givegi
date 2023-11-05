import 'package:ecommercegiveji/view/authScreen/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/image_const.dart';
import '../Widgets/background_splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    changescreen();
  }

  void changescreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => const SignupScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: background(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Image.asset(
              logo,
              height: 82,
              width: 190,
            ),
            SizedBox(
              height: 440,
            ),
            Text(
              "Collect Rewards",
              style: TextStyle(
                fontSize: 34,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Explore your true style",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
