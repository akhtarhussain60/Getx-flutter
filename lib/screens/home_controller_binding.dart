import 'package:flutter_getx/screens/home_controller.dart';
import 'package:get/get.dart';

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    void dependencies() {
      Get.lazyPut<HomeController>(
        () => HomeController(),
      );
    }
  }
}
