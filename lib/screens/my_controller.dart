import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/student.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyController extends GetxController {
  /* var student = Student();
  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }

  void convertToLowerCase() {
    student.name.value = student.name.value.toLowerCase();
  } */
/*
  var student = Student(nameTwo: "Hussain", ageTwo: 21).obs;

  void convertToUpperCase() {
    student.update((student) {
      student!.nameTwo = student.nameTwo.toString().toUpperCase();
    });
  }

  void convertToLowerCase() {
    student.update((student) {
      student!.nameTwo = student.nameTwo.toString().toLowerCase();
    });
  }  */

  /*
  var count = 0;
  void increment() async {
    await Future.delayed(const Duration(seconds: 1));
    count++;
    update();
  }

  void cleanUpTask() {
    print("Clean Up Tasks");
  }

  @override
  void onInit() {
    increment();
    super.onInit();
  }

  @override
  void onClose() {
    cleanUpTask();
    super.onClose();
  }  */

  var count = 0.obs;
  void increment() {
    count++;
    // update(["txtCount"]);
    // update(["counter"]);
  }

  /// TODO Workers

  @override
  void onInit() {
    // ever(count, (_) => print(count));
    // everAll([count], (_) => print(count));
    // once(count, (_) => print(count));
    debounce(
        count,
        (_) => print("When the user stop typing"
            " for 1 second the value of count will be printed"),
        time: const Duration(seconds: 1));
    interval(
     
      count, (i) => print("Ignore all changes"),
        time: const Duration(seconds: 3));

    super.onInit();
  }

  /// TODO Internationalization using GetX
  void changeLanguage(var languageCode, var countryCode) {
    var locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }

  // Future<void> incrementCounter() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   int counter = (prefs.getInt("counter") ?? 0) + 1;
  //   print("Pressed $counter Time");
  //   await prefs.setInt("counter", counter);
  // }
}
