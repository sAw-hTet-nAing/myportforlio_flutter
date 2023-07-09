import 'package:get/get.dart';
import 'package:myportforlio_flutter/api/api_client.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_controller.dart';
import 'package:myportforlio_flutter/screens/home_screen/home_repo.dart';
import 'package:myportforlio_flutter/utils/constants.dart';

class AppBinding {
  static Future<void> init() async {
    Get.put<ApiClient>(ApiClient(appBaseUrl: AppConstant.baseUrl));
    Get.lazyPut<HomeRepo>(() => HomeRepo(apiClient: Get.find<ApiClient>()));
    Get.lazyPut<HomeController>(
        () => HomeController(homeRepo: Get.find<HomeRepo>()));
  }
}
