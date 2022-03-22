/*

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_mgt_getx/my_controller.dart';
import 'package:state_mgt_getx/service.dart';
import 'package:state_mgt_getx/student.dart';


void main() async {
  await initServices();
  runApp( MyApp());
}

Future<void> initServices() async {
  print('starting services ...');
  await Get.putAsync<Service>(() async => await  Service());
  print("All services started...");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX service",
      home: Scaffold(
        appBar: AppBar(title: Text("Getx service"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Increment"),
                onPressed: (){
                  Get.find<Service>().incrementCounter();
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
services.dart

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*
  This class is like a GetxController
  It shares the same lifecycle ( onInit(), onReady(), onClose() )
  It just notifies GetX dependency injection system
  that this subclass can not be removed from memory
 */

class Service extends GetxService{
  Future<void> incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }


}
 */