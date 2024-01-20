import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import 'package:natural_cosmetics/View/Screens/home_screens/home.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  void _onIntroEnd(context) {
    Get.off(() => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 125,
            ),
            Expanded(
              child: IntroductionScreen(
                globalBackgroundColor: primaryColor,
                done: const Text(
                  "Done",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onDone: () => _onIntroEnd(context),
                onSkip: () => _onIntroEnd(context),
                pages: getPages(),
                next: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                dotsDecorator: const DotsDecorator(
                  activeColor: Colors.white,
                  size: Size(8.0, 8.0),
                  color: Colors.grey,
                  activeSize: Size(15.0, 16.0),
                ),
                skip: const Text('Skip',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white)),
                showSkipButton: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PageViewModel> getPages() {
    TextStyle textStyle = const TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );

    return [
      PageViewModel(
        title: "Discover Natural Beauty",
        body: "Explore the world of natural cosmetics and enhance your beauty with organic ingredients.",
        image: Lottie.asset("animations/intro1.json",
            height: 250, fit: BoxFit.cover),
        decoration:
        PageDecoration(titleTextStyle: textStyle, bodyTextStyle: textStyle),
      ),
      PageViewModel(
        title: "Holistic Wellness",
        body: "Immerse yourself in holistic wellness with our curated collection of natural beauty recipes and tips.",
        image: Lottie.asset("animations/intro3.json",
            height: 250, fit: BoxFit.cover),
        decoration:
        PageDecoration(titleTextStyle: textStyle, bodyTextStyle: textStyle),
      ),
      PageViewModel(
        title: "Nourish Your Skin Naturally",
        body: "Discover the power of nature to nourish and rejuvenate your skin with our natural cosmetic formulations.",
        image: Lottie.asset("animations/intro4.json",
            height: 250, fit: BoxFit.cover),
        decoration:
        PageDecoration(titleTextStyle: textStyle, bodyTextStyle: textStyle),
      ),
    ];
  }

}
