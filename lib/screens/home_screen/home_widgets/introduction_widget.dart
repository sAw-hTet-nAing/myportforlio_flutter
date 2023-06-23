import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myportforlio_flutter/app_widget/divider_widget.dart';
import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

Widget introductionWidget() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: Dimesions.screeWidth * 0.2,
                  child: Text(
                    """Hi,""",
                    style: MyTextStyle.heading(),
                  )),
              SizedBox(
                  width: Dimesions.screeWidth * 0.5,
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: AppConstant.introductionText,
                        style: MyTextStyle.normal()),
                    TextSpan(
                        text: AppConstant.introductionText1,
                        style: MyTextStyle.label()),
                    TextSpan(
                        text: AppConstant.introductionText2,
                        style: MyTextStyle.normal()),
                  ])))
            ],
          ),
          SizedBox(
            width: Dimesions.screeWidth * 0.05,
          ),
          LottieBuilder.asset(
            "assets/animations/astronaut.json",
            height: Dimesions.screenHeight * 0.7,
            width: Dimesions.screeWidth * 0.3,
            fit: BoxFit.fitHeight,
          )
        ],
      ),
      SizedBox(
        height: Dimesions.height30,
      ),
      myDividerWidget(title: "Let's See What I Can Do")
    ],
  );
}
