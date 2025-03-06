import 'package:get/get.dart';

class Student {
  /* Class can be made obsercable by making
   individual variables RX or by making the
   entire class observable.*/
  // Indivisual variables Rx

  var name = "Akhtar".obs;
  var age = 21.obs;

  //To make the entire class obvervable
  var nameTwo;
  var ageTwo;
  Student({this.nameTwo, this.ageTwo});

  void update(Null Function(dynamic student) param0) {}
}
