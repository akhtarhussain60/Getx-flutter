import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/home_controller.dart';
import 'package:flutter_getx/screens/home_screen.dart';
import 'package:get/get.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _HomeState();
}

class _HomeState extends State<Home1> {
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "The value is ${Get.find<HomeController>().count}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<HomeController>().increment();
                },
                child: const Text("Increment")),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}
