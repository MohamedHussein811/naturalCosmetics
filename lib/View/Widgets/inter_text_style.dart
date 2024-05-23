import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InterTextStyle {
  static Widget getTextWidget({
    required String text,
    double size = 19,
    double opacity = 1.0,
  }) {
    return Opacity(
      opacity: opacity,
      child: Text(
        text,
        style: GoogleFonts.inter(
          textStyle: TextStyle(
            color: Colors.black,
            fontSize: size,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
