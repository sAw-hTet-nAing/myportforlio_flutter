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
        fontSize: Dimesions.font12,
        color: Colors.grey);
  }

  static TextStyle label() {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: Dimesions.font16 * 0.8,
        color: Colors.white);
  }
}
