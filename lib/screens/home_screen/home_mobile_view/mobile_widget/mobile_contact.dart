import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';
import 'package:myportforlio_flutter/utils/constants.dart';

import 'package:myportforlio_flutter/utils/dimesions.dart';
import 'package:myportforlio_flutter/utils/text_style.dart';

class MobileContactWidget extends StatefulWidget {
  const MobileContactWidget({super.key});

  @override
  State<MobileContactWidget> createState() => _MobileContactWidgetState();
}

class _MobileContactWidgetState extends State<MobileContactWidget> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => SizedBox(
              width: Dimensions.screenWidth(context) * 0.9,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      color: const Color.fromARGB(108, 58, 33, 33),
                      elevation: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(
                              Dimensions.radius15(context) / 2),
                        ),
                        padding: EdgeInsets.all(Dimensions.height10(context)),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                "/images/sawpp.png",
                                height: Dimensions.height40(context) * 2.5,
                                width: Dimensions.height40(context) * 2.5,
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.width20(context),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Saw Htet Naing",
                                  style: MyTextStyle.normalBold(context),
                                ),
                                SizedBox(
                                  height: Dimensions.height10(context),
                                ),
                                SizedBox(
                                  width: Dimensions.screenWidth(context) * 0.45,
                                  child: Text(
                                    """ <I’m always open to discussing product design work or partnership opportunities./> """,
                                    style: MyTextStyle.normalsmall(context),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Connect With Me",
                            style: MyTextStyle.label(context),
                          ),
                          SizedBox(
                            width: Dimensions.height10(context),
                          ),
                          const Divider(),
                          SizedBox(
                            height: Dimensions.height20(context),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () => controller.launchWeb(
                                    link: AppConstant.github),
                                icon: Icon(
                                  Bootstrap.github,
                                  color: Colors.white,
                                  size: Dimensions.iconSize32(context),
                                ),
                              ),
                              IconButton(
                                onPressed: () => controller.launchWeb(
                                    link: AppConstant.linkedin),
                                icon: Icon(
                                  Bootstrap.linkedin,
                                  color: Colors.white,
                                  size: Dimensions.iconSize32(context),
                                ),
                              ),
                              // IconButton(
                              //   onPressed: () => controller.launchWeb(
                              //       link: AppConstant.gmail),
                              //   icon: Icon(
                              //     IonIcons.mail_open,
                              //     color: Colors.white,
                              //     size: Dimensions.iconSize32(context),
                              //   ),
                              // ),
                              IconButton(
                                onPressed: () => controller.launchWeb(
                                    link: AppConstant.facebook),
                                icon: Icon(
                                  Bootstrap.facebook,
                                  color: Colors.white,
                                  size: Dimensions.iconSize32(context),
                                ),
                              ),
                              IconButton(
                                onPressed: () => controller.launchWeb(
                                    link: AppConstant.viber),
                                icon: Icon(
                                  FontAwesome.viber,
                                  color: Colors.white,
                                  size: Dimensions.iconSize32(context),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
            ));
  }
}
