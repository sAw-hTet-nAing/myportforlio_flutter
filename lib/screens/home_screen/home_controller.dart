import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_repo.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  final HomeRepo homeRepo;
  HomeController({required this.homeRepo});
  RxBool isLoading = false.obs;
  RxInt activeIndex = 0.obs;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();

//*Sent Email

  Future<void> sentEmail() async {
    isLoading.value = true;
    update();
    try {
      Response response = await homeRepo.sentEmail(
          name: nameController.text,
          email: emailController.text,
          subject: subjectController.text,
          message: messageController.text);

      if (response.statusCode == 200) {
        Get.back();
        Get.snackbar("Success", "Message has Been sent");
      } else {
        Get.snackbar("Error", response.statusCode.toString());
        print(response.bodyString);
      }
    } catch (e) {
      rethrow;
    }
    update();
  }

  Future<void> launchWeb({required String link}) async {
    await launchUrl(Uri.parse(link));
    update();
  }

  Future<void> launchViber({required String link}) async {
    await launchUrl(Uri(scheme: "tel", path: link),
        mode: LaunchMode.externalApplication);
    update();
  }
}
