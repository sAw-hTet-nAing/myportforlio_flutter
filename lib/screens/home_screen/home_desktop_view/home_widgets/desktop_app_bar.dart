import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

class DesktopAppBar extends StatefulWidget {
  const DesktopAppBar({super.key});

  @override
  State<DesktopAppBar> createState() => _DesktopAppBarState();
}

class _DesktopAppBarState extends State<DesktopAppBar>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => AppBar(
              elevation: 0,
              scrolledUnderElevation: 0,
              backgroundColor: Colors.transparent,
              actions: List.generate(
                  controller.navList.length,
                  (index) => Obx(
                        () => GestureDetector(
                          onTap: () =>
                              controller.pageController.jumpToPage(index),
                          child: AnimatedOpacity(
                            opacity: controller.selecredPage.value == index
                                ? 1
                                : 0.1,
                            curve: Curves.bounceInOut,
                            duration: const Duration(milliseconds: 400),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: Dimensions.width10(context)),
                              padding:
                                  EdgeInsets.all(Dimensions.width5(context)),
                              decoration: BoxDecoration(
                                  color: controller.selecredPage.value == index
                                      ? AppColor.purple
                                      : Colors.black12,
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius15(context) / 2)),
                              child: Text(
                                controller.navList[index],
                                style: MyTextStyle.normalsmall(context)
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )),
            ));
  }
}
