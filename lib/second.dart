import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:state_mgt_getx/sumController.dart';
class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SumController>(
              // you can use bindings instead of init. Bindings are when this widget gets
              // rendered, you can create your controller
                builder: (_) {
                  return Text(
                    'Counter #1: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  );
                }
            ),
            Text("    +"),
            GetX<SumController>(
                builder: (_) {
                  return Text(
                    // ${_.count2.value}
                    'Counter #2: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  );
                }
            ),
            SizedBox(height: 20,),
            RaisedButton(
                child: Text("Increment couter #1"),
                onPressed: (){
                  Get.find<SumController>().increment();
                }
            ),
            RaisedButton(
                child: Text("Increment couter #2"),
                onPressed: (){
                  Get.find<SumController>().increment2();
                }
            ),
            SizedBox(height: 20,),

            RaisedButton(
                child: Text("Store values"),
                onPressed: (){
                  GetStorage box = GetStorage();
                  box.write("count1", Get.find<SumController>().count1);
                  box.write("count2", Get.find<SumController>().count2);
                }
            ),
            SizedBox(height: 20,),
            RaisedButton(
                child: Text("Change theme"),
                onPressed: () {
                  if(Get.isDarkMode){
                    Get.changeTheme(ThemeData.light());
                  }else{
                    Get.changeTheme(ThemeData.dark());
                  }

                }
            )

          ],
        ),
      ),
    );
  }
}
