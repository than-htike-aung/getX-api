import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_mgt_getx/emailController.dart';
import 'package:state_mgt_getx/second.dart';
class First extends StatelessWidget {
  //const First({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.trArgs(['argu'])),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller : emailController,
              ),
            ),
            RaisedButton(
                child: Text("Validate Email"),
                onPressed: (){
                  if(GetUtils.isEmail(emailController.text)) {
                     Get.snackbar(
                         "Correct email",
                         "Nice email format",
                       snackPosition: SnackPosition.BOTTOM,
                       backgroundColor: Colors.green,
                        colorText: Colors.blue,
                       borderRadius: 30

                     );
                  }else{
                    Get.snackbar(
                        "Not formatted email",
                        "BAD email format",
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.red,
                        colorText: Colors.yellow,
                        borderRadius: 30

                    );
                  }
                }
            ),
            SizedBox(height: 40,),
            RaisedButton(
                child: Text("Change locale to english"),
                onPressed: (){
                  Get.updateLocale(Locale('en'));
                }
            ),
            RaisedButton(
                child: Text("Change locale to US"),
                onPressed: (){
                  Get.updateLocale(Locale('en', 'US'));
                }
            ),
            RaisedButton(
                child: Text("Change locale to Portugal"),
                onPressed: (){}
            ),
            RaisedButton(
                child: Text("Change locale to Brazil"),
                onPressed: (){
                  Get.updateLocale(Locale('pt', 'BR'));
                }
            ),
      RaisedButton(
        child: Text("Next Route"),
        onPressed: (){
          Get.toNamed("/second");
        }
      )
          ],
        ),
      ),
    );
  }
}
