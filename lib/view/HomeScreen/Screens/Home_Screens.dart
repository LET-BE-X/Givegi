
import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/HomeTopBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: hometopcolor,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: HomeTopBar(),
        ),
      ),
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics() ,
        scrollDirection: Axis.vertical,
        child: const SafeArea(child: Column(
          children: [
          ],
        )),
      ),
    );
  }
}
