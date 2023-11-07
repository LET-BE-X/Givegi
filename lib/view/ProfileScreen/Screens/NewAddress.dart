import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Addresses.dart';

class NewAddress extends StatelessWidget {
  const NewAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6F8DE),
      bottomSheet:  Container(
          width: double.infinity,
          height: 70,
          child: ElevatedButton(onPressed: (){
            Get.to(()=>Address());
          }, child: Text("Save Address",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),)),
    );
  }
}
