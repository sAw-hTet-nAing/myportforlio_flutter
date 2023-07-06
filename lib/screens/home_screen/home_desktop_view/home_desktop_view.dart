import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

import 'package:myportforlio_flutter/app_widget/my_opScrollWeb.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_widgets/desktop_app_bar.dart';

import 'package:myportforlio_flutter/utils/app_color.dart';

import 'package:myportforlio_flutter/utils/dimesions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final HomeController _homeController = Get.find<HomeController>();
  @override
  void initState() {
    _homeController.pageController = PageController(
        initialPage: _homeController.selecredPage.value, keepPage: true);
    super.initState();
  }

  @override
  void dispose() {
    _homeController.pageController.dispose();
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
                    width: Dimensions.screenWidth(context),
                    height: Dimensions.screenHeight(context),
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(gradient: AppColor.backGroundGr),
                  child: Scaffold(
                      appBar: PreferredSize(
                        preferredSize:
                            Size.fromHeight(Dimensions.height40(context) * 1.5),
                        child: const DesktopAppBar(),
                      ),
                      backgroundColor: Colors.transparent,
                      body: MyOpScrollWeb(
                        onPageChange: (p0) {
                          setState(() {
                            controller.selecredPage.value = p0;
                            // controller.equalizeScreens();
                          });
                        },
                        onePageChildren: controller.pages,
                        scrollDirection: Axis.vertical,
                        pageController: _homeController.pageController,
                        scrollCurve: Curves.easeIn,
                        scrollSpeed: const Duration(milliseconds: 400),
                        isFloatingButtonActive: false,
                        isTouchScrollingActive: false,
                        scrollingAnimationOptions:
                            MyScrollingAnimationOptions.Fading,
                      )),
                )
              ],
            ));
  }
}
