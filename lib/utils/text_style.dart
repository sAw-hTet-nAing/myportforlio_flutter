import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:myportforlio_flutter/utils/dimesions.dart';

class MyTextStyle {
  static TextStyle heading(BuildContext context) {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: Dimension.font26(context) * 2,
        color: Colors.white);
  }

  static TextStyle normal(BuildContext context) {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.normal,
        fontSize: Dimension.font12(context),
        color: Colors.grey);
  }

  static TextStyle label(BuildContext context) {
    return GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: Dimension.font16(context),
        color: Colors.white);
  }
}


// TextStyle get headingStyle {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font18 - 3,
//           fontWeight: FontWeight.bold,
//           color: Colors.black));
// }

// TextStyle get headingStyleWhite {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font18 - 3,
//           fontWeight: FontWeight.bold,
//           color: Colors.white));
// }

// TextStyle get subtitle {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font16,
//           fontWeight: FontWeight.normal,
//           color: Colors.black));
// }

// TextStyle get subtitleprimary {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font16,
//           fontWeight: FontWeight.bold,
//           color: AppConstant.primary));
// }

// TextStyle get normalText {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font12,
//           fontWeight: FontWeight.bold,
//           color: Colors.black));
// }

// TextStyle get normalTextW {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font12,
//           fontWeight: FontWeight.bold,
//           color: Colors.white));
// }

// TextStyle get normalTextPrimary {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font12,
//           fontWeight: FontWeight.bold,
//           color: AppConstant.primary));
// }

// TextStyle get drawerMenuText {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font16 - 4,
//           fontWeight: FontWeight.w400,
//           color: Colors.black));
// }

// TextStyle get bottomText {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font16 - 4,
//           fontWeight: FontWeight.bold,
//           color: Colors.black));
// }

// TextStyle get productTitle {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font16 - 3,
//           fontWeight: FontWeight.bold,
//           color: Colors.black));
// }

// TextStyle get priceText {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font16 - 4,
//           fontWeight: FontWeight.bold,
//           color: Colors.black));
// }

// TextStyle get cateTitle {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font12 + 1,
//           fontWeight: FontWeight.bold,
//           color: Colors.white));
// }

// TextStyle get bubbleText {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font12 - 2,
//           fontWeight: FontWeight.bold,
//           color: Colors.white));
// }

// TextStyle get smallestTest {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font12 - 4,
//           fontWeight: FontWeight.bold,
//           color: Colors.white));
// }

// TextStyle get bubbleTextblack {
//   return GoogleFonts.poppins(
//       textStyle: TextStyle(
//           fontSize: Dimesion.font12 - 2,
//           fontWeight: FontWeight.bold,
//           color: Colors.black));
// }
