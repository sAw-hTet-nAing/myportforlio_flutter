import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:myportforlio_flutter/app_widget/arrow_down_widget.dart';
import 'package:myportforlio_flutter/app_widget/earth/planet.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';

import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

import '../../../../app_widget/randomText_reveal.dart';

class TabletIntroductionWidget extends StatefulWidget {
  const TabletIntroductionWidget({super.key});

  @override
  State<TabletIntroductionWidget> createState() =>
      _TabletIntroductionWidgetState();
}

class _TabletIntroductionWidgetState extends State<TabletIntroductionWidget> {
  bool isInteracting = false;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Padding(
        padding: EdgeInsets.all(Dimensions.screenWidth(context) * 0.05),
        child: SizedBox(
          width: Dimensions.screenWidth(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isInteracting = !isInteracting;
                  });
                },
                child: !isInteracting
                    ? Planet(
                        height: Dimensions.screenHeight(context) * 0.6,
                        width: Dimensions.screenWidth(context) * 0.4,
                        key: const Key('Planet1'),
                        interative: false,
                      )
                    : Planet(
                        height: Dimensions.screenHeight(context) * 0.6,
                        width: Dimensions.screenWidth(context) * 0.4,
                        key: const Key('Planet2'),
                        interative: true,
                      ),
              ),
              SizedBox(
                width: Dimensions.width10(context),
              ),
              SizedBox(
                width: Dimensions.screenWidth(context) * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      // TextSpan(
                      //     text: AppConstant.introductionText2,
                      //     style: MyTextStyle.normal()),
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
                      height: Dimensions.height40(context),
                    ),
                    arrowDownWidget(context),
                    SizedBox(
                      height: Dimensions.height30(context),
                    ),
                    Container(
                      padding: EdgeInsets.all(Dimensions.height10(context)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              Dimensions.radius15(context) / 2),
                          border: Border.all(color: Colors.grey, width: 2)),
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        Text(
                          "Let's Scroll More",
                          style: MyTextStyle.labelSmall(context)
                              .copyWith(color: Colors.grey),
                        ),
                        Icon(Icons.arrow_drop_down,
                            color: Colors.grey,
                            size: Dimensions.iconSize16(context))
                      ]),
                    )
                  ],
                ),
              ),

              // LottieBuilder.asset(
              //   "assets/animations/astronaut.json",
              //   fit: BoxFit.cover,
              //   height: Dimensions.screenHeight(context) * 0.6,
              //   width: Dimensions.screenWidth(context) * 0.2,
              // )
            ],
          ),
        ),
      );
    });
  }
}
