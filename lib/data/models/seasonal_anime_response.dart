import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:per_rat/data/models/models.dart';

part 'seasonal_anime_response.freezed.dart';
part 'seasonal_anime_response.g.dart';

@freezed
class SeasonalAnimeResponse with _$SeasonalAnimeResponse {
  const factory SeasonalAnimeResponse({
    required Pagination pagination,
    required List<Anime> data,
  }) = _SeasonalAnimeResponse;

  factory SeasonalAnimeResponse.fromJson(Map<String, dynamic> json) =>
      _$SeasonalAnimeResponseFromJson(json);
}
