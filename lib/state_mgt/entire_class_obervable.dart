/*

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_mgt_getx/student.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  // var count = 0.obs;
  //
  // void increment(){
  //   count ++;
  // }

  //var student = Student();

  // For making the entire class obervable
  final student = Student (name: "tom", age:25).obs;

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
              // Obx(() => Text(
              //   "count value is $count",
              //   style: TextStyle(fontSize: 25),
              // )),
              Obx(() => Text(
               // "Name is ${student.name.value}",
                "Name is ${student.value.name}",
                style: TextStyle(fontSize: 25),
              )),
              SizedBox(height: 16,),
              RaisedButton(
                // child: Text("Increment"),
                //   onPressed: (){
                //   increment();
                //   }
                child: Text("Upper"),
                onPressed: (){
                  // if individual variables are obervable
                  //student.name.value = student.name.value.toUpperCase();

                  //If entire class is obervable
                  student.update((student) {
                    student?.name = student.name.toString().toUpperCase();
                  });
                },
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
class Student{
  /*
  Classes can be make obervable by making individuals variables Rx or by making the entire class obervable.
   */
  // Individuals variables Rx
  //var name = "Tom".obs;
 //var age = 25.obs;

  // To make the entire class obervable
var name;
var age;
Student({this.name, this.age});
}
 */