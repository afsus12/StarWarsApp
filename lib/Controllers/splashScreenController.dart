import 'dart:async';

import 'package:get/get.dart';

class SplashScreenController extends GetxController {


@override
  void onInit() {
   

    Timer(Duration(seconds: 3), (){
    Get.offNamed("/Movies");
    
    });
    super.onInit();
  }
}