import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_mobile_view/mobile_widget/mobile_aboutME2.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_mobile_view/mobile_widget/mobile_aboutMe.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_mobile_view/mobile_widget/mobile_contact.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_mobile_view/mobile_widget/mobile_experience.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_mobile_view/mobile_widget/mobile_introduction.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_mobile_view/mobile_widget/mobile_project.dart';
import 'package:myportforlio_flutter/utils/app_color.dart';
import 'package:myportforlio_flutter/utils/dimesions.dart';
import '../home_desktop_view/home_widgets/bottom_widget.dart';

class HomeMobileView extends StatefulWidget {
  const HomeMobileView({super.key});

  @override
  State<HomeMobileView> createState() => _HomeMobileViewState();
}

class _HomeMobileViewState extends State<HomeMobileView> {
  late ScrollController _scrollController;

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
                    backgroundColor: Colors.transparent,
                    body: SingleChildScrollView(
                      controller: _scrollController,
                      physics: const ScrollPhysics(),
                      child: Column(
                        children: [
                          const MobileIntroduction(),
                          const MobileAboutMeWidget(),
                          const MobileAboutMe2Widget(),
                          const MobileProjectWidget(),
                          const MobileExperiencesWidget(),
                          const MobileContactWidget(),
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
