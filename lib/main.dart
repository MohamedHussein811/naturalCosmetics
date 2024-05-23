import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:natural_cosmetics/View/Screens/splash_intro_Screens/splash_screen.dart';
import 'package:natural_cosmetics/themes/themes.dart';

import 'API/api_helper.dart';
import 'controller/api_controller.dart';
import 'controller/audio_controller.dart';
import 'controller/theme_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeController.themeData.value,  // Using themeData from controller
      home: const SplashScreen(),
      initialBinding: BindingsBuilder(() {
        Get.put(AudioController(), permanent: true);
        final ApiService apiService = ApiService();
        Get.put(ApiController(apiService));
      }),
    ));
  }
}

