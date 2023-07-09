import 'package:get/get.dart';
import 'package:myportforlio_flutter/api/api_client.dart';
import 'package:myportforlio_flutter/utils/constants.dart';

class HomeRepo {
  final ApiClient apiClient;
  HomeRepo({required this.apiClient});
  Future<Response> sentEmail(
      {required String name,
      required String email,
      required String subject,
      required String message}) async {
    return await apiClient.postData(
        "/api/v1.0/email/send",
        FormData({
          "service_id": AppConstant.serviceId,
          "template_id": AppConstant.templateId,
          "user_id": AppConstant.userId,
          "publicKey": AppConstant.userId,
          "template_params": {
            "user_name": name,
            "user_email": email,
            "user_subject": subject,
            "user_message": message
          }
        }));
  }
}
