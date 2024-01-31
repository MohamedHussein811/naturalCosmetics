import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Model/constants.dart';
import '../../../controller/audio_controller.dart';
import '../home_screens/HomeView.dart';
import 'intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _opacity =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.forward();

    Future.delayed(const Duration(seconds: 4), () {
      _checkIntroStatus();
    });
  }

  void _checkIntroStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool hasViewedIntro = prefs.getBool('introSeen') ?? false;

    Get.find<AudioController>().dispose();

    if (hasViewedIntro) {
      debugPrint("Intro viewed, navigating to HomePage");
      Get.off(() => HomeContent(), transition: Transition.fadeIn);
    } else {
      debugPrint("Intro not viewed, navigating to IntroScreen");
      Get.off(() => const IntroScreen(), transition: Transition.fadeIn);
    }
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: FadeTransition(
          opacity: _opacity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo_intros/natureGlowLogo.png',
                width: 300,
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
