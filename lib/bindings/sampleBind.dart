import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:state_mgt_getx/sumController.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    print("Binding called");
    // TODO: implement dependencies
    Get.lazyPut(() => SumController());
  }

}
