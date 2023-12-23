import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Model/constants.dart';
import '../home_screens/home.dart';
import 'intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 4), () {
      _checkIntroStatus();
    });
  }

  void _checkIntroStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool hasViewedIntro = prefs.getBool('introSeen') ?? false;
    if (hasViewedIntro) {
      Get.off(() => const HomePage());
    } else {
      Get.off(() => const IntroScreen());

    }
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo_intros/natureGlowLogo.png',
            width: 300,
            height: 300,
          ),
        ],
      )),
    );
  }
}
