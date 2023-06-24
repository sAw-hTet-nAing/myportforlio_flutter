import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

import 'package:myportforlio_flutter/app_widget/my_opScrollWeb.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';

import 'package:myportforlio_flutter/screens/home_screen/home_widgets/nav_buttons.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';

import 'package:myportforlio_flutter/utils/dimesions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
                        actions: [
                          navButtons(context, title: "Home", onPress: () {}),
                          navButtons(context,
                              title: "Projects", onPress: () {}),
                          navButtons(context,
                              title: "About Me", onPress: () {}),
                          navButtons(context,
                              title: "Contact Me", onPress: () {})
                        ],
                      ),
                      body: MyOpScrollWeb(
                        onePageChildren: controller.pages,
                        scrollDirection: Axis.vertical,
                        pageController: _pageController,
                        scrollCurve: Curves.easeIn,
                        scrollSpeed: const Duration(milliseconds: 400),
                        isFloatingButtonActive: false,
                        isTouchScrollingActive: true,
                        scrollingAnimationOptions:
                            MyScrollingAnimationOptions.Fading,
                      )),
                )
              ],
            ));
  }
}
