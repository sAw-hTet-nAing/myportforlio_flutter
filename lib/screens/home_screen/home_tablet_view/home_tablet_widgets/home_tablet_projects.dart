import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import 'package:myportforlio_flutter/data/project_data.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';
import 'package:myportforlio_flutter/utils/constants.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

class TabletProjectWidget extends StatefulWidget {
  const TabletProjectWidget({super.key});

  @override
  State<TabletProjectWidget> createState() => _TabletProjectWidgetState();
}

class _TabletProjectWidgetState extends State<TabletProjectWidget> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Container(
              padding: EdgeInsets.all(Dimensions.height10(context)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        height: Dimensions.screenHeight(context) * 0.4,
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.center,
                          runSpacing: Dimensions.height10(context),
                          children: List.generate(
                              projectData.length,
                              (index) => MouseRegion(
                                    onEnter: (event) =>
                                        controller.onMouseHover(index),
                                    onExit: (event) =>
                                        controller.onExitMouse(index),
                                    child: _projectItems(
                                      name: projectData[index]['name'],
                                      img: projectData[index]['image'],
                                      index: index,
                                      context: context,
                                    ),
                                  )),
                        ),
                      ),
                    )
                  ]),
            ));
  }
}

final hoverTansForm = Matrix4.identity()..scale(1.1);
Widget _projectItems({
  required String name,
  required String img,
  required int index,
  required BuildContext context,
}) {
  return GetBuilder<HomeController>(
      builder: (controller) => Obx(
            () => GestureDetector(
              child: SizedBox(
                width: Dimensions.screenWidth(context) * 0.3,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: Dimensions.screenHeight(context) * 0.25,
                          width: Dimensions.screenWidth(context) * 0.25,
                          alignment: Alignment.center,
                          child: DottedBorder(
                            borderType: BorderType.RRect,
                            strokeCap: StrokeCap.round,
                            radius:
                                Radius.circular(Dimensions.radius15(context)),
                            color: controller.projectHoverList[index]
                                ? Colors.transparent
                                : Colors.white,
                            child: Container(
                              padding:
                                  EdgeInsets.all(Dimensions.width10(context)),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    Dimensions.radius15(context)),
                              ),
                              child: Transform(
                                transform: controller.projectHoverList[index]
                                    ? hoverTansForm
                                    : Matrix4.identity(),
                                alignment: Alignment.center,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius15(context) / 2),
                                  child: Image.asset(
                                    img,
                                    fit: BoxFit.fill,
                                    height:
                                        Dimensions.screenHeight(context) * 0.25,
                                    width:
                                        Dimensions.screenWidth(context) * 0.25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height10(context),
                        ),
                        Text(
                          name,
                          style: MyTextStyle.smallestText(context),
                        )
                      ],
                    ),
                    controller.projectHoverList[index]
                        ? const SizedBox.shrink()
                        : index != 5
                            ? const Expanded(
                                child: Divider(
                                color: Colors.white,
                              ))
                            : const Expanded(
                                child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  )
                                ],
                              ))
                  ],
                ),
              ),
            ),
          ));
}
