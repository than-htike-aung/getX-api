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
  //MyController myController = Get.put(MyController());

  // If init property is not used in GetX<Type of Controller> then

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
             GetX<MyController>(
                init: MyController(),
                 builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: TextStyle(fontSize: 25),
                  );
                 }
             ),
              SizedBox(height: 16,),
              RaisedButton(
                child: Text("Increment"),
                  onPressed: (){

                   // myController.increment();

                    // If instance of controller not created at top
                    Get.find<MyController>().increment();
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
  var count = 0.obs;

  void increment(){
    count++;
    //update(); // will update the count variable on UI which uses it
  }
}
 */