import 'dart:async';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;

  RxInt activeIndex = 0.obs;

  Future<void> launchCompany({required String link}) async {
    await launchUrl(Uri.parse(link));
    update();
  }
}
