import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';
import 'package:myportforlio_flutter/data/exp_data.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

class ExperiencesWidget extends GetView<HomeController> {
  const ExperiencesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.screenWidth(context) * 0.9,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(Dimensions.height10(context)),
              child: Text(
                "Experiences",
                style: MyTextStyle.label(context),
              )
                  .animate(onPlay: (controller) => controller.repeat())
                  .shimmer(duration: 1000.ms, color: AppColor.purple)
                  .animate()
                  .fadeIn(duration: 1200.ms, curve: Curves.easeOutQuad)
                  .slide(),
            ),
            const Expanded(
              child: Divider(
                color: Colors.white,
              ),
            )
          ],
        ),
        SizedBox(
          height: Dimensions.height30(context),
        ),
        Row(
          children: List.generate(
              expData.length,
              (index) => SizedBox(
                    width: Dimensions.screenWidth(context) * 0.3,
                    child: Card(
                        color: Colors.white12,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                Dimensions.radius15(context) / 2)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: Dimensions.height15(context),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  expData[index]["image"],
                                  height: Dimensions.height40(context) * 1.5,
                                  width: Dimensions.height40(context) * 1.5,
                                )),
                            SizedBox(
                              height: Dimensions.height10(context),
                            ),
                            Text(
                              expData[index]['company'],
                              style: MyTextStyle.normalBold(context),
                            ),
                            Text(
                              expData[index]['year'],
                              style: MyTextStyle.normalsmall(context),
                            ),
                            Text(
                              expData[index]['role'],
                              style: MyTextStyle.normalBold(context),
                            ),
                            SizedBox(
                              height: Dimensions.height10(context),
                            ),
                            TextButton.icon(
                                icon: const Icon(Icons.arrow_outward_rounded),
                                onPressed: () => controller.launchWeb(
                                    link: expData[index]['address']),
                                label: const Text("View Company")),
                            SizedBox(
                              height: Dimensions.height15(context),
                            ),
                          ],
                        )),
                  )),
        ),
        Row(
          children: [
            Expanded(
                child: LottieBuilder.asset("assets/animations/show_case.json")),
            SizedBox(
              width: Dimensions.screenWidth(context) * 0.4,
              child: Text(
                "Let me help you to build wonderful apps.",
                style: MyTextStyle.heading(context),
              ),
            )
          ],
        )
      ]),
    );
  }
}
