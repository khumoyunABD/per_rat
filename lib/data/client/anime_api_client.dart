import 'package:dio/dio.dart';
import 'package:per_rat/data/models/models.dart';
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

  @GET("/anime/{id}/recommendations")
  Future<AnimeRecommendationResponse> getAnimeRecommendation(
      @Path("id") int id);

  @GET("/anime")
  Future<AnimeResponse> searchAnime({
    @Query("q") required String query,
    @Query("page") int page = 1,
    @Query("limit") int limit = 25,
  });

  @GET("/top/anime")
  Future<TopAnimeResponse> getTopAnime({
    @Query("page") int page = 1,
    @Query("limit") int limit = 25,
    @Query("filter") String? filter, // airing, upcoming, bypopularity, favorite
  });

  @GET("/seasons/now")
  Future<SeasonalAnimeResponse> getThisSeasonAnime({
    @Query("page") int page = 1,
    @Query("limit") int limit = 25,
  });

  @GET("/seasons/{year}/{season}")
  Future<SeasonalAnimeResponse> getSeasonalAnime({
    @Path("year") required int year,
    @Path("season") required String season,
    @Query("page") int page = 1,
    @Query("limit") int limit = 25,
  });
}

abstract class ParseErrorLogger {
  void logError(Object e, StackTrace s, RequestOptions options);
}
