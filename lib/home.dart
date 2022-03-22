import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_mgt_getx/home_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Obx(() => Text(
            //   "The value is ${Get.find<HomeController>().count}",
            //   style: TextStyle(fontSize: 25),
            //
            // )),
            // RaisedButton(
            //   child: Text("Increment"),
            //     onPressed: (){
            //       Get.find<HomeController>().increment();
            //     }
            // ),
            SizedBox(height: 10,),
            RaisedButton(
              child: Text("Back"),
                onPressed: (){
                  Get.back();
              }
            )
          ],
        ),
      ),
    );
  }
}
