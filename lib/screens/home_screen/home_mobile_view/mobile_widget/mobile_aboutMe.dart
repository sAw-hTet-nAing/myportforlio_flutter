import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:myportforlio_flutter/utils/app_color.dart';

import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

class MobileAboutMeWidget extends StatefulWidget {
  const MobileAboutMeWidget({super.key});

  @override
  State<MobileAboutMeWidget> createState() => _MobileAboutMeWidgetState();
}

class _MobileAboutMeWidgetState extends State<MobileAboutMeWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.screenHeight(context),
      width: Dimensions.screenWidth(context),
      padding: EdgeInsets.all(Dimensions.width10(context)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.all(Dimensions.height10(context)),
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
