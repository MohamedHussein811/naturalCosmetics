import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../../controller/audio_controller.dart';
import '../../../controller/theme_controller.dart'; // Import your theme controller
import '../../Widgets/custom_switch.dart';

class SettingsPage extends StatelessWidget {
  final AudioController audioController = Get.put(AudioController());
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(() => CustomSwitch(
              leadingText: 'Music On/Off',
              onToggle: (bool value) {
                audioController.toggleAudio(value);
              },
              value: audioController.isPlaying.value, // ensure this is an observable
              key: const ValueKey('musicSwitch'),
            )),
            const Divider(
              indent: 100,
              endIndent: 100,
              color: Colors.grey,
            ),
            Obx(() => CustomSwitch(
              leadingText: 'Dark Mode',
              onToggle: (bool value) {
                themeController.switchTheme(value);
              },
              value: themeController.isDarkMode, // ensure this is an observable
              key: const ValueKey('themeSwitch'),
            )),
          ],
        ),
      ),
    );
  }
}
