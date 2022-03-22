/*

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:state_mgt_getx/bindings/sampleBind.dart';
import 'package:state_mgt_getx/my_controller.dart';
import 'package:state_mgt_getx/second.dart';
import 'package:state_mgt_getx/service.dart';
import 'package:state_mgt_getx/student.dart';
import 'package:state_mgt_getx/utils/translations.dart';

import 'all_controller_binding.dart';
import 'first.dart';
import 'home.dart';
import 'home_controller.binding.dart';
import 'myapp_controller_binding.dart';


void main() async  {
  MyAppControllerBinding().dependencies();
  await GetStorage.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/first',
      theme: ThemeData(
        accentColor: Colors.purpleAccent,
        primaryColor: Colors.purple
      ),
      translations:  MyTranslations(),
      locale: Locale('pt', 'BR'),
      defaultTransition: Transition.zoom,
      getPages: [
        // Single getPage
        GetPage(name: '/first', page: () => First()),
        // GetPage with custom transition and bindings
        GetPage(
            name: '/second',
            page: () => Second(),
            binding: SampleBind(),
        )
      ],
    );
  }
}

 */