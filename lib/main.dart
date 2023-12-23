import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:natural_cosmetics/View/Screens/splash_intro_Screens/splash_screen.dart';

import 'controller/audio_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialBinding: BindingsBuilder(() {
        Get.put(AudioController());
      }),
    );
  }
}
