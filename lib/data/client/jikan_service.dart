import 'dart:async';
import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:http_cache_file_store/http_cache_file_store.dart';
import 'package:path_provider/path_provider.dart';
import 'package:per_rat/data/client/anime_api_client.dart'; // Retrofit client

class JikanService {
  late final AnimeApiClient apiClient;
  late final Dio dio; // Expose Dio for direct methods if needed

  DateTime? _lastApiCall;
  final Duration _rateLimitDuration = Duration(milliseconds: 400);

  /// Response cache shared by every [JikanService] instance.
  ///
  /// A disk store is set up by [initCache] (called from `main`) so cached
  /// lists survive app restarts. Until then — or if the disk store can't be
  /// created — an in-memory store is used.
  static CacheStore _cacheStore = MemCacheStore();

  /// Creates the on-disk response cache. Call once before `runApp`.
  static Future<void> initCache() async {
    try {
      final dir = await getApplicationCacheDirectory();
      _cacheStore = FileCacheStore('${dir.path}/jikan_api_cache');
    } catch (e) {
      developer.log('Disk cache unavailable, using memory cache',
          name: 'API Cache', error: e);
    }
  }

  /// Always asks the network for fresh data and stores every successful
  /// response. If the API is unreachable or failing, the last stored copy
  /// (up to [_maxStale] old) is returned instead of an error.
  static CacheOptions get _cacheOptions => CacheOptions(
        store: _cacheStore,
        policy: CachePolicy.refreshForceCache,
        hitCacheOnNetworkFailure: true,
        hitCacheOnErrorCodes: const [500, 502, 503, 504],
        maxStale: _maxStale,
      );

  static const _maxStale = Duration(days: 7);

  JikanService() {
    dio = Dio();
    _configureClient();
    apiClient = AnimeApiClient(dio); // Initialize Retrofit client
  }

  void _configureClient() {
    dio.options.connectTimeout = Duration(milliseconds: 5000); // 5 seconds
    dio.options.receiveTimeout = Duration(milliseconds: 10000); // 10 seconds
    dio.options.baseUrl = 'https://api.jikan.moe/v4';

    // Cache first: serves the stored copy when the API can't be reached.
    dio.interceptors.add(DioCacheInterceptor(options: _cacheOptions));

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
