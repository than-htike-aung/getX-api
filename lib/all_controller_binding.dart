import 'package:get/get.dart';
import 'package:state_mgt_getx/home_controller.dart';
import 'package:state_mgt_getx/my_controller.dart';

class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}