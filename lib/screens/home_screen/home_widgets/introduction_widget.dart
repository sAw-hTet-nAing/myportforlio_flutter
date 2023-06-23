import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

Widget introductionWidget(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: Dimension.screenWidth(context) * 0.2,
              child: Text(
                """Hi,""",
                style: MyTextStyle.heading(context),
              )),
          SizedBox(
              width: Dimension.screenWidth(context) * 0.5,
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: AppConstant.introductionText,
                    style: MyTextStyle.normal(context)),
                TextSpan(
                    text: AppConstant.introductionText1,
                    style: MyTextStyle.label(context)),
                TextSpan(
                    text: AppConstant.introductionText2,
                    style: MyTextStyle.normal(context)),
              ])))
        ],
      ),
      SizedBox(
        width: Dimension.screenWidth(context) * 0.05,
      ),
      LottieBuilder.asset(
        "assets/animations/astronaut.json",
        height: Dimension.screenHeight(context) * 0.7,
        width: Dimension.screenWidth(context) * 0.3,
        fit: BoxFit.fitHeight,
      )
    ],
  );
}
