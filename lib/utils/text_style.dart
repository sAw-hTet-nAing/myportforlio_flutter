import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:myportforlio_flutter/utils/dimesions.dart';

class MyTextStyle {
  static TextStyle heading(BuildContext context) {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: Dimensions.font26(context) * 2,
        color: Colors.white);
  }

  static TextStyle normal(BuildContext context) {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.normal,
        fontSize: Dimensions.font26(context) * 0.8,
        color: Colors.grey);
  }

  static TextStyle normalsmall(BuildContext context) {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.normal,
        fontSize: Dimensions.font12(context),
        color: Colors.grey);
  }

  static TextStyle label(BuildContext context) {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: Dimensions.font26(context) * 0.8,
        color: Colors.white);
  }

  static TextStyle labelSmall(BuildContext context) {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: Dimensions.font16(context),
        color: Colors.white);
  }

  static TextStyle smallestText(BuildContext context) => GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: Dimensions.font12(context) * 0.8,
      color: Colors.white);
  static TextStyle normalBold(BuildContext context) => GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      fontSize: Dimensions.font12(context),
      color: Colors.white);
  static TextStyle subtitle(BuildContext context) => GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: Dimensions.font16(context) * 1.5,
      letterSpacing: 2,
      color: Colors.white);
  static TextStyle label2(BuildContext context) => GoogleFonts.orbitron(
      fontWeight: FontWeight.bold,
      fontSize: Dimensions.font26(context),
      letterSpacing: 2,
      color: const Color.fromARGB(255, 156, 39, 176));
  static TextStyle label2small(BuildContext context) => GoogleFonts.orbitron(
      fontWeight: FontWeight.bold,
      fontSize: Dimensions.font26(context) * 0.7,
      letterSpacing: 2,
      color: const Color.fromARGB(255, 156, 39, 176));
}
