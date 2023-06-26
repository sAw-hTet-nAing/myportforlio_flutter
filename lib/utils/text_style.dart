import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:myportforlio_flutter/utils/dimesions.dart';

class MyTextStyle {
  static TextStyle heading() {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: Dimesions.font26 * 2,
        color: Colors.white);
  }

  static TextStyle normal() {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.normal,
        fontSize: Dimesions.font26 * 0.8,
        color: Colors.grey);
  }

  static TextStyle normalsmall() {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.normal,
        fontSize: Dimesions.font12,
        color: Colors.grey);
  }

  static TextStyle label() {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: Dimesions.font26 * 0.8,
        color: Colors.white);
  }

  static TextStyle labelSmall() {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: Dimesions.font16,
        color: Colors.white);
  }

  static TextStyle smallestText = GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: Dimesions.font12 * 0.8,
      color: Colors.white);
  static TextStyle normalBold = GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      fontSize: Dimesions.font12,
      color: Colors.white);
  static TextStyle subtitle = GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: Dimesions.font16 * 1.5,
      letterSpacing: 2,
      color: Colors.white);
  static TextStyle label2 = GoogleFonts.orbitron(
      fontWeight: FontWeight.bold,
      fontSize: Dimesions.font26,
      letterSpacing: 2,
      color: const Color.fromARGB(255, 156, 39, 176));
}
