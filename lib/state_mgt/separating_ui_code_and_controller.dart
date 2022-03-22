/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_mgt_getx/my_controller.dart';
import 'package:state_mgt_getx/student.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // Create the instance of controller
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "State management",
      home: Scaffold(
        appBar: AppBar(title: Text("State Management"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
               // "Name is ${myController.student.name}",
        "Name is ${myController.student.value.name}",
                style: TextStyle(fontSize: 25),
              )),
              SizedBox(height: 16,),
              RaisedButton(
                  child: Text("Upper"),
                  onPressed: (){
                    // if individual variables are observable
                    //myController.convertToUpperCase();

                    // if entire class is observable
                    myController.convertToUpperCase();
                  }
              )
            ],
          ),
        ),
      ),

    );
  }
}

 */

/*
import 'package:get/get.dart';
import 'package:state_mgt_getx/student.dart';

class MyController extends GetxController {
  // var student = Student();
  //
  // void convertToUpperCase(){
  //   student.name.value = student.name.value.toUpperCase();
  //}

  var student = Student(name: "Tom", age: 25).obs;

  void convertToUpperCase(){
    student.update((student) {
      student?.name = Student.name.toString().toUpperCase();
    });

  }
}
 */

/*
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
 */