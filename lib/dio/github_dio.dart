import 'package:dio/native_imp.dart';

class GitHubDio extends DioForNative{

  GitHubDio(){
    options.baseUrl = "www.github.com";
  }
}