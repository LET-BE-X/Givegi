import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/utils/image_const.dart';
import 'package:ecommercegiveji/view/cart/Screens/Cart_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: double.infinity,
      color: hometopcolor,
      child: Column(
        children: [
          Gap(28),
          Image.asset(logo,height: 50,width: 90,),
          Gap(10),
          Row(
            children: [
              Gap(20),
              Container(
                width: 315,
                height: 50,
                child: TextFormField(

                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                      ),
                      suffixIconColor: Colors.green,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search Product",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              Gap(20),
              InkWell(child: Image.asset(cartbag,height: 40,),onTap: (){
                Get.to(()=>CartScreen());
              },)
            ],
          ),

        ],
      ),
    );
  }
}
