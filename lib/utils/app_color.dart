import 'package:flutter/material.dart';

class AppColor {
  static const Color maroon = Color.fromARGB(255, 149, 1, 1);
  static const Color darkMaroon = Color.fromARGB(255, 61, 0, 0);
  static LinearGradient backGroundGr = LinearGradient(colors: [
    Colors.black,
    darkMaroon.withOpacity(0.4),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);
}
