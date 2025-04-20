import 'package:dio/dio.dart';
import 'package:per_rat/data/models/anime_response.dart';
import 'package:per_rat/data/models/single_anime_response.dart';
import 'package:retrofit/retrofit.dart';

part 'anime_api_client.g.dart';

@RestApi(baseUrl: "https://api.jikan.moe/v4")
abstract class AnimeApiClient {
  factory AnimeApiClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _AnimeApiClient;

  @GET("/anime")
  Future<AnimeResponse> getAnime({
    @Query("page") int page = 1,
    @Query("limit") int limit = 25,
  });

  @GET("/anime/{id}")
  Future<SingleAnimeResponse> getAnimeById(@Path("id") int id);

  @GET("/anime")
  Future<AnimeResponse> searchAnime({
    @Query("q") required String query,
    @Query("page") int page = 1,
    @Query("limit") int limit = 25,
  });
}

abstract class ParseErrorLogger {
  void logError(Object e, StackTrace s, RequestOptions options);
}
