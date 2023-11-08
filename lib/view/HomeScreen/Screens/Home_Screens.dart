
import 'package:ecommercegiveji/utils/color_constant.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/HomeTopBar.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/New_Arival.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/Swiper.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/popular_categories.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/products_list.dart';
import 'package:ecommercegiveji/view/HomeScreen/Widgets/topcategory.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


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
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics() ,
        scrollDirection: Axis.vertical,
        child:  SafeArea(
            child: Column(
          children: [
            Gap(15),
            TopCategory(),
            Gap(15),
            Swiper(),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text("New Arrivals",style: TextStyle(fontSize: 33,fontWeight: FontWeight.w500),),
                InkWell(child:Row(
                  children: [
                    Text("Explore All",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                    Icon(Icons.arrow_forward_ios_outlined,color:Colors.purple,)
                  ],
                ) ,)
              ],
            ),
            Gap(20),
            NewArival(),
            Gap(20),
            Padding(
              padding: EdgeInsets.only(right: 120),
              child: Text("Popular Categories",style: TextStyle(fontSize: 33,fontWeight: FontWeight.w500),),
            ),
            Gap(20),
            PopularCategories(),
            Gap(20),
            ProductList()


          ],
        )),
      ),
    );
  }
}
