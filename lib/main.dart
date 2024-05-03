import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:natural_cosmetics/View/Screens/splash_intro_Screens/splash_screen.dart';

import 'API/api_helper.dart';
import 'controller/api_controller.dart';
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
        final ApiService apiService = ApiService(); // Instantiate ApiService
        Get.put(ApiController(apiService)); // Instantiate ApiController with ApiService
      }),
    );
  }
}
