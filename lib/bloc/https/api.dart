import 'package:dio/dio.dart';

class ApiClient {
  static const baseUrl = 'https://truyencotichaudio.com/api/';
  Dio dio;

  // static final ApiClient _singleton = ApiClient._internal();
  //
  // factory ApiClient() {
  //   var options = BaseOptions(
  //     baseUrl: baseUrl,
  //     connectTimeout: 5000,
  //     receiveTimeout: 3000,
  //   );
  //   _singleton.dio = Dio(options);
  //   return _singleton;
  // }
  //
  // ApiClient._internal();

   ApiClient() {
    var options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    dio = Dio(options);
  }
}
