import 'package:ecommercegiveji/view/ProfileScreen/Screens/NewAddress.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6F8DE),
      appBar: AppBar(
            toolbarHeight: 70,
            backgroundColor: Colors.white,
            title: Row(
              children: [
                Gap(60),
                Text("My Addresses",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.w600),),
              ],
            ),

          ),
      // body: ,
      bottomSheet: Container(
          width: double.infinity,
          height: 70,
          child: ElevatedButton(onPressed: (){
            Get.to(()=>NewAddress());
          }, child: Text("Add New Addresses",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),)),
    );
  }
}
