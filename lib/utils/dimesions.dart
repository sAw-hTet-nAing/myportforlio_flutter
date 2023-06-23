import 'package:flutter/material.dart';

class Dimension {
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double pageView(BuildContext context) {
    return screenHeight(context) / 2.23;
  }

  // Heights
  static double height10(BuildContext context) {
    return screenHeight(context) / 71.5;
  }

  static double height20(BuildContext context) {
    return screenHeight(context) / 35.75;
  }

  static double height30(BuildContext context) {
    return screenHeight(context) / 23.83;
  }

  static double height40(BuildContext context) {
    return screenHeight(context) / 17.88;
  }

  static double height15(BuildContext context) {
    return screenHeight(context) / 47.67;
  }

  // Fonts
  static double font12(BuildContext context) {
    return screenHeight(context) / 59.58;
  }

  static double font18(BuildContext context) {
    return screenHeight(context) / 39.72;
  }

  static double font26(BuildContext context) {
    return screenHeight(context) / 25;
  }

  static double font16(BuildContext context) {
    return screenHeight(context) / 44.69;
  }

  // Radii
  static double radius20(BuildContext context) {
    return screenHeight(context) / 35.75;
  }

  static double radius30(BuildContext context) {
    return screenHeight(context) / 23.83;
  }

  static double radius15(BuildContext context) {
    return screenHeight(context) / 47.67;
  }

  // Widths
  static double width10(BuildContext context) {
    return screenHeight(context) / 71.5;
  }

  static double width5(BuildContext context) {
    return screenHeight(context) / 143;
  }

  static double width20(BuildContext context) {
    return screenHeight(context) / 35.75;
  }

  static double width30(BuildContext context) {
    return screenHeight(context) / 23.83;
  }

  static double size24(BuildContext context) {
    return screenHeight(context) / 29.79;
  }

  static double size25(BuildContext context) {
    return screenHeight(context) / 28.6;
  }

  static double size18(BuildContext context) {
    return screenHeight(context) / 39.72;
  }

  // Icon Sizes
  static double iconSize16(BuildContext context) {
    return screenHeight(context) / 44.81;
  }

  static double iconSize25(BuildContext context) {
    return screenHeight(context) / 28.6;
  }

  static double iconSize32(BuildContext context) {
    return iconSize16(context) * 2;
  }
}
