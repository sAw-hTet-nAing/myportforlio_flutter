import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportforlio_flutter/app_widget/arrow_down_widget.dart';
import 'package:myportforlio_flutter/data/my_soruces.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';
import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';
import '../../../../app_widget/earth/planet.dart';
import '../../../../app_widget/random_text_reveal.dart';

class IntroductionWidget extends StatefulWidget {
  const IntroductionWidget({super.key});

  @override
  State<IntroductionWidget> createState() => _IntroductionWidgetState();
}

class _IntroductionWidgetState extends State<IntroductionWidget> {
  bool isInteracting = false;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return SizedBox(
        width: Dimensions.screenWidth(context),
        height: Dimensions.screenHeight(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
                      height: Dimensions.screenHeight(context) * 0.7,
                      width: Dimensions.screenWidth(context) * 0.5,
                      key: const Key('Planet1'),
                      interative: false,
                    )
                  : Planet(
                      height: Dimensions.screenHeight(context) * 0.7,
                      width: Dimensions.screenWidth(context) * 0.5,
                      key: const Key('Planet2'),
                      interative: true,
                    ),
            ),
            SizedBox(
              width: Dimensions.screenWidth(context) * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
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
                        style: MyTextStyle.label(context)),
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
                        width: Dimensions.width5(context),
                      ),
                      Expanded(
                        child: MyTextReveal(
                          initialText: '********',
                          shouldPlayOnStart: true,
                          duration: const Duration(seconds: 1),
                          style: MyTextStyle.label2(context),
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
                    height: Dimensions.height30(context),
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
          ],
        ),
      );
    });
  }
}
