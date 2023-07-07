import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import 'package:myportforlio_flutter/data/project_data.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';
import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProjectWidget extends StatefulWidget {
  const ProjectWidget({super.key});

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Container(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimensions.width20(context)),
              width: Dimensions.screenWidth(context) * 0.9,
              height: Dimensions.screenHeight(context) * 1,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "As A Flutter Developer",
                      style: MyTextStyle.label(context),
                    )
                        .animate(onPlay: (controller) => controller.repeat())
                        .shimmer(duration: 1000.ms, color: AppColor.purple)
                        .animate()
                        .fadeIn(duration: 1200.ms, curve: Curves.easeOutQuad)
                        .slide(),
                    Text(
                      "(With over 3 year experience)",
                      style: MyTextStyle.normalsmall(context),
                    ),
                    SizedBox(
                      height: Dimensions.height10(context),
                    ),
                    Text(AppConstant.projectText,
                        style: MyTextStyle.normalsmall(context)),
                    SizedBox(
                      height: Dimensions.height10(context),
                    ),
                    Text(
                      "Some Of My Project Mile-Stones",
                      style: MyTextStyle.label(context),
                    ),
                    SizedBox(
                      height: Dimensions.height10(context),
                    ),
                    Center(
                      child: SizedBox(
                          height: Dimensions.screenHeight(context) * 0.7,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              Positioned.fill(
                                child: CarouselSlider(
                                    items: List.generate(
                                        projectData.length,
                                        (index) => MouseRegion(
                                              onEnter: (event) => controller
                                                  .onMouseHover(index),
                                              onExit: (event) =>
                                                  controller.onExitMouse(index),
                                              child: _projectItems(
                                                name: projectData[index]
                                                    ['name'],
                                                img: projectData[index]
                                                    ['image'],
                                                index: index,
                                                context: context,
                                              ),
                                            )),
                                    carouselController: _carouselController,
                                    options: CarouselOptions(
                                      height:
                                          Dimensions.screenHeight(context) * 7,
                                      viewportFraction: 1,
                                      initialPage: 0,
                                      enableInfiniteScroll: true,
                                      reverse: false,
                                      autoPlay: false,
                                      autoPlayInterval:
                                          const Duration(seconds: 3),
                                      autoPlayAnimationDuration:
                                          const Duration(milliseconds: 800),
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      enlargeCenterPage: true,
                                      enlargeFactor: 0.1,
                                      scrollPhysics:
                                          const NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.vertical,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          controller.activeIndex.value = index;
                                        });
                                      },
                                    )),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      right: Dimensions.height10(context)),
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                          onPressed: () => _carouselController
                                              .previousPage(),
                                          icon: Icon(
                                            Icons.arrow_upward,
                                            color: Colors.white,
                                            size:
                                                Dimensions.iconSize25(context),
                                          )),
                                      AnimatedSmoothIndicator(
                                        axisDirection: Axis.vertical,
                                        activeIndex:
                                            controller.activeIndex.value,
                                        count: projectData.length,
                                        effect: const WormEffect(
                                            activeDotColor: AppColor.purple,
                                            dotColor: Colors.white),
                                      ),
                                      IconButton(
                                          onPressed: () =>
                                              _carouselController.nextPage(),
                                          icon: Icon(
                                            Icons.arrow_downward,
                                            color: Colors.white,
                                            size:
                                                Dimensions.iconSize25(context),
                                          )),
                                    ],
                                  )),
                            ],
                          )),
                    )
                  ]),
            ));
  }
}

Widget _projectItems({
  required String name,
  required String img,
  required int index,
  required BuildContext context,
}) {
  return GetBuilder<HomeController>(
      builder: (controller) => SizedBox(
            // height: Dimensions.screenHeight(context) * 0.4,
            width: Dimensions.screenWidth(context),
            child: Container(
              foregroundDecoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(Dimensions.radius15(context)),
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0),
                  ], begin: Alignment.centerRight, end: Alignment.centerLeft)),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Dimensions.radius15(context)),
                image: DecorationImage(
                  image: AssetImage(
                    img,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ));
}
