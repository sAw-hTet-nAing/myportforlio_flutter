import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  final String appBaseUrl;
  late Map<String, String> _mainHeaders;

  ApiClient({
    required this.appBaseUrl,
  }) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    _mainHeaders = {
      "Content-Type": "application/json",
    };
  }

  Future<Response> postData(String uri, dynamic body) async {
    // print(body.toString());
    try {
      Response response = await post(uri, body, headers: _mainHeaders);

      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
