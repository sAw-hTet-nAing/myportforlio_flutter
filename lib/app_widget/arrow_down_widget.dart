import 'package:flutter/material.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';

Widget arrowDownWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: 2,
        height: Dimesions.screenHeight * 0.2,
        color: Colors.grey,
      ),
      const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.grey,
      )
    ],
  );
}
