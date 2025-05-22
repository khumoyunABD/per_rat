import 'dart:async';
import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:per_rat/data/client/jikan_service.dart'; // Updated import
import 'package:per_rat/data/extensions/anime_season.dart';
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
      }
      throw Exception('Failed to fetch anime by ID: $e');
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

  Future<SeasonalAnimeResponse> fetchThisSeasonAnime({
    int page = 1,
    int limit = 25,
  }) async {
    try {
      final response = await _jikanService.apiClient.getThisSeasonAnime(
        page: page,
        limit: limit,
      );

      logger.d('This Season Anime response: $response ');

      return response;
    } catch (e, stackTrace) {
      developer.log(
        'Error fetching top anime list with $e',
        name: 'Repository Error',
        error: e,
        stackTrace: stackTrace,
      );

      if (e is DioException) {
        throw Exception('API Error: ${e.message}');
      }
      throw Exception('Failed to fetch this season anime: $e');
    }
  }

  /// Get current season and year
  ({int year, AnimeSeason season}) getCurrentSeason() {
    final now = DateTime.now();
    return (year: now.year, season: now.animeSeason);
  }

  /// Get previous season and its year
  ({int year, AnimeSeason season}) getPreviousSeason() {
    final now = DateTime.now();
    final currentSeason = now.animeSeason;

    // If current season is winter, previous season is fall of previous year
    if (currentSeason == AnimeSeason.winter) {
      return (year: now.year - 1, season: AnimeSeason.fall);
    } else {
      return (year: now.year, season: currentSeason.previous);
    }
  }

  /// Fetch anime from previous season
  Future<SeasonalAnimeResponse> fetchPreviousSeasonAnime({
    int page = 1,
    int limit = 25,
  }) async {
    try {
      final prevSeason = getPreviousSeason();

      final response = await _jikanService.apiClient.getSeasonalAnime(
        year: prevSeason.year,
        season: prevSeason.season.value,
        page: page,
        limit: limit,
      );

      logger.d(
          'Previous Season (${prevSeason.season.value} ${prevSeason.year}) Anime response: $response');

      return response;
    } catch (e, stackTrace) {
      developer.log(
        'Error fetching previous season anime',
        name: 'Repository Error',
        error: e,
        stackTrace: stackTrace,
      );

      if (e is DioException) {
        throw Exception('API Error: ${e.message}');
      }
      throw Exception('Failed to fetch previous season anime: $e');
    }
  }

  /// Fetch anime from any specific season
  Future<SeasonalAnimeResponse> fetchSeasonalAnime({
    required int year,
    required AnimeSeason season,
    int page = 1,
    int limit = 25,
  }) async {
    try {
      final response = await _jikanService.apiClient.getSeasonalAnime(
        year: year,
        season: season.value,
        page: page,
        limit: limit,
      );

      logger.d('Seasonal Anime (${season.value} $year) response: $response');

      return response;
    } catch (e, stackTrace) {
      developer.log(
        'Error fetching seasonal anime for ${season.value} $year',
        name: 'Repository Error',
        error: e,
        stackTrace: stackTrace,
      );

      if (e is DioException) {
        throw Exception('API Error: ${e.message}');
      }
      throw Exception('Failed to fetch seasonal anime: $e');
    }
  }
}
