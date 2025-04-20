import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:per_rat/data/models/anime_response.dart';

part 'single_anime_response.freezed.dart';
part 'single_anime_response.g.dart';

@freezed
class SingleAnimeResponse with _$SingleAnimeResponse {
  const factory SingleAnimeResponse({
    required Anime data,
  }) = _SingleAnimeResponse;

  factory SingleAnimeResponse.fromJson(Map<String, dynamic> json) =>
      _$SingleAnimeResponseFromJson(json);
}
