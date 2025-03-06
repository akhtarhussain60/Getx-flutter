import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/home.dart';
import 'package:flutter_getx/screens/home_screen.dart';
import 'package:flutter_getx/screens/my_controller.dart';
import 'package:get/get.dart';

class Binding extends StatelessWidget {
  const Binding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Text("Binding"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "The value is ${Get.find<MyController>().count}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<MyController>().increment();
                },
                child: const Text("Increment")),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/home");
                // Get.to(const Home1(), transition: Transition.downToUp);
              },
              child: const Text("Home"),
            )
          ],
        ),
      ),
    );
  }
}
