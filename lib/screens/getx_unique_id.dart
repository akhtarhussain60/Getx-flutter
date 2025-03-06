import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/my_controller.dart';
import 'package:get/get.dart';

class UniqueID extends StatefulWidget {
  const UniqueID({super.key});

  @override
  State<UniqueID> createState() => _UniqueIDState();
}

class _UniqueIDState extends State<UniqueID> {
  final MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        title: const Text("Unique ID"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
                id: "txtCount",
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  );
                }),
            GetBuilder<MyController>(
                id: "counter",
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: const TextStyle(fontSize: 20),
                  );
                }),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  myController.increment();
                },
                child: const Text("Increment"))
          ],
        ),
      ),
    );
  }
}
