import 'package:dio/dio.dart';

import '../end_point/end_point.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        headers: {'Content-Type': 'application/json', 'lang': 'ar'}));
  }

  static Future<Response> getData(
      {required String endPoints,
      Map<String, dynamic>? queryParameter,
      String? token}) async {
    dio.options.headers = {
      //'Content-Type': 'application/json',
      //'lang': lang,
      //'x-auth-token' : token??'',
    };
    try {
      final Response response =
          await dio.get(endPoints, queryParameters: queryParameter);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
