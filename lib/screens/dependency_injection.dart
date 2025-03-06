import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/my_controller.dart';
import 'package:get/get.dart';

class DepencyInjection extends StatelessWidget {
  const DepencyInjection({super.key});

  @override
  Widget build(BuildContext context) {
    // MyController myController = Get.put(
    //   MyController(),
    //   permanent: true,
    //   tag: "Instnace",
    // );

    // Get.lazyPut(() => MyController());

    // Get.create<MyController>(() => MyController());

    Get.putAsync<MyController>(() async => MyController());

    return Center(
      child: ElevatedButton(
          onPressed: () {
            Get.find<MyController>();
            // Get.find<MyController>().incrementCounter();
          },
          child: const Text("Click Me")),
    );
  }
}
