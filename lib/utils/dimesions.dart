import 'package:flutter/material.dart';

class Dimensions {
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double pageView(BuildContext context) => screenHeight(context) / 2.23;

  static double height10(BuildContext context) => screenHeight(context) / 71.5;
  static double height20(BuildContext context) => screenHeight(context) / 35.75;
  static double height30(BuildContext context) => screenHeight(context) / 23.83;
  static double height40(BuildContext context) => screenHeight(context) / 17.88;
  static double height15(BuildContext context) => screenHeight(context) / 47.67;

  static double font12(BuildContext context) => screenHeight(context) / 59.58;
  static double font18(BuildContext context) => screenHeight(context) / 39.72;
  static double font26(BuildContext context) => screenHeight(context) / 25;
  static double font16(BuildContext context) => screenHeight(context) / 44.69;

  static double radius20(BuildContext context) => screenHeight(context) / 35.75;
  static double radius30(BuildContext context) => screenHeight(context) / 23.83;
  static double radius15(BuildContext context) => screenHeight(context) / 47.67;

  static double width10(BuildContext context) => screenHeight(context) / 71.5;
  static double width5(BuildContext context) => screenHeight(context) / 143;
  static double width20(BuildContext context) => screenHeight(context) / 35.75;
  static double width30(BuildContext context) => screenHeight(context) / 23.83;

  static double size24(BuildContext context) => screenHeight(context) / 29.79;
  static double size25(BuildContext context) => screenHeight(context) / 28.6;
  static double size18(BuildContext context) => screenHeight(context) / 39.72;

  static double iconSize16(BuildContext context) =>
      screenHeight(context) / 44.81;
  static double iconSize25(BuildContext context) =>
      screenHeight(context) / 28.6;
  static double iconSize32(BuildContext context) => iconSize16(context) * 2;

  static double popularImgSize(BuildContext context) =>
      screenHeight(context) / 2.17;

  static double pageViewContainer(BuildContext context) =>
      screenHeight(context) / 3.25;
  static double pageViewTextContainer(BuildContext context) =>
      screenHeight(context) / 5.96;
}
