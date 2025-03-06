import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Next Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const Text(
            //   "This is a Next Screen",
            //   style: TextStyle(color: Colors.red, fontSize: 20),
            // ),
            Text(
              "${Get.parameters["someValue"]}",
              style: const TextStyle(color: Colors.red, fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
