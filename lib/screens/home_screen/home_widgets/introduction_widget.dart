import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:myportforlio_flutter/app_widget/arrow_down_widget.dart';

import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

import '../../../app_widget/randomText_reveal.dart';

Widget introductionWidget() {
  return Padding(
    padding: EdgeInsets.all(Dimesions.screeWidth * 0.05),
    child: SizedBox(
      width: Dimesions.screeWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: Dimesions.screeWidth * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: Dimesions.screeWidth * 0.2,
                    child: Text(
                      """Hi,""",
                      style: MyTextStyle.heading(),
                    )),
                SizedBox(
                    width: Dimesions.screeWidth * 0.4,
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: AppConstant.introductionText,
                          style: MyTextStyle.normal()),
                      TextSpan(
                          text: AppConstant.introductionText1,
                          style: MyTextStyle.label()),
                      // TextSpan(
                      //     text: AppConstant.introductionText2,
                      //     style: MyTextStyle.normal()),
                    ]))),
                SizedBox(
                  height: Dimesions.height10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "I Design and Develop",
                      style: MyTextStyle.label(),
                    ),
                    SizedBox(
                      width: Dimesions.width10,
                    ),
                    MyTextReveal(
                      initialText: '********',
                      shouldPlayOnStart: true,
                      duration: const Duration(seconds: 1),
                      style: MyTextStyle.label2,
                      randomString: MySource.all,
                      onFinished: () {},
                      curve: Curves.easeIn,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      strings: const [
                        "Mobile Apps.",
                        "Anroid Apps.",
                        "Ios Apps."
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: Dimesions.height30,
                ),
                arrowDownWidget(),
                SizedBox(
                  height: Dimesions.height30,
                ),
                Container(
                  padding: EdgeInsets.all(Dimesions.height10),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimesions.radius15 / 2),
                      border: Border.all(color: Colors.grey, width: 2)),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      "Let's Scroll More",
                      style:
                          MyTextStyle.labelSmall().copyWith(color: Colors.grey),
                    ),
                    Icon(Icons.arrow_drop_down,
                        color: Colors.grey, size: Dimesions.iconSize16)
                  ]),
                )
              ],
            ),
          ),
          LottieBuilder.asset(
            "assets/animations/astronaut.json",
            height: Dimesions.screenHeight * 0.7,
            width: Dimesions.screeWidth * 0.3,
            fit: BoxFit.fitHeight,
          )
        ],
      ),
    ),
  );
}
