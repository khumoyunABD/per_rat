import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_recommendation_response.freezed.dart';
part 'anime_recommendation_response.g.dart';

@freezed
class AnimeRecommendationResponse with _$AnimeRecommendationResponse {
  const factory AnimeRecommendationResponse({
    required List<RecommendationEntry> data,
  }) = _AnimeRecommendationResponse;

  factory AnimeRecommendationResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimeRecommendationResponseFromJson(json);
}

@freezed
class RecommendationEntry with _$RecommendationEntry {
  const factory RecommendationEntry({
    required AnimeEntry entry,
    required String url,
    required int votes,
  }) = _RecommendationEntry;

  factory RecommendationEntry.fromJson(Map<String, dynamic> json) =>
      _$RecommendationEntryFromJson(json);
}

@freezed
class AnimeEntry with _$AnimeEntry {
  const factory AnimeEntry({
    @JsonKey(name: 'mal_id') required int? malId,
    required String url,
    required AnimeImages images,
    required String title,
  }) = _AnimeEntry;

  factory AnimeEntry.fromJson(Map<String, dynamic> json) =>
      _$AnimeEntryFromJson(json);
}

@freezed
class AnimeImages with _$AnimeImages {
  const factory AnimeImages({
    required ImageUrls? jpg,
    required ImageUrls? webp,
  }) = _AnimeImages;

  factory AnimeImages.fromJson(Map<String, dynamic> json) =>
      _$AnimeImagesFromJson(json);
}

@freezed
class ImageUrls with _$ImageUrls {
  const factory ImageUrls({
    @JsonKey(name: 'image_url') required String? imageUrl,
    @JsonKey(name: 'small_image_url') required String? smallImageUrl,
    @JsonKey(name: 'large_image_url') required String? largeImageUrl,
  }) = _ImageUrls;

  factory ImageUrls.fromJson(Map<String, dynamic> json) =>
      _$ImageUrlsFromJson(json);
}
