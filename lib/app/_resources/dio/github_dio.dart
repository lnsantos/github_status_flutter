import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:github_status/app/_resources/static/consts.dart';

class GitHubDio extends DioForNative {
  GitHubDio() {
    options.baseUrl = BASE_URL;
    interceptors.addAll([
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    ]);
  }
}
