import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/my_controller.dart';
import 'package:get/get.dart';

class GetxWorkers extends StatelessWidget {
  final MyController myController = Get.put(MyController());

  GetxWorkers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        title: const Text("Workers"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                myController.increment();
              },
              child: const Text(
                "Increment",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                onChanged: (value) {
                  myController.increment();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
