import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'anime_model.freezed.dart';
part 'anime_model.g.dart';

final formatter = DateFormat.yMd();
final formatterMY = DateFormat.yM();

@freezed
class AnimeResponse with _$AnimeResponse {
  const factory AnimeResponse({
    required Pagination pagination,
    required List<Anime> data,
  }) = _AnimeResponse;

  factory AnimeResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimeResponseFromJson(json);
}

@freezed
class Anime with _$Anime {
  const Anime._(); // Added to allow for custom getters

  const factory Anime({
    @JsonKey(name: 'mal_id') int? malId,
    required String url,
    required Map<String, ImageFormat> images,
    required Trailer trailer,
    required bool approved,
    List<Title>? titles,
    required String title,
    @JsonKey(name: 'title_english') String? titleEnglish,
    @JsonKey(name: 'title_japanese') String? titleJapanese,
    @JsonKey(name: 'title_synonyms') List<String>? titleSynonyms,
    @JsonKey(name: 'type') String? animeType,
    String? source,
    int? episodes,
    String? status,
    required bool airing,
    required Aired aired,
    String? duration,
    String? rating,
    double? score,
    @JsonKey(name: 'scored_by') int? scoredBy,
    int? rank,
    int? popularity,
    int? members,
    int? favorites,
    String? synopsis,
    String? background,
    String? season,
    int? year,
    required Broadcast broadcast,
    required List<Demographic> producers,
    required List<Demographic> licensors,
    required List<Demographic> studios,
    required List<Demographic> genres,
    @JsonKey(name: 'explicit_genres') List<dynamic>? explicitGenres,
    required List<Demographic> themes,
    required List<Demographic> demographics,
  }) = _Anime;

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);

  // Custom getters
  List<String> get genreNames => genres.map((g) => g.name).toList();

  String get mainImageUrl => images['jpg']?.imageUrl ?? '';
}

@freezed
class Aired with _$Aired {
  const factory Aired({
    DateTime? from,
    DateTime? to,
    required Prop prop,
    String? string,
  }) = _Aired;

  factory Aired.fromJson(Map<String, dynamic> json) => _$AiredFromJson(json);
}

@freezed
class Prop with _$Prop {
  const factory Prop({
    PropFrom? from,
    PropFrom? to,
  }) = _Prop;

  factory Prop.fromJson(Map<String, dynamic> json) => _$PropFromJson(json);
}

@freezed
class PropFrom with _$PropFrom {
  const factory PropFrom({
    int? day,
    int? month,
    int? year,
  }) = _PropFrom;

  factory PropFrom.fromJson(Map<String, dynamic> json) =>
      _$PropFromFromJson(json);
}

@freezed
class Broadcast with _$Broadcast {
  const factory Broadcast({
    String? day,
    String? time,
    String? timezone,
    String? string,
  }) = _Broadcast;

  factory Broadcast.fromJson(Map<String, dynamic> json) =>
      _$BroadcastFromJson(json);
}

@freezed
class Demographic with _$Demographic {
  const factory Demographic({
    @JsonKey(name: 'mal_id') int? malId,
    String? type,
    required String name,
    required String url,
  }) = _Demographic;

  factory Demographic.fromJson(Map<String, dynamic> json) =>
      _$DemographicFromJson(json);
}

@freezed
class ImageFormat with _$ImageFormat {
  const factory ImageFormat({
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'small_image_url') String? smallImageUrl,
    @JsonKey(name: 'large_image_url') String? largeImageUrl,
  }) = _ImageFormat;

  factory ImageFormat.fromJson(Map<String, dynamic> json) =>
      _$ImageFormatFromJson(json);
}

@freezed
class Title with _$Title {
  const factory Title({
    @JsonKey(name: 'type') String? titleType,
    @JsonKey(name: 'title') String? titleName,
  }) = _Title;

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}

@freezed
class Trailer with _$Trailer {
  const factory Trailer({
    @JsonKey(name: 'youtube_id') String? youtubeId,
    String? url,
    @JsonKey(name: 'embed_url') String? embedUrl,
    Images? images,
  }) = _Trailer;

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
}

@freezed
class Images with _$Images {
  const factory Images({
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'small_image_url') String? smallImageUrl,
    @JsonKey(name: 'medium_image_url') String? mediumImageUrl,
    @JsonKey(name: 'large_image_url') String? largeImageUrl,
    @JsonKey(name: 'maximum_image_url') String? maximumImageUrl,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: 'last_visible_page') int? lastVisiblePage,
    @JsonKey(name: 'has_next_page') bool? hasNextPage,
    @JsonKey(name: 'current_page') int? currentPage,
    required PaginationItems items,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

@freezed
class PaginationItems with _$PaginationItems {
  const factory PaginationItems({
    int? count,
    int? total,
    @JsonKey(name: 'per_page') int? perPage,
  }) = _PaginationItems;

  factory PaginationItems.fromJson(Map<String, dynamic> json) =>
      _$PaginationItemsFromJson(json);
}
