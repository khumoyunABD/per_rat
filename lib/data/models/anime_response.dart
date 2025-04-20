import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'anime_response.freezed.dart';
part 'anime_response.g.dart';

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
  const Anime._();

  const factory Anime({
    required int? malId,
    required String url,
    required Map<String, ImageFormat> images,
    required Trailer trailer,
    required bool approved,
    required List<Title>? titles,
    required String title,
    required String? titleEnglish,
    required String? titleJapanese,
    required List<String>? titleSynonyms,
    required String? animeType,
    required String? source,
    required int? episodes,
    required String? status,
    required bool airing,
    required Aired aired,
    required String? duration,
    required String? rating,
    required double? score,
    int? scoredBy,
    int? rank,
    int? popularity,
    int? members,
    int? favorites,
    required String? synopsis,
    required String? background,
    required String? season,
    int? year,
    required Broadcast broadcast,
    required List<Demographic> producers,
    required List<Demographic> licensors,
    required List<Demographic> studios,
    required List<Demographic> genres,
    required List<dynamic>? explicitGenres,
    required List<Demographic> themes,
    required List<Demographic> demographics,
  }) = _Anime;

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);

  List<String> get genreNames => genres.map((g) => g.name).toList();

  String get mainImageUrl => images['jpg']?.imageUrl ?? '';
}

@freezed
class Aired with _$Aired {
  const factory Aired({
    required DateTime? from,
    required DateTime? to,
    required Prop prop,
    required String? string,
  }) = _Aired;

  factory Aired.fromJson(Map<String, dynamic> json) => _$AiredFromJson(json);
}

@freezed
class Prop with _$Prop {
  const factory Prop({
    required PropFrom? from,
    required PropFrom? to,
  }) = _Prop;

  factory Prop.fromJson(Map<String, dynamic> json) => _$PropFromJson(json);
}

@freezed
class PropFrom with _$PropFrom {
  const factory PropFrom({
    required int? day,
    required int? month,
    required int? year,
  }) = _PropFrom;

  factory PropFrom.fromJson(Map<String, dynamic> json) =>
      _$PropFromFromJson(json);
}

@freezed
class Broadcast with _$Broadcast {
  const factory Broadcast({
    required String? day,
    required String? time,
    required String? timezone,
    required String? string,
  }) = _Broadcast;

  factory Broadcast.fromJson(Map<String, dynamic> json) =>
      _$BroadcastFromJson(json);
}

// enum Timezone { ASIA_TOKYO }

@freezed
class Demographic with _$Demographic {
  const factory Demographic({
    required int? malId,
    required String? type,
    required String name,
    required String url,
  }) = _Demographic;

  factory Demographic.fromJson(Map<String, dynamic> json) =>
      _$DemographicFromJson(json);
}

// enum DemographicType { ANIME }

@freezed
class ImageFormat with _$ImageFormat {
  const factory ImageFormat({
    String? imageUrl,
    String? smallImageUrl,
    String? largeImageUrl,
  }) = _ImageFormat;

  factory ImageFormat.fromJson(Map<String, dynamic> json) =>
      _$ImageFormatFromJson(json);
}

// enum Rating {
//   PG_13_TEENS_13_OR_OLDER,
//   PG_CHILDREN,
//   R_17_VIOLENCE_PROFANITY,
//   R_MILD_NUDITY
// }

// enum Season { FALL, SPRING, SUMMER }

// enum Source { LIGHT_NOVEL, MANGA, ORIGINAL }

// enum Status { CURRENTLY_AIRING, FINISHED_AIRING }

@freezed
class Title with _$Title {
  const factory Title({
    String? titleType,
    String? titleName,
  }) = _Title;

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}

//enum TitleType { DEFAULT, ENGLISH, FRENCH, GERMAN, JAPANESE, SPANISH, SYNONYM }

@freezed
class Trailer with _$Trailer {
  const factory Trailer({
    required String? youtubeId,
    required String? url,
    required String? embedUrl,
    required Images? images,
  }) = _Trailer;

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
}

@freezed
class Images with _$Images {
  const factory Images({
    required String? imageUrl,
    required String? smallImageUrl,
    required String? mediumImageUrl,
    required String? largeImageUrl,
    required String? maximumImageUrl,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}

//enum AnimeType { MOVIE, TV }

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    int? lastVisiblePage,
    bool? hasNextPage,
    int? currentPage,
    required PaginationItems items,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

@freezed
class PaginationItems with _$PaginationItems {
  const factory PaginationItems({
    required int? count,
    required int? total,
    required int? perPage,
  }) = _PaginationItems;

  factory PaginationItems.fromJson(Map<String, dynamic> json) =>
      _$PaginationItemsFromJson(json);
}
