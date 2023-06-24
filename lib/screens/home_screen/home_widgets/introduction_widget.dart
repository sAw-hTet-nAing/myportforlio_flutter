import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:myportforlio_flutter/app_widget/divider_widget.dart';
import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

import '../../../app_widget/randomText_reveal.dart';

Widget introductionWidget() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RotatedBox(
            quarterTurns: -45,
            child: MyTextReveal(
              initialText: '0000000000',
              shouldPlayOnStart: true,
              duration: const Duration(seconds: 2),
              style: MyTextStyle.label2,
              randomString: MySource.all,
              onFinished: () {},
              curve: Curves.easeIn,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              strings: const [
                "< MOBILE DEVELOPER />",
                "< FLUTTER />",
                "< SWIFT />"
              ],
            ),
          ),
          SizedBox(
            width: Dimesions.screeWidth * 0.06,
          ),
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
      myDividerWidget(title: "Scroll More")
    ],
  );
}
