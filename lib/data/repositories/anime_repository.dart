import 'dart:async';
import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:per_rat/data/client/jikan_service.dart'; // Updated import
import 'package:per_rat/data/models/models.dart';

class AnimeRepository {
  AnimeRepository(this._jikanService);

  final JikanService _jikanService; // Use JikanService
  final logger = Logger();

  // Constructor now takes JikanService

  /// Fetches anime data from the Jikan API with optional pagination
  Future<AnimeResponse> fetchAnime({int page = 1, int limit = 25}) async {
    try {
      // Using the API client from JikanService
      return await _jikanService.apiClient.getAnime(page: page, limit: limit);
    } catch (e, stackTrace) {
      developer.log(
        'Error fetching anime list',
        name: 'Repository Error',
        error: e,
        stackTrace: stackTrace,
      );

      if (e is DioException) {
        throw Exception('API Error: ${e.message}');
      }
      throw Exception('Failed to fetch anime: $e');
    }
  }

  /// Alternative implementation using direct Dio if you prefer not to use Retrofit
  Future<AnimeResponse> fetchAnimeListDirect() async {
    try {
      // The rate limiting is handled by JikanService's Dio instance
      final response = await _jikanService.dio.get<Map<String, dynamic>>(
        '/anime',
        queryParameters: {
          'page': 1,
          'limit': 25,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final paginatedResponse = AnimeResponse.fromJson(response.data!);
        logger.d(
            'Data fetched successfully, anime count: ${paginatedResponse.data.length}');
        return paginatedResponse;
      }
      throw Exception('Unexpected status code: ${response.statusCode}');
    } on DioException catch (e) {
      logger.e('Dio Exception: ${e.message}');
      throw Exception('API Error: ${e.message}');
    } catch (e, stackTrace) {
      logger.e('Unexpected error: $e');
      throw Exception('Failed to fetch anime: $e and stacktrace: $stackTrace');
    }
  }

  /// Fetches all anime entries by paginating through all available pages
  Future<List<Anime>> fetchAllAnime({
    void Function(int current, int total)? progressCallback,
    int limit = 25,
  }) async {
    List<Anime> allAnime = [];
    int currentPage = 1;
    bool hasNextPage = true;
    int totalPages = 1; // Will be updated after first request

    while (hasNextPage) {
      try {
        final response = await fetchAnime(page: currentPage, limit: limit);

        allAnime.addAll(response.data);

        // Handle nullable hasNextPage - default to false if null
        hasNextPage = response.pagination.hasNextPage ?? false;
        totalPages = response.pagination.lastVisiblePage ?? 1;

        // Report progress if callback is provided
        if (progressCallback != null) {
          progressCallback(currentPage, totalPages);
        }

        currentPage++;
      } catch (e) {
        developer.log('Error in page $currentPage',
            name: 'Pagination Error', error: e);
        // If we hit an error, stop pagination but return what we have so far
        hasNextPage = false;
      }
    }

    return allAnime;
  }

  /// Fetches a specific anime by its MAL ID
  Future<Anime> fetchAnimeById(int id) async {
    try {
      final response = await _jikanService.apiClient.getAnimeById(id);
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

  Future<List<RecommendationEntry>> fetchAnimeRecommendation(int id) async {
    try {
      final response = await _jikanService.apiClient.getAnimeRecommendation(id);
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
      }throw Exception('Failed to fetch anime by ID: $e');
    }
  }

  /// Direct implementation for fetching anime by ID without Retrofit
  Future<Anime> fetchAnimeByIdDirect(int id) async {
    try {
      final response =
          await _jikanService.dio.get<Map<String, dynamic>>('/anime/$id');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final animeResponse = AnimeResponse.fromJson(response.data!);
        if (animeResponse.data.isNotEmpty) {
          return animeResponse.data.first;
        }
        throw Exception('Anime with ID $id not found');
      }
      throw Exception('Unexpected status code: ${response.statusCode}');
    } on DioException catch (e) {
      logger.e('Dio Exception when fetching anime $id: ${e.message}');
      throw Exception('API Error: ${e.message}');
    } catch (e, stackTrace) {
      logger.e('Unexpected error fetching anime $id');
      throw Exception('Failed to fetch anime by ID: $e , $stackTrace');
    }
  }

  /// Searches for anime by title
  Future<AnimeResponse> searchAnime(String query,
      {int page = 1, int limit = 25}) async {
    try {
      return await _jikanService.apiClient.searchAnime(
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

  /// Direct implementation for searching anime without Retrofit
  Future<AnimeResponse> searchAnimeDirect(String query,
      {int page = 1, int limit = 25}) async {
    try {
      final response = await _jikanService.dio.get<Map<String, dynamic>>(
        '/anime',
        queryParameters: {
          'q': query,
          'page': page,
          'limit': limit,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return AnimeResponse.fromJson(response.data!);
      }
      throw Exception('Unexpected status code: ${response.statusCode}');
    } on DioException catch (e) {
      logger.e('Dio Exception when searching "$query": ${e.message}');
      throw Exception('API Error: ${e.message}');
    } catch (e, stackTrace) {
      logger.e('Unexpected error searching "$query"');
      throw Exception('Failed to search anime: $e and stacktrace: $stackTrace');
    }
  }

  /// Fetches top anime data from the Jikan API with optional pagination and filter
  Future<TopAnimeResponse> fetchTopAnime({
    int page = 1,
    int limit = 25,
    String? filter,
  }) async {
    try {
      final response = await _jikanService.apiClient.getTopAnime(
        page: page,
        limit: limit,
        filter: filter,
      );

      logger.d('Top Anime response: $response ');

      return response;
    } catch (e, stackTrace) {
      developer.log(
        'Error fetching top anime list with filter: $filter',
        name: 'Repository Error',
        error: e,
        stackTrace: stackTrace,
      );

      if (e is DioException) {
        throw Exception('API Error: ${e.message}');
      }
      throw Exception('Failed to fetch top anime: $e');
    }
  }

  /// Fetches top airing anime
  // Future<TopAnimeResponse> fetchTopAiringAnime({
  //   int page = 1,
  //   int limit = 25,
  // }) {
  //   return fetchTopAnime(page: page, limit: limit, filter: 'airing');
  // }

  /// Fetches top upcoming anime
  // Future<TopAnimeResponse> fetchTopUpcomingAnime({
  //   int page = 1,
  //   int limit = 25,
  // }) {
  //   return fetchTopAnime(page: page, limit: limit, filter: 'upcoming');
  // }

  /// Fetches top anime by popularity
  // Future<TopAnimeResponse> fetchTopByPopularityAnime({
  //   int page = 1,
  //   int limit = 25,
  // }) {
  //   return fetchTopAnime(page: page, limit: limit, filter: 'bypopularity');
  // }

  /// Fetches top favorite anime
  // Future<TopAnimeResponse> fetchTopFavoriteAnime({
  //   int page = 1,
  //   int limit = 25,
  // }) {
  //   return fetchTopAnime(page: page, limit: limit, filter: 'favorite');
  // }
}
