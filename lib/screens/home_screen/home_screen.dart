import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:lottie/lottie.dart';

import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';

import 'package:myportforlio_flutter/screens/home_screen/home_widgets/nav_buttons.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';

import 'package:myportforlio_flutter/utils/dimesions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Stack(
        children: [
          SizedBox(
            child: LottieBuilder.asset(
              "assets/animations/space.json",
              width: Dimesions.screeWidth,
              height: Dimesions.screenHeight,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            decoration: BoxDecoration(gradient: AppColor.backGroundGr),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  scrolledUnderElevation: 0,
                  actions: [
                    navButtons(context, title: "Home", onPress: () {}),
                    navButtons(context, title: "Projects", onPress: () {}),
                    navButtons(context, title: "About Me", onPress: () {}),
                    navButtons(context, title: "Contact Me", onPress: () {})
                  ],
                ),
                body: ListView.custom(
                    childrenDelegate: SliverChildBuilderDelegate(
                        childCount: controller.pages.length,
                        (context, index) => controller.pages[index]))),
          )
        ],
      ),
    );
  }
}
//  TransformerPageView(
//                   viewportFraction: 1,
//                   physics: const ClampingScrollPhysics(),
//                   transformer: ScaleAndFadeTransformer(),
//                   scrollDirection: Axis.vertical,
//                   itemCount: controller.pages.length,
//                   itemBuilder: (context, index) => controller.pages[index],
//                 )