/*

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_mgt_getx/my_controller.dart';
import 'package:state_mgt_getx/service.dart';
import 'package:state_mgt_getx/student.dart';

import 'all_controller_binding.dart';
import 'home.dart';
import 'home_controller.binding.dart';
import 'myapp_controller_binding.dart';


void main()  {
  MyAppControllerBinding().dependencies();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      //initialBinding: AllControllerBinding(),
      title: "Binding",

      // If binding applied at route level;
      getPages: [
        GetPage(name: '/home', page: () => Home(),
        binding: HomeControllerBinding()
        )
      ],

      // Binding Builder (if we don't want to use separate binding class)
      // getPages: [
      //   GetPage(name: '/home', page: () => Home(),
      //     binding: BindingsBuilder(() => {
      //       Get.lazyPut<HomeControllerBinding>(() => HomeControllerBinding())
      //     })
      //
      //   )
      //],

      home: Scaffold(
        appBar: AppBar(title: Text("Binding"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                'The value is ${Get.find<MyController>().count}',
                style: TextStyle(fontSize: 25),
              )),
              RaisedButton(
                child: Text("Increment"),
                  onPressed: (){}

              ),
              SizedBox(height: 10.0,),
              RaisedButton(
                  child: Text("Home"),
                  onPressed: (){
                     Get.to(Home());
                    //For named route
                    //Get.toNamed("/home");
                    // for normal routes
                    //Get.to(Home(), HomeControllerBinding());
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