import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../../Model/constants.dart';

class Header extends StatelessWidget {
  final String title;

  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: WaveClipperOne(),
      child: Container(
        decoration: const BoxDecoration(
          color: primaryColor,
        ),
        child: SafeArea(
          child: SizedBox(
            height: size.height * 0.18,
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.2,
                  padding: const EdgeInsets.only(
                    left: DefaultPadding,
                    right: DefaultPadding,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Nature.png",
                        width: 350,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
