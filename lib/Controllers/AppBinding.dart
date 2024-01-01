import 'package:get/get.dart';
import 'package:star_wars/Controllers/AppController.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() => AppController());
  }
}
