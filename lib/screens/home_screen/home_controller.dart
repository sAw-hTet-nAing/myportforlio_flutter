import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_widgets/contact.dart';

import 'package:myportforlio_flutter/screens/home_screen/home_widgets/introduction_widget.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_widgets/aboutme.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_widgets/projects.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  RxInt selecredPage = 0.obs;

  RxList<String> navList = ["Home", "About me", "Projects", "Contact me"].obs;
  List<Widget> pages = <Widget>[
    introductionWidget(),
    const AboutMeWidget(),
    const ProjectWidget(),
    const ContactWidget()
  ];
}
