import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_widgets/contact.dart';

import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_widgets/introduction_widget.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_widgets/aboutme.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_desktop_view/home_widgets/projects.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_mobile_view/mobile_widget/mobile_aboutME2.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_mobile_view/mobile_widget/mobile_aboutMe.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_mobile_view/mobile_widget/mobile_introduction.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_tablet_view/home_tablet_widgets/tablet_about_me.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_tablet_view/home_tablet_widgets/tablet_introduction.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  RxInt selecredPage = 0.obs;
  RxBool isChangeTabs = false.obs;
  late PageController pageController;
  // RxInt mobileSelectedPage = 0.obs;
  // RxInt tabletSelectedPage = 1.obs;
  RxList<String> navList = ["Home", "About me", "Projects", "Contact me"].obs;
  List<Widget> pages = <Widget>[
    const IntroductionWidget(),
    const AboutMeWidget(),
    const ProjectWidget(),
    const ContactWidget()
  ];
  List<Widget> mobilePages = <Widget>[
    const MobileIntroduction(),
    const MobileAboutMeWidget(),
    const MobileAboutMe2Widget(),
    const ContactWidget()
  ];
  List<Widget> tabletPages = <Widget>[
    const TabletIntroductionWidget(),
    const TabletAboutMeWidget(),
    const MobileAboutMe2Widget(),
    const ContactWidget()
  ];

  // changeSelectedPage() {
  //   if (mobileSelectedPage.value == 1 || mobileSelectedPage.value == 2) {
  //     selecredPage.value = 1;
  //   } else {
  //     selecredPage.value = mobileSelectedPage.value;
  //   }

  //   update();
  // }

  // equalizeScreens() {
  //   mobileSelectedPage.value = selecredPage.value;
  //   update();
  // }
}
