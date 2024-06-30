import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:natural_cosmetics/Model/constants.dart';

import '../../../API/api_helper.dart';
import '../../../Service/localization.dart';
import '../../../controller/audio_controller.dart';
import '../../../controller/theme_controller.dart'; // Import your theme controller
import '../../Widgets/custom_switch.dart';

class SettingsPage extends StatelessWidget {
  final AudioController audioController = Get.put(AudioController());
  final ThemeController themeController = Get.put(ThemeController());
  final LocalizationService localizationService =
      Get.find<LocalizationService>();
  final ApiService apiService = Get.find<ApiService>();

  Widget _buildLanguageText(double fontSize) {
    var locale = LocalizationService().currentLocale;
    var language = locale.languageCode == 'en'
        ? 'English'
        : 'العربية'; // Adjust this mapping as needed
    return Text(
      language,
      style: TextStyle(fontSize: fontSize),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Language'.tr),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('English'),
                onTap: () {
                  LocalizationService().changeLocale('en');
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('العربية'),
                onTap: () {
                  LocalizationService().changeLocale('ar');
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

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
              padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
              // Responsive padding
              child: Obx(() => CustomSwitch(
                    leadingText: 'Music On/Off'.tr,
                    onToggle: (bool value) {
                      audioController.toggleAudio(value);
                    },
                    value: audioController.isPlaying.value,
                    // Ensure this is an observable
                    key: const ValueKey('musicSwitch'),
                    fontSize:
                        fontSize, // Pass the responsive font size to the CustomSwitch
                  )),
            ),
            Divider(
              indent: dividerIndent,
              endIndent: dividerIndent,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
              // Responsive padding
              child: Obx(() => CustomSwitch(
                    leadingText: 'Dark Mode'.tr,
                    onToggle: (bool value) {
                      themeController.switchTheme(value);
                    },
                    value: themeController.isDarkMode,
                    // Ensure this is an observable
                    key: const ValueKey('themeSwitch'),
                    fontSize:
                        fontSize,
                  )),
            ),
            Divider(
              indent: dividerIndent,
              endIndent: dividerIndent,
              color: Colors.grey,
            ),
            ListTile(
              title: Text('Change Language'.tr,
                  style: TextStyle(fontSize: fontSize)),
              trailing: _buildLanguageText(fontSize),
              onTap: () => _showLanguageDialog(context),
            ),
          ],
        ),
      ),
    );
  }
}
