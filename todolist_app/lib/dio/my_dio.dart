import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class MyDio with DioMixin implements Dio {
  @override
  set options(BaseOptions _options) {
    _options.baseUrl = "https://domain-hoge.com";
    _options.headers = {
      "Content-Type": "application/json",
      "piyo": "hogehoge"
    };
    super.options = _options;
  }

  @override
  HttpClientAdapter get httpClientAdapter => DefaultHttpClientAdapter();
}