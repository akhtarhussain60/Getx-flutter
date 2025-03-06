import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/my_controller.dart';
import 'package:get/get.dart';

class ControllerType extends StatelessWidget {
  const ControllerType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text("Controller Type"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<MyController>(
                init: MyController(),
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: const TextStyle(fontSize: 20),
                  );
                }),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<MyController>().increment();
                },
                child: const Text("Increment")),
          ],
        ),
      ),
    );
  }
}
