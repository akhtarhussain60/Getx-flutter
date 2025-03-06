import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/service.dart';
import 'package:get/get.dart';

class GetxServices extends StatelessWidget {
  const GetxServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Services"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.find<Service>().incrementCounter();
                },
                child: const Text("Increment"))
          ],
        ),
      ),
    );
  }
}
