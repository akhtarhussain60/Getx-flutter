import 'package:flutter_getx/screens/my_controller.dart';
import 'package:get/get.dart';

class MyappControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}
