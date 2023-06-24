import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:myportforlio_flutter/screens/home_screen/home_widgets/introduction_widget.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_widgets/skills_widget.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;

  List<Widget> pages = <Widget>[
    introductionWidget(),
    skillsWidget(),
    skillsWidget(),
    skillsWidget(),
  ];
}
