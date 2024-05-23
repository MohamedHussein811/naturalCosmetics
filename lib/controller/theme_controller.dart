import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../themes/themes.dart';
class ThemeController extends GetxController {
  Rx<ThemeData> themeData = Themes.lightMode.obs;

  bool get isDarkMode => themeData.value.brightness == Brightness.dark;

  void switchTheme(bool isDarkMode) {
    themeData.value = isDarkMode ? Themes.darkMode : Themes.lightMode;
  }
}
