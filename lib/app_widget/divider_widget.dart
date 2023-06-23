import 'package:flutter/material.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

Widget myDividerWidget({required String title}) {
  return Row(
    children: [
      Expanded(
          child: Divider(
        indent: Dimesions.screeWidth * 0.05,
        color: Colors.white,
        thickness: 2,
        height: Dimesions.height10,
      )),
      Container(
        padding: EdgeInsets.all(Dimesions.width10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Dimesions.radius15,
            ),
            border: Border.all(width: 2, color: Colors.white)),
        child: Text(
          title,
          style: MyTextStyle.label(),
        ),
      ),
      Expanded(
          child: Divider(
        endIndent: Dimesions.screeWidth * 0.05,
        color: Colors.white,
        thickness: 2,
        height: Dimesions.height10,
      ))
    ],
  );
}
