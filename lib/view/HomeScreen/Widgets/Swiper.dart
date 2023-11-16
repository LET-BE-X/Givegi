// ignore_for_file: file_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/ListConst.dart';

class Swiper extends StatefulWidget {
  const Swiper({Key? key}) : super(key: key);

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: sliderlist.map((item)=>Image.asset(item,fit: BoxFit.cover,width: double.infinity,)).toList(),
      options: CarouselOptions(enlargeStrategy: CenterPageEnlargeStrategy.height,
        height: 200.h,
        aspectRatio: 16/9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration:const Duration(milliseconds: 800),
        autoPlayCurve: Curves.linear,
        enlargeCenterPage: true,
        enlargeFactor: 1,

        // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
      ),


    );
  }
}
