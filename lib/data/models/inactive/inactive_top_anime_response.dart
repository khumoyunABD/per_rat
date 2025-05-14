// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'top_anime_response.freezed.dart';
// part 'top_anime_response.g.dart';

// @freezed
// class TopAnimeResponse with _$TopAnimeResponse {
//   const factory TopAnimeResponse({
//     required Pagination pagination,
//     required List<AnimeData> data,
//   }) = _TopAnimeResponse;

//   factory TopAnimeResponse.fromJson(Map<String, dynamic> json) =>
//       _$TopAnimeResponseFromJson(json);
// }

// @freezed
// class Pagination with _$Pagination {
//   const factory Pagination({
//     required int lastVisiblePage,
//     required bool hasNextPage,
//     required int currentPage,
//     required PaginationItems items,
//   }) = _Pagination;

//   factory Pagination.fromJson(Map<String, dynamic> json) =>
//       _$PaginationFromJson(json);
// }

// @freezed
// class PaginationItems with _$PaginationItems {
//   const factory PaginationItems({
//     required int count,
//     required int total,
//     required int perPage,
//   }) = _PaginationItems;

//   factory PaginationItems.fromJson(Map<String, dynamic> json) =>
//       _$PaginationItemsFromJson(json);
// }

// @freezed
// class AnimeData with _$AnimeData {
//   const factory AnimeData({
//     required int malId,
//     required String url,
//     required Map<String, ImageType> images,
//     Trailer? trailer,
//     required bool approved,
//     required List<TitleEntry> titles,
//     required String? title,
//     String? titleEnglish,
//     String? titleJapanese,
//     required List<String> titleSynonyms,
//     String? type,
//     String? source,
//     int? episodes,
//     String? status,
//     required bool airing,
//     Aired? aired,
//     String? duration,
//     String? rating,
//     double? score,
//     int? scoredBy,
//     int? rank,
//     int? popularity,
//     int? members,
//     int? favorites,
//     String? synopsis,
//     String? background,
//     String? season,
//     int? year,
//     Broadcast? broadcast,
//     required List<MalUrl> producers,
//     required List<MalUrl> licensors,
//     required List<MalUrl> studios,
//     required List<MalUrl> genres,
//     required List<MalUrl> explicitGenres,
//     required List<MalUrl> themes,
//     required List<MalUrl> demographics,
//   }) = _AnimeData;

//   factory AnimeData.fromJson(Map<String, dynamic> json) =>
//       _$AnimeDataFromJson(json);
// }

// @freezed
// class ImageType with _$ImageType {
//   const factory ImageType({
//     String? imageUrl,
//     String? smallImageUrl,
//     String? largeImageUrl,
//   }) = _ImageType;

//   factory ImageType.fromJson(Map<String, dynamic> json) =>
//       _$ImageTypeFromJson(json);
// }

// @freezed
// class Trailer with _$Trailer {
//   const factory Trailer({
//     String? youtubeId,
//     String? url,
//     String? embedUrl,
//     TrailerImages? images,
//   }) = _Trailer;

//   factory Trailer.fromJson(Map<String, dynamic> json) =>
//       _$TrailerFromJson(json);
// }

// @freezed
// class TrailerImages with _$TrailerImages {
//   const factory TrailerImages({
//     String? imageUrl,
//     String? smallImageUrl,
//     String? mediumImageUrl,
//     String? largeImageUrl,
//     String? maximumImageUrl,
//   }) = _TrailerImages;

//   factory TrailerImages.fromJson(Map<String, dynamic> json) =>
//       _$TrailerImagesFromJson(json);
// }

// @freezed
// class TitleEntry with _$TitleEntry {
//   const factory TitleEntry({
//     required String type,
//     required String title,
//   }) = _TitleEntry;

//   factory TitleEntry.fromJson(Map<String, dynamic> json) =>
//       _$TitleEntryFromJson(json);
// }

// @freezed
// class Aired with _$Aired {
//   const factory Aired({
//     DateTime? from,
//     DateTime? to,
//     AiredProp? prop,
//     String? string,
//   }) = _Aired;

//   factory Aired.fromJson(Map<String, dynamic> json) => _$AiredFromJson(json);
// }

// @freezed
// class AiredProp with _$AiredProp {
//   const factory AiredProp({
//     DateInfo? from,
//     DateInfo? to,
//   }) = _AiredProp;

//   factory AiredProp.fromJson(Map<String, dynamic> json) =>
//       _$AiredPropFromJson(json);
// }

// @freezed
// class DateInfo with _$DateInfo {
//   const factory DateInfo({
//     int? day,
//     int? month,
//     int? year,
//   }) = _DateInfo;

//   factory DateInfo.fromJson(Map<String, dynamic> json) =>
//       _$DateInfoFromJson(json);
// }

// @freezed
// class Broadcast with _$Broadcast {
//   const factory Broadcast({
//     String? day,
//     String? time,
//     String? timezone,
//     String? string,
//   }) = _Broadcast;

//   factory Broadcast.fromJson(Map<String, dynamic> json) =>
//       _$BroadcastFromJson(json);
// }

// @freezed
// class MalUrl with _$MalUrl {
//   const factory MalUrl({
//     required int malId,
//     required String type,
//     required String name,
//     required String url,
//   }) = _MalUrl;

//   factory MalUrl.fromJson(Map<String, dynamic> json) => _$MalUrlFromJson(json);
// }
