import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "This is a Home Screen",
              style: TextStyle(color: Colors.amber, fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/nextScreen/1234");
              },
              child: const Text("Next Screen"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: "The Received data is from the Home Screen");
              },
              child: const Text("Back to Main"),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Channel name is ${Get.parameters["channel"]} and content is ${Get.parameters["content"]}",
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red, fontSize: 20),
            )
            // Text(
            //   Get.arguments,
            //   style: const TextStyle(fontSize: 15, color: Colors.blue),
            // ),
          ],
        ),
      ),
    );
  }
}
