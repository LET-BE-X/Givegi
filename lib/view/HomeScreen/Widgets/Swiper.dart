import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
        height: 200,
        aspectRatio: 1,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration:const Duration(milliseconds: 800),
        autoPlayCurve: Curves.linear,
        enlargeCenterPage: true,
        enlargeFactor: 16/9,

        // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
      ),


    );
  }
}
