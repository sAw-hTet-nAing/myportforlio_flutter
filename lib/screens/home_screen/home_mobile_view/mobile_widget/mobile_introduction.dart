import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';
import 'package:myportforlio_flutter/app_widget/arrow_down_widget.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';

import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

import '../../../../app_widget/randomText_reveal.dart';

class MobileIntroduction extends StatefulWidget {
  const MobileIntroduction({super.key});

  @override
  State<MobileIntroduction> createState() => _MobileIntroductionWidgetState();
}

class _MobileIntroductionWidgetState extends State<MobileIntroduction> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width10(context)),
        child: SizedBox(
          width: Dimensions.screenWidth(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: LottieBuilder.asset(
                  "assets/animations/astronaut.json",
                  fit: BoxFit.cover,
                  height: Dimensions.screenHeight(context) * 0.4,
                ),
              ),
              SizedBox(
                  width: Dimensions.screenWidth(context) * 0.2,
                  child: Text(
                    """Hi,""",
                    style: MyTextStyle.heading(context),
                  )),
              SizedBox(
                  child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: AppConstant.introductionText,
                    style: MyTextStyle.normalsmall(context)),
                TextSpan(
                    text: AppConstant.introductionText1,
                    style: MyTextStyle.labelSmall(context)),
              ]))),
              SizedBox(
                height: Dimensions.height10(context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "I Design and Develop",
                    style: MyTextStyle.normalsmall(context),
                  ),
                  SizedBox(
                    width: Dimensions.width10(context),
                  ),
                  SizedBox(
                    child: MyTextReveal(
                      initialText: '********',
                      shouldPlayOnStart: true,
                      duration: const Duration(seconds: 1),
                      style: MyTextStyle.label2small(context),
                      randomString: MySource.all,
                      onFinished: () {},
                      curve: Curves.easeIn,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      strings: const [
                        "Mobile Apps.",
                        "Anroid Apps.",
                        "Ios Apps."
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Dimensions.height10(context),
              ),
              arrowDownWidget(context),
              SizedBox(
                height: Dimensions.height10(context),
              ),
              Container(
                padding: EdgeInsets.all(Dimensions.height10(context)),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius15(context) / 2),
                    border: Border.all(color: Colors.grey, width: 2)),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Text(
                    "Let's Scroll More",
                    style: MyTextStyle.labelSmall(context)
                        .copyWith(color: Colors.grey),
                  ),
                  Icon(Icons.arrow_drop_down,
                      color: Colors.grey, size: Dimensions.iconSize16(context))
                ]),
              )
            ],
          ),
        ),
      );
    });
  }
}
