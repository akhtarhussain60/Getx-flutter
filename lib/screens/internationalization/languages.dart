import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/internationalization/messages.dart';
import 'package:flutter_getx/screens/my_controller.dart';
import 'package:get/get.dart';

class Internationalization extends StatefulWidget {
  const Internationalization({super.key});

  @override
  State<Internationalization> createState() => _InternationalizationState();
}

class _InternationalizationState extends State<Internationalization> {
  final MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text("Internationalization"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "hello".tr,
              style: const TextStyle(fontSize: 20, color: Colors.purple),
            ),
            ElevatedButton(
                onPressed: () {
                  myController.changeLanguage("ur", "PK");
                },
                child: const Text("Urdu")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  myController.changeLanguage("fr", "FR");
                },
                child: const Text("French")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  myController.changeLanguage("en", "US");
                },
                child: const Text("English"))
          ],
        ),
      ),
    );
  }
}
