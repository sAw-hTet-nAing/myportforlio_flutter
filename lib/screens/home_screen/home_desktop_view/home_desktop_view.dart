import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_widgets/aboutme.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_widgets/bottom_widget.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_widgets/contact.dart';

import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_widgets/experiences.dart';

import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_widgets/introduction_widget.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_widgets/projects.dart';

import 'package:myportforlio_flutter/utils/app_color.dart';

import 'package:myportforlio_flutter/utils/dimesions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final ScrollController _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController();

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
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
                    // appBar: PreferredSize(
                    //   preferredSize:
                    //       Size.fromHeight(Dimensions.height40(context) * 1.5),
                    //   child: const DesktopAppBar(),
                    // ),
                    backgroundColor: Colors.transparent,
                    body: SingleChildScrollView(
                      controller: _scrollController,
                      physics: const ScrollPhysics(),
                      child: Column(
                        children: [
                          const IntroductionWidget(),
                          const AboutMeWidget(),
                          const ProjectWidget(),
                          const ExperiencesWidget(),
                          const ContactWidget(),
                          bottomWidget(context),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ));
  }
}
