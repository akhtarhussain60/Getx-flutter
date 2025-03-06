import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/my_controller.dart';
import 'package:flutter_getx/screens/student.dart';
import 'package:get/get.dart';

class UpperLowerCase extends StatelessWidget {
  const UpperLowerCase({super.key});

  @override
  Widget build(BuildContext context) {
    var student = Student();

    // For making the entire class observable
    MyController myController = Get.put(MyController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        title: const Text("UpperLower Text"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(
            //   () => Text(
            //     // "Name is:: ${student.name.value}",
            //     // "Name : ${myController.student.value.nameTwo}",

            //     // "Name : ${studentone.value.nameTwo}",
            //     style: const TextStyle(fontSize: 20),
            //   ),
            // ),
            // Obx(() => Text(
            //       "Age: ${myController.student.value.ageTwo}",
            //       style: const TextStyle(
            //         fontSize: 20,
            //       ),
            //     )),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  // If indivisual variable are abserable
                  // student.name.value = student.name.value.toUpperCase();

                  // If entire class is observable
                  // studentone.update((studentone) {
                  //   studentone!.nameTwo =
                  //       studentone.nameTwo.toString().toUpperCase();
                  // });
                  // myController.convertToUpperCase();
                },
                child: const Text("Upper")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  // If indivisual variable are observable
                  // student.name.value = student.name.value.toLowerCase();

                  // If entire class is observable
                  // studentone.update((studentone) {
                  //   studentone!.nameTwo =
                  //       studentone.nameTwo.toString().toLowerCase();
                  // });
                  // myController.convertToLowerCase();
                },
                child: const Text("Lower")),
          ],
        ),
      ),
    );
  }
}
