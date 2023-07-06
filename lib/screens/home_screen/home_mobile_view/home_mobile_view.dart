import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myportforlio_flutter/app_widget/my_opScrollWeb.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';

class HomeMobileView extends StatefulWidget {
  const HomeMobileView({super.key});

  @override
  State<HomeMobileView> createState() => _HomeMobileViewState();
}

class _HomeMobileViewState extends State<HomeMobileView> {
  late PageController _pageController;
  final HomeController _homeController = Get.find<HomeController>();
  @override
  void initState() {
    _pageController = PageController(
        initialPage: _homeController.selecredPage.value, keepPage: true);
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
                    width: Dimensions.screenWidth(context),
                    height: Dimensions.screenHeight(context),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(gradient: AppColor.backGroundGr),
                  child: Scaffold(
                      backgroundColor: Colors.transparent,
                      appBar: AppBar(
                        scrolledUnderElevation: 0,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        actions: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: Dimensions.iconSize16(context),
                              ))
                        ],
                      ),
                      body: MyOpScrollWeb(
                        onPageChange: (p0) {
                          setState(() {
                            controller.selecredPage.value = p0;
                            // controller.changeSelectedPage();
                          });
                        },
                        onePageChildren: controller.mobilePages,
                        scrollDirection: Axis.vertical,
                        pageController: _pageController,
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
