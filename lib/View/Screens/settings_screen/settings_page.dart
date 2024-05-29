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
    Size size = MediaQuery.of(context).size;
    double fontSize = size.height * 0.02; // Responsive font size
    double dividerIndent = size.width * 0.2; // Responsive divider indent

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.02), // Responsive padding
              child: Obx(() => CustomSwitch(
                leadingText: 'Music On/Off',
                onToggle: (bool value) {
                  audioController.toggleAudio(value);
                },
                value: audioController.isPlaying.value, // Ensure this is an observable
                key: const ValueKey('musicSwitch'),
                fontSize: fontSize, // Pass the responsive font size to the CustomSwitch
              )),
            ),
            Divider(
              indent: dividerIndent,
              endIndent: dividerIndent,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.02), // Responsive padding
              child: Obx(() => CustomSwitch(
                leadingText: 'Dark Mode',
                onToggle: (bool value) {
                  themeController.switchTheme(value);
                },
                value: themeController.isDarkMode, // Ensure this is an observable
                key: const ValueKey('themeSwitch'),
                fontSize: fontSize, // Pass the responsive font size to the CustomSwitch
              )),
            ),
          ],
        ),
      ),
    );
  }
}
