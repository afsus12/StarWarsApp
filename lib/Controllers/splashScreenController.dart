import 'dart:async';

import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 4), () {
      Get.offNamed("/Movies");
    });
    super.onInit();
  }
}
