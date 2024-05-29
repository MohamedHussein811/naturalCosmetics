import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home_screens/HomeView.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  Future<void> _onIntroEnd(context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('introSeen', true);

    Get.off(() => HomeContent(), transition: Transition.fadeIn);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double heightFactor = size.height / 800;
    final double widthFactor = size.width / 400;

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 125 * heightFactor,
            ),
            Expanded(
              child: IntroductionScreen(
                globalBackgroundColor: primaryColor,
                done: Text(
                  "Done",
                  style: TextStyle(
                      fontSize: 18 * widthFactor,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onDone: () => _onIntroEnd(context),
                onSkip: () => _onIntroEnd(context),
                pages: getPages(heightFactor, widthFactor),
                next: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 24 * widthFactor,
                ),
                dotsDecorator: DotsDecorator(
                  activeColor: Colors.white,
                  size: Size(8.0 * widthFactor, 8.0 * heightFactor),
                  color: Colors.grey,
                  activeSize: Size(15.0 * widthFactor, 16.0 * heightFactor),
                ),
                skip: Text('Skip',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 18 * widthFactor)),
                showSkipButton: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PageViewModel> getPages(double heightFactor, double widthFactor) {
    TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontSize: 18 * widthFactor,
      fontWeight: FontWeight.bold,
    );

    return [
      PageViewModel(
        title: "Discover Natural Beauty",
        body:
        "Explore the world of natural cosmetics and enhance your beauty with organic ingredients.",
        image: Lottie.asset("animations/intro1.json",
            height: 250 * heightFactor, fit: BoxFit.cover),
        decoration:
        PageDecoration(titleTextStyle: textStyle, bodyTextStyle: textStyle),
      ),
      PageViewModel(
        title: "Holistic Wellness",
        body:
        "Immerse yourself in holistic wellness with our curated collection of natural beauty recipes and tips.",
        image: Lottie.asset("animations/intro3.json",
            height: 250 * heightFactor, fit: BoxFit.cover),
        decoration:
        PageDecoration(titleTextStyle: textStyle, bodyTextStyle: textStyle),
      ),
      PageViewModel(
        title: "Nourish Your Skin Naturally",
        body:
        "Discover the power of nature to nourish and rejuvenate your skin with our natural cosmetic formulations.",
        image: Lottie.asset("animations/intro4.json",
            height: 250 * heightFactor, fit: BoxFit.cover),
        decoration:
        PageDecoration(titleTextStyle: textStyle, bodyTextStyle: textStyle),
      ),
    ];
  }
}
