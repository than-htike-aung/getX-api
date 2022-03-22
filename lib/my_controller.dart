import 'package:get/get.dart';
import 'package:state_mgt_getx/student.dart';

class MyController extends GetxController {
  var count = 0.obs;

  void increment(){
    count++;
    update(); // will update the count variable on UI which uses it
  }
}