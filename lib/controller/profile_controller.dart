import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileController extends GetxController{
  var profileimgpath=''.obs;
  changeProfile(context)async{
    try{
      final img =await ImagePicker().pickImage(source: ImageSource.gallery,imageQuality: 70);
      if(img==null) return ;
      profileimgpath.value=img.path;

    }on PlatformException catch(e){
      VxToast.show(context, msg: e.toString());
    }
  }
}