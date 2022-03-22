import 'package:get/get.dart';
import 'package:state_mgt_getx/my_controller.dart';

class MyAppControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MyController>(() => MyController());
  }
}