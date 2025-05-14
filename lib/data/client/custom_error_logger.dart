import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:per_rat/data/client/anime_api_client.dart';

class CustomErrorLogger implements ParseErrorLogger {
  @override
  void logError(Object e, StackTrace s, RequestOptions options) {
    developer.log(
      'Retrofit parsing error for ${options.path}',
      name: 'Retrofit Error',
      error: e,
      stackTrace: s,
    );
  }
}
