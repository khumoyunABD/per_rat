// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:intl/intl.dart';

// part 'anime_model.freezed.dart';
// part 'anime_model.g.dart';

// final formatter = DateFormat.yMd();
// final formatterMY = DateFormat.yM();

// @freezed
// class AnimeResponse with _$AnimeResponse {
//   const factory AnimeResponse({
//     required Pagination pagination,
//     required List<Anime> data,
//   }) = _AnimeResponse;

//   factory AnimeResponse.fromJson(Map<String, dynamic> json) =>
//       _$AnimeResponseFromJson(json);
// }

// @freezed
// class Pagination with _$Pagination {
//   const factory Pagination({
//     int? lastVisiblePage, // Made nullable
//     bool? hasNextPage,
//     int? currentPage, // Made nullable
//     PaginationItems? items,
//   }) = _Pagination;

//   factory Pagination.fromJson(Map<String, dynamic> json) =>
//       _$PaginationFromJson(json);
// }

// @freezed
// class PaginationItems with _$PaginationItems {
//   const factory PaginationItems({
//     int? count, // Made nullable
//     int? total, // Made nullable
//     int? perPage, // Made nullable
//   }) = _PaginationItems;

//   factory PaginationItems.fromJson(Map<String, dynamic> json) =>
//       _$PaginationItemsFromJson(json);
// }

// @freezed
// class Anime with _$Anime {
//   const Anime._();

//   const factory Anime({
//     int? malId,
//     String? url,
//     required Images images,
//     Trailer? trailer,
//     bool? approved,
//     List<Title>? titles,
//     required String title,
//     String? titleEnglish,
//     String? titleJapanese,
//     List<String>? titleSynonyms,
//     String? type,
//     String? source,
//     int? episodes,
//     required String status,
//     required bool airing,
//     required Aired aired,
//     required String duration,
//     required String rating,
//     double? score, // Changed to nullable
//     int? scoredBy, // Changed to nullable
//     int? rank, // Changed to nullable
//     int? popularity, // Changed to nullable
//     int? members, // Changed to nullable
//     int? favorites, // Changed to nullable
//     String? synopsis,
//     String? background,
//     String? season,
//     int? year,
//     Broadcast? broadcast,
//     List<Producer>? producers, // Made list nullable
//     List<Licensor>? licensors, // Made list nullable
//     List<Studio>? studios, // Made list nullable
//     List<Genre>? genres, // Made list nullable
//     List<dynamic>? explicitGenres, // Made list nullable
//     List<Theme>? themes, // Made list nullable
//     List<Demographic>? demographics, // Made list nullable
//   }) = _Anime;

//   factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);

//   String get formattedStartDate {
//     final date = aired.prop?.from?.toDateTime();
//     if (date != null) {
//       return formatter.format(date);
//     }
//     return 'N/A';
//   }

//   String get formattedEndDate {
//     final date = aired.prop?.to?.toDateTime();
//     if (date != null) {
//       return formatter.format(date);
//     }
//     return 'N/A';
//   }

//   String get mainImageUrl => images.jpg?.imageUrl ?? '';

//   String get trailerUrl => trailer?.url ?? '';

//   String get mainStudio =>
//       studios != null && studios!.isNotEmpty && studios!.first.name != null
//           ? studios!.first.name!
//           : 'Unknown';

//   List<String> get genreNames =>
//       genres != null ? genres!.map((g) => g.name ?? '').toList() : [];

//   String get demographicName => demographics != null &&
//           demographics!.isNotEmpty &&
//           demographics!.first.name != null
//       ? demographics!.first.name!
//       : '';
// }

// @freezed
// class Images with _$Images {
//   const factory Images({
//     ImageFormat? jpg,
//     ImageFormat? webp,
//   }) = _Images;

//   factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
// }

// @freezed
// class ImageFormat with _$ImageFormat {
//   const factory ImageFormat({
//     String? imageUrl,
//     String? smallImageUrl,
//     String? largeImageUrl,
//   }) = _ImageFormat;

//   factory ImageFormat.fromJson(Map<String, dynamic> json) =>
//       _$ImageFormatFromJson(json);
// }

// @freezed
// class Trailer with _$Trailer {
//   const factory Trailer({
//     String? youtubeId,
//     String? url,
//     String? embedUrl,
//     required TrailerImages? images,
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
// class Title with _$Title {
//   const factory Title({
//     String? type,
//     String? title,
//   }) = _Title;

//   factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
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
//     AiredDate? from,
//     AiredDate? to,
//   }) = _AiredProp;

//   factory AiredProp.fromJson(Map<String, dynamic> json) =>
//       _$AiredPropFromJson(json);
// }

// @freezed
// class AiredDate with _$AiredDate {
//   const AiredDate._();

//   const factory AiredDate({
//     int? day,
//     int? month,
//     int? year,
//   }) = _AiredDate;

//   factory AiredDate.fromJson(Map<String, dynamic> json) =>
//       _$AiredDateFromJson(json);

//   DateTime? toDateTime() {
//     if (year == null) return null;
//     return DateTime(
//       year!,
//       month ?? 1,
//       day ?? 1,
//     );
//   }
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
// class Producer with _$Producer {
//   const factory Producer({
//     int? malId,
//     String? type,
//     String? name,
//     String? url,
//   }) = _Producer;

//   factory Producer.fromJson(Map<String, dynamic> json) =>
//       _$ProducerFromJson(json);
// }

// @freezed
// class Licensor with _$Licensor {
//   const factory Licensor({
//     int? malId,
//     String? type,
//     String? name,
//     String? url,
//   }) = _Licensor;

//   factory Licensor.fromJson(Map<String, dynamic> json) =>
//       _$LicensorFromJson(json);
// }

// @freezed
// class Studio with _$Studio {
//   const factory Studio({
//     int? malId,
//     String? type,
//     String? name,
//     String? url,
//   }) = _Studio;

//   factory Studio.fromJson(Map<String, dynamic> json) => _$StudioFromJson(json);
// }

// @freezed
// class Genre with _$Genre {
//   const factory Genre({
//     int? malId,
//     String? type,
//     String? name,
//     String? url,
//   }) = _Genre;

//   factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
// }

// @freezed
// class Theme with _$Theme {
//   const factory Theme({
//     int? malId,
//     String? type,
//     String? name,
//     String? url,
//   }) = _Theme;

//   factory Theme.fromJson(Map<String, dynamic> json) => _$ThemeFromJson(json);
// }

// @freezed
// class Demographic with _$Demographic {
//   const factory Demographic({
//     int? malId,
//     String? type,
//     String? name,
//     String? url,
//   }) = _Demographic;

//   factory Demographic.fromJson(Map<String, dynamic> json) =>
//       _$DemographicFromJson(json);
// }
