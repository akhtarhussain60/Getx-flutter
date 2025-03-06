import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/all_controller_binding.dart';
import 'package:flutter_getx/screens/binding.dart';
import 'package:flutter_getx/screens/controller_lifecycle.dart';
import 'package:flutter_getx/screens/controller_type.dart';
import 'package:flutter_getx/screens/dependency_injection.dart';
import 'package:flutter_getx/screens/getx_services.dart';
import 'package:flutter_getx/screens/getx_unique_id.dart';
import 'package:flutter_getx/screens/getx_workers.dart';
import 'package:flutter_getx/screens/home.dart';
import 'package:flutter_getx/screens/home_controller_binding.dart';
import 'package:flutter_getx/screens/home_screen.dart';
import 'package:flutter_getx/screens/internationalization/languages.dart';
import 'package:flutter_getx/screens/internationalization/messages.dart';
import 'package:flutter_getx/screens/myapp_controller_binding.dart';
import 'package:flutter_getx/screens/next_screen.dart';
import 'package:flutter_getx/screens/student.dart';
import 'package:flutter_getx/screens/unknown_route.dart';
import 'package:flutter_getx/screens/upper&lower.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  await initServices();
  MyappControllerBinding().dependencies();
  runApp(const MyApp());
}

Future<void> initServices() async {
  print("Starting services......");
  await Get.putAsync<Service>(() async => Service());
  print("All Services Started......");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*
 
  // 1. Initial value is recomended, but not mendatory
  final name = RxString("");
  final isLogged =RxBool(false);
  final count = RxInt(0);
  final balance = RxDouble(0.0);
  final items = RxList<String>([]);
  final map = RxMap<String, int>();

  // 2. use Darts Generics, Rx<Type>
  final name2 = Rx<String>("");
  final isLogged2 = Rx<bool>(false);
  final count2 = Rx<int>(1);
  final balance2 = Rx<double>(1.1);
  final items2 = Rx<List>([]);
  final map2 = Rx<Map<String, int>>({});

 // Custom Class - It can be any class, literally
 final user = Rx("");
 
                          */
  /// TODO Increment and decrement Functions
  /*
  var count = 0.obs;
  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }          */

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // translations: Messages(),
      // locale: const Locale("en", "US"),
      // fallbackLocale: const Locale("en", "US"),
      initialBinding: AllControllerBinding(),
      title: "Flutter GetX",
      home: const Binding(),
      // initialRoute: "/",
      getPages: [
        GetPage(
          name: "/home",
          page: () => const Home1(),
          binding: HomeControllerBinding(),
        ),
      ],

      // getPages: [
      //   GetPage(
      //     name: "/",
      //     page: () => const Internationalization(),
      //   )
      // ],
      /*
        defaultTransition: Transition.zoom,
        getPages: [
          GetPage(name: "/", page: () => const MyApp()),
          GetPage(name: "/home", page: () => const Home()),
          // GetPage(
          //     name: "/nextScreen",
          //     page: () => const NextScreen(),
          //     transition: Transition.leftToRight),

          GetPage(
              name: "/nextScreen/:someValue",
              page: () => const NextScreen(),
              transition: Transition.leftToRight)
        ],
        unknownRoute:
            GetPage(name: "/notFound", page: () => const UnknownRoute()), */

      /// TODO Reactive state Maneger by using OBX
      /// Increment number and Decrement Number Method
      // Scaffold(
      //   appBar: AppBar(
      //     centerTitle: true,
      //     backgroundColor: Colors.amber,
      //     title: const Text(
      //       "State Management",
      //     ),
      //   ),
      //   body: Center(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Obx(() => Text(
      //               "Count value is $count",
      //               style: const TextStyle(fontSize: 20, color: Colors.red),
      //             )),
      //         const SizedBox(height: 10),
      //         ElevatedButton(
      //             onPressed: () => increment(),
      //             child: const Text(
      //               "Increment",
      //             )),
      //         ElevatedButton(
      //             onPressed: () {
      //               if (count != 0) {
      //                 decrement();
      //               }
      //             },
      //             child: const Text(
      //               "Decrement",
      //             ))
      //       ],
      //     ),
      //   ),
      // )

      /// TODO Route Navigation using Named Routes
      // Scaffold(
      //   appBar: AppBar(
      //     centerTitle: true,
      //     backgroundColor: Colors.amber,
      //     title: const Text(
      //       "Navigation",
      //     ),
      //   ),
      //   body: Center(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         ElevatedButton(
      //             onPressed: () {
      //               // Dynamic link Navigation
      //               // Get.toNamed(
      //               //     "/home?channel=Ripples code&content=Flutter GetX");
      //               Get.toNamed("/home");
      //             },
      //             child: const Text("Go to Home"))
      //       ],
      //     ),
      //   ),
      // )

      /// TODO Route Navigation for unnamed Route using GETX
      // Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Colors.amber,
      //     title: const Text("Navigation"),
      //   ),
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         ElevatedButton(
      //             onPressed: () async {
      //                Get.to(const Home(), arguments: "Akhtar Hussain");
      //                Get.to(const Home(),
      //                   fullscreenDialog: true,
      //                   curve: Curves.bounceIn,
      //                   transition: Transition.zoom,
      //                   duration: const Duration(seconds: 1));
      //               var data = await Get.to(const Home());
      //               print("The Receive data is: $data");
      //             },
      //             child: const Text("Go to Home"))
      //       ],
      //     ),
      //   ),
      // )

      /// TODO Bottom Sheet GetX
      /*     Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: const Text("Bottom Sheet"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.bottomSheet(
                          // barrierColor: Colors.pink,
                          backgroundColor: Colors.purple,
                          isDismissible: false,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 4)),
                          // enableDrag: false
                          Container(
                            child: Wrap(
                              children: [
                                ListTile(
                                  leading: const Icon(
                                    Icons.wb_sunny_outlined,
                                    color: Colors.white,
                                  ),
                                  title: const Text(
                                    "Light Theme",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onTap: () {
                                    Get.changeTheme(ThemeData.light());
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(
                                    Icons.wb_sunny,
                                    color: Colors.white,
                                  ),
                                  title: const Text(
                                    "Dark Theme",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onTap: () {
                                    Get.changeTheme(ThemeData.dark());
                                  },
                                ),
                              ],
                            ),
                          ));
                    },
                    child: const Text("Bottom Sheet"))
              ],
            ),
          ),
        )  */

      /// TODO Show Dialog Using GetX
      /*   Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text("Dialog"),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.defaultDialog(
                          title: "Dialog Title",
                          titleStyle: const TextStyle(fontSize: 25),
                          middleText: "This ia a Middle Text",
                          middleTextStyle: const TextStyle(fontSize: 15),
                          backgroundColor: Colors.amber,
                          radius: 10,
                          // textCancel: "Cancel",
                          // textConfirm: "Confirm",
                          // onCancel: () {
                          //   print("Cancel");
                          // },
                          // onConfirm: () {
                          //   print("Confirm");
                          // },
                          // cancel: const Text("Cancel"),
                          // confirm: const Text("Confirm")
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Get.back();
                                  print("Close");
                                },
                                child: const Text("Close")),
                            ElevatedButton(
                                onPressed: () {
                                  print("Confirm");
                                },
                                child: const Text("Confirm")),
                          ],
                          barrierDismissible: false
                          // content: const Icon(Icons.add),
                          );
                    },
                    child: const Text("show dialog"))
              ],
            ),
          ),
        ),  */

      /// TODO SnackBar Using GetX
      /* Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("snackbar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      "GetX", "Successfully Created",
                      snackPosition: SnackPosition.BOTTOM,
                      // titleText: const Text("GetX Two"),
                      // messageText: const Text("Try Again"),
                      animationDuration: const Duration(seconds: 2),
                      backgroundColor: Colors.blue,
                      backgroundGradient: const LinearGradient(
                          colors: [Colors.yellow, Colors.orange]),
                      borderColor: Colors.pink,
                      borderWidth: 2,
                      borderRadius: 10,
                      boxShadows: [
                        const BoxShadow(
                            color: Colors.pink,
                            blurRadius: 0.9,
                            spreadRadius: 0.9,
                            offset: Offset(5, 8))
                      ],
                      margin: const EdgeInsets.all(20),
                      colorText: Colors.white,
                      isDismissible: true,
                      dismissDirection: DismissDirection.horizontal,
                      duration: const Duration(seconds: 5),
                      forwardAnimationCurve: Curves.bounceOut,
                      icon: const Icon(Icons.abc),
                      mainButton: TextButton(
                          onPressed: () {
                            print("Suceesfull");
                          },
                          child: const Text("click")),
                      shouldIconPulse: true,
                      reverseAnimationCurve: Curves.easeInCubic,
                      snackStyle: SnackStyle.GROUNDED,
                      overlayBlur: 5,
                      // overlayColor: Colors.grey,
                      snackbarStatus: (i) {
                        print("Good");
                      },
                      // userInputForm: Form(
                      //     child: Column(
                      //   children: [TextFormField(), const Text("Ok")],
                      // ))
                    );
                  },
                  child: const Text("show snackbar"))
            ],
          ),
        ),
      ), */
    );
  }
}
