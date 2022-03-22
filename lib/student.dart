import 'package:get/get.dart';
class Student{
  /*
  Classes can be make obervable by making individuals variables Rx or by making the entire class obervable.
   */
 // Individuals variables Rx
 // var name = "Tom".obs;
// var age = 25.obs;

  // To make the entire class obervable
var name ;
var age;
Student({ this.name, this.age});
}