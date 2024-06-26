import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:natural_cosmetics/View/Screens/home_screens/home.dart';

import '../../../Model/constants.dart';
import '../settings_screen/settings_page.dart';
import '../upload_screen/upload_screen.dart';

class HomeContent extends StatelessWidget {
  HomeContent({Key? key}) : super(key: key);

  final RxInt currentIndex = 0.obs;
  final List<Widget> pages = [
    const HomePage(),
    UploadPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() => CurvedNavigationBar(
        index: currentIndex.value,
        items: const [
          Icon(Iconsax.home_15, color: Colors.white,size: 34,),
          Icon(Iconsax.document_upload5, color: Colors.white,size: 34,),
          Icon(Iconsax.setting4, color: Colors.white,size: 34,),
        ],
        backgroundColor: Colors.transparent,
        color: primaryColor,
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index) {
          currentIndex.value = index;
        },
      )),
      body: Obx(() => pages[currentIndex.value]),
    );
  }
}
