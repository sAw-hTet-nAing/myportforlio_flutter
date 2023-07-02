import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

import 'package:myportforlio_flutter/data/skills_data.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';

import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AboutMeWidget extends StatefulWidget {
  const AboutMeWidget({super.key});

  @override
  State<AboutMeWidget> createState() => _AboutMeWidgetState();
}

class _AboutMeWidgetState extends State<AboutMeWidget>
    with TickerProviderStateMixin {
  // Random random = Random();
  // Color dvdColor = Colors.pink;
  // String image = "/images/vscode.png";
  // double dvdWidth = Dimensions.height40(context), dvdHeight = Dimensions.height40(context);
  // double x = Dimensions.screenWidth(context) * 0.14,
  //     y = Dimesions.screenHeight * 0.2,
  //     xSpeed = 40,
  //     ySpeed = 40,
  //     speed = 500;
  // List images = [
  //   "/images/vscode.png",
  //   "/images/xcode.png",
  //   "/images/figma.png",
  //   "/images/android.png",
  //   "/images/swift.png",
  //   "/images/flutter.png",
  //   "/images/dart.png",
  // ];
  // pickColor() {
  //   Timer(const Duration(milliseconds: 200), () {
  //     image = images[random.nextInt(images.length)];
  //   });
  // }

  // @override
  // initState() {
  //   super.initState();

  //   update();
  // }

  // update() {
  //   Timer.periodic(Duration(milliseconds: speed.toInt()), (timer) {
  //     double screenWidth = MediaQuery.of(context).size.width * 0.14;
  //     double screenHeight = MediaQuery.of(context).size.height * 0.2;
  //     x += xSpeed;
  //     y += ySpeed;

  //     if (x + dvdWidth >= screenWidth) {
  //       xSpeed = -xSpeed;
  //       x = screenWidth - dvdWidth;
  //       pickColor();
  //     } else if (x <= 0) {
  //       xSpeed = -xSpeed;
  //       x = 0;
  //       pickColor();
  //     }

  //     if (y + dvdHeight >= screenHeight) {
  //       ySpeed = -ySpeed;
  //       y = screenHeight - dvdHeight;
  //       pickColor();
  //     } else if (y <= 0) {
  //       ySpeed = -ySpeed;
  //       y = 0;
  //       pickColor();
  //     }

  //     if (mounted) {
  //       setState(() {});
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.screenHeight(context),
      width: Dimensions.screenWidth(context),
      padding: EdgeInsets.all(Dimensions.width10(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(Dimensions.height10(context)),
              width: Dimensions.screenWidth(context) * 0.4,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About Me",
                      style: MyTextStyle.label(context),
                    )
                        .animate(onPlay: (controller) => controller.repeat())
                        .shimmer(duration: 1000.ms, color: AppColor.purple)
                        .animate()
                        .fadeIn(duration: 1200.ms, curve: Curves.easeOutQuad)
                        .slide(),
                    SizedBox(
                      height: Dimensions.height15(context),
                    ),
                    Text(
                      AppConstant.introductionText2,
                      style: MyTextStyle.normalsmall(context),
                    )
                  ])),
          SizedBox(
            width: Dimensions.width30(context),
          ),
          VerticalDivider(
            color: Colors.white,
            endIndent: Dimensions.height40(context) * 2,
          ),
          SizedBox(
            width: Dimensions.width30(context),
          ),
          SizedBox(
            width: Dimensions.screenWidth(context) * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: Dimensions.height10(context),
                ),
                Text(
                  "Navigating Expertise",
                  style: MyTextStyle.label(context),
                )
                    .animate(onPlay: (controller) => controller.repeat())
                    .shimmer(duration: 1000.ms, color: AppColor.purple)
                    .animate()
                    .fadeIn(duration: 1200.ms, curve: Curves.easeOutQuad)
                    .slide(),
                Center(
                  child: SizedBox(
                    height: Dimensions.screenHeight(context) * 0.25,
                    width: Dimensions.screenWidth(context) * 0.25,
                    child: LottieBuilder.asset(
                      "/animations/development.json",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height40(context) * 1.5,
                ),
                Expanded(
                    child: GridView.builder(
                        itemCount: skillsData.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: Dimensions.height40(context) * 3,
                            crossAxisCount: 4),
                        itemBuilder: (contex, index) {
                          return SizedBox(
                            height: Dimensions.height40(context) * 2,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: Dimensions.height10(context),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          bottom: Dimensions.height10(context)),
                                      height: Dimensions.height30(context),
                                      width: Dimensions.height40(context),
                                      padding: index == skillsData.length - 1
                                          ? const EdgeInsets.all(3)
                                          : EdgeInsets.zero,
                                      child: Image.asset(
                                        skillsData[index]["image"],
                                        height: Dimensions.height40(context),
                                        width: Dimensions.height40(context),
                                      )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: Dimensions.width30(context) * 2,
                                        child: Text(
                                          skillsData[index]["name"],
                                          style:
                                              MyTextStyle.normalBold(context),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      CircularPercentIndicator(
                                        radius:
                                            Dimensions.height15(context) * 1.1,
                                        lineWidth: 4,
                                        circularStrokeCap:
                                            CircularStrokeCap.round,
                                        curve: Curves.bounceIn,
                                        animation: true,
                                        center: Text(
                                          "${skillsData[index]["percent"]}%",
                                          style:
                                              MyTextStyle.smallestText(context)
                                                  .copyWith(
                                                      fontSize:
                                                          Dimensions.font12(
                                                                  context) *
                                                              0.7),
                                        ),
                                        percent: skillsData[index]["process"],
                                        progressColor: processColor(
                                            process: skillsData[index]
                                                ["process"]),
                                      )
                                    ],
                                  )
                                ]),
                          );
                        }))
              ],
            ),
          )
        ],
      ),
    );
  }

  Color processColor({required double process}) {
    var color = Colors.transparent;
    if (process <= 0.3) {
      color = Colors.red;
    } else if (process <= 0.5) {
      color = Colors.amber;
    } else {
      color = Colors.green;
    }

    return color;
  }
}
