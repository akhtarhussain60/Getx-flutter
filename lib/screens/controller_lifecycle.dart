import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/my_controller.dart';
import 'package:get/get.dart';

class ControllerLifecycles extends StatelessWidget {
  final MyController myController = Get.put(MyController());
  ControllerLifecycles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        title: const Text("Controller Life Cycle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyController>(builder: (controller) {
              return Text(
                "The value is ${controller.count}",
                style: const TextStyle(fontSize: 25),
              );
            }),
          ],
        ),
      ),
    );
  }
}
