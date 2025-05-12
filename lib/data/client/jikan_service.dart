import 'dart:async';
import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:per_rat/data/client/anime_api_client.dart'; // Retrofit client

class JikanService {
  late final AnimeApiClient apiClient;
  late final Dio dio; // Expose Dio for direct methods if needed

  DateTime? _lastApiCall;
  final Duration _rateLimitDuration = Duration(milliseconds: 400);

  JikanService() {
    dio = Dio();
    _configureClient();
    apiClient = AnimeApiClient(dio); // Initialize Retrofit client
  }

  void _configureClient() {
    dio.options.connectTimeout = Duration(milliseconds: 5000); // 5 seconds
    dio.options.receiveTimeout = Duration(milliseconds: 10000); // 10 seconds
    dio.options.baseUrl = 'https://api.jikan.moe/v4';

    // Add logging interceptor
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (object) => developer.log(object.toString(), name: 'API'),
      ),
    );

    // Add rate limiting interceptor
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          await _respectRateLimit();
          return handler.next(options);
        },
        onError: (DioException error, handler) async {
          developer.log('API Error: ${error.message}',
              name: 'API Error', error: error);

          if (error.response?.statusCode == 429) {
            // If rate limited, wait and retry
            await Future.delayed(Duration(seconds: 2));
            // Retry with the original Dio instance associated with this service
            return handler.resolve(await dio.fetch(error.requestOptions));
          }
          return handler.next(error);
        },
      ),
    );
  }

  // Helper method to respect rate limits
  Future<void> _respectRateLimit() async {
    if (_lastApiCall != null) {
      final timeSinceLastCall = DateTime.now().difference(_lastApiCall!);
      if (timeSinceLastCall < _rateLimitDuration) {
        final waitTime = _rateLimitDuration - timeSinceLastCall;
        await Future.delayed(waitTime);
      }
    }
    _lastApiCall = DateTime.now();
  }
}
