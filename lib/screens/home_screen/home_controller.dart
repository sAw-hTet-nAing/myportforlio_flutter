import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_widgets/introduction_widget.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_widgets/skills_widget.dart';

class HomeController extends GetxController implements GetxService {
  @override
  void onReady() {
    initializePages();
    super.onReady();
  }

  RxBool isLoading = false.obs;
  List pages = [].obs;
  void initializePages() {
    pages = [introductionWidget(), skillsWidget(), Container()];
    update();
  }
}
