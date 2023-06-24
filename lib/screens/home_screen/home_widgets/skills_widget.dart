import 'package:flutter/material.dart';
import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

Widget skillsWidget() {
  return Container(
    height: Dimesions.screenHeight,
    width: Dimesions.screeWidth,
    padding: EdgeInsets.all(Dimesions.width10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(Dimesions.height10),
          width: Dimesions.screeWidth * 0.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimesions.radius15),
              border: Border.all(width: 2, color: Colors.grey)),
          child: Column(children: [
            Text(
              AppConstant.introductionText2,
              style: MyTextStyle.normalsmall(),
            )
          ]),
        )
      ],
    ),
  );
}
