import 'dart:async';
import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:per_rat/data/client/anime_api_client.dart';
import 'package:per_rat/data/models/anime_response.dart';

class AnimeRepository {
  late final AnimeApiClient _apiClient;
  final Dio _dio = Dio();

  // Rate limiting - Jikan API typically requires a delay between requests
  DateTime? _lastApiCall;
  final Duration _rateLimitDuration = Duration(milliseconds: 400);

  final logger = Logger();

  // AnimeRepository() {
  //   _dio.options.connectTimeout = Duration(milliseconds: 5000); // 5 seconds
  //   _dio.options.receiveTimeout = Duration(milliseconds: 10000); // 10 seconds

  //   // Add logging interceptor
  //   _dio.interceptors.add(
  //     LogInterceptor(
  //       requestBody: true,
  //       responseBody: true,
  //       logPrint: (object) => developer.log(object.toString(), name: 'API'),
  //     ),
  //   );

  //   // Add rate limiting interceptor
  //   _dio.interceptors.add(
  //     InterceptorsWrapper(
  //       onRequest: (options, handler) async {
  //         await _respectRateLimit();
  //         return handler.next(options);
  //       },
  //       onError: (DioException error, handler) async {
  //         developer.log('API Error: ${error.message}',
  //             name: 'API Error', error: error);

  //         if (error.response?.statusCode == 429) {
  //           // If rate limited, wait and retry
  //           await Future.delayed(Duration(seconds: 2));
  //           return handler.resolve(await _dio.fetch(error.requestOptions));
  //         }
  //         return handler.next(error);
  //       },
  //     ),
  //   );

  //   // Create the custom error logger
  //   final errorLogger = CustomErrorLogger();

  //   // Create the Retrofit client with error logging
  //   _apiClient = AnimeApiClient(
  //     _dio,
  //     errorLogger: errorLogger,
  //   );
  // }

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

  ///uses Retrofit

  /// Fetches anime data from the Jikan API with optional pagination
  // Future<AnimeResponse> fetchAnime({int page = 1, int limit = 25}) async {
  //   try {
  //     return await _apiClient.getAnime(page: page, limit: limit);
  //   } catch (e, stackTrace) {
  //     developer.log(
  //       'Error fetching anime list',
  //       name: 'Repository Error',
  //       error: e,
  //       stackTrace: stackTrace,
  //     );

  //     if (e is DioException) {
  //       throw Exception('API Error: ${e.message}');
  //     }
  //     throw Exception('Failed to fetch anime: $e');
  //   }
  // }

  ///without using retrofit
  Future<AnimeResponse> fetchAnimeList() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        'https://api.jikan.moe/v4/anime',
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final paginatedResponse = AnimeResponse.fromJson(response.data!);

        logger.f('Data fetched successfully, users count: $paginatedResponse');
        return paginatedResponse;
      }
      throw Exception('Unexpected error inside AnimeRepository');
    } on DioException catch (e) {
      throw Exception('Dio Exception inside AnimeRepository with error: $e');
    } catch (e) {
      throw Exception('Completely different inside AnimeRepository error: $e');
    }
  }

  /// Fetches all anime entries by paginating through all available pages
// Update this method to handle nullable pagination fields
  // Future<List<Anime>> fetchAllAnime({
  //   void Function(int current, int total)? progressCallback,
  //   int limit = 25,
  // }) async {
  //   List<Anime> allAnime = [];
  //   int currentPage = 1;
  //   bool hasNextPage = true;
  //   int totalPages = 1; // Will be updated after first request

  //   while (hasNextPage) {
  //     try {
  //       final response = await fetchAnime(page: currentPage, limit: limit);

  //       allAnime.addAll(response.data);

  //       logger.i(response);
  //       // Handle nullable hasNextPage - default to false if null
  //       hasNextPage = response.pagination.hasNextPage ?? false;
  //       totalPages = response.pagination.lastVisiblePage ?? 1;

  //       // Report progress if callback is provided
  //       if (progressCallback != null) {
  //         progressCallback(currentPage, totalPages);
  //       }

  //       currentPage++;
  //     } catch (e) {
  //       developer.log('Error in page $currentPage',
  //           name: 'Pagination Error', error: e);
  //       // If we hit an error, stop pagination but return what we have so far
  //       hasNextPage = false;
  //     }
  //   }

  //   return allAnime;
  // }

  /// Fetches a specific anime by its MAL ID
  Future<Anime> fetchAnimeById(int id) async {
    try {
      final response = await _apiClient.getAnimeById(id);
      return response.data;
    } catch (e, stackTrace) {
      developer.log(
        'Error fetching anime by ID: $id',
        name: 'Repository Error',
        error: e,
        stackTrace: stackTrace,
      );

      if (e is DioException) {
        throw Exception('API Error: ${e.message}');
      }
      throw Exception('Failed to fetch anime by ID: $e');
    }
  }

  /// Searches for anime by title
  Future<AnimeResponse> searchAnime(String query,
      {int page = 1, int limit = 25}) async {
    try {
      return await _apiClient.searchAnime(
        query: query,
        page: page,
        limit: limit,
      );
    } catch (e, stackTrace) {
      developer.log(
        'Error searching anime: "$query"',
        name: 'Repository Error',
        error: e,
        stackTrace: stackTrace,
      );

      if (e is DioException) {
        throw Exception('API Error: ${e.message}');
      }
      throw Exception('Failed to search anime: $e');
    }
  }
}
