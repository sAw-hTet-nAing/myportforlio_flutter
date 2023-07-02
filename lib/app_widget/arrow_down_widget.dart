import 'package:flutter/material.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';

Widget arrowDownWidget(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: 2,
        height: Dimensions.screenHeight(context) * 0.2,
        color: Colors.grey,
      ),
      const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.grey,
      )
    ],
  );
}
