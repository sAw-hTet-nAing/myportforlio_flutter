import 'package:flutter/material.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';
import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';

Widget bottomWidget(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(
          top: Dimensions.height40(context),
          bottom: Dimensions.screenHeight(context) * 0.1),
      alignment: Alignment.center,
      width: Dimensions.screenWidth(context),
      child: Column(
        children: [
          Text(
              "Developed and Designed By Saw Htet Naing with Flutter.(${AppConstant.viber})",
              style: TextStyle(
                color: Colors.white,
                fontSize: Dimensions.font12(context),
              )),
          SizedBox(
            height: Dimensions.height10(context),
          ),
          Text("sawhtetnaing58@gmail.com",
              style: TextStyle(
                  color: Colors.transparent,
                  fontSize: Dimensions.font12(context),
                  shadows: const [
                    Shadow(color: Colors.white, offset: Offset(0, -4))
                  ],
                  decoration: TextDecoration.underline,
                  decorationThickness: 3,
                  decorationColor: AppColor.purple)),
        ],
      ));
}
