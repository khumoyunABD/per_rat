import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:per_rat/data/models/models.dart';

part 'top_anime_response.g.dart';

@JsonSerializable()
class TopAnimeResponse extends Equatable {
  final TopAnimePagination? pagination;
  final List<Anime> data;

  const TopAnimeResponse({
    this.pagination,
    required this.data,
  });

  factory TopAnimeResponse.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimeResponseToJson(this);

  @override
  List<Object?> get props => [pagination, data];
}

@JsonSerializable()
class TopAnimePagination extends Equatable {
  final int? lastVisiblePage;
  final bool? hasNextPage;
  final int? currentPage;
  final TopAnimePaginationItems? items;

  const TopAnimePagination({
    this.lastVisiblePage,
    this.hasNextPage,
    this.currentPage,
    this.items,
  });

  factory TopAnimePagination.fromJson(Map<String, dynamic> json) =>
      _$TopAnimePaginationFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimePaginationToJson(this);

  @override
  List<Object?> get props => [lastVisiblePage, hasNextPage, currentPage, items];
}

@JsonSerializable()
class TopAnimePaginationItems extends Equatable {
  final int? count;
  final int? total;
  final int? perPage;

  const TopAnimePaginationItems({
    this.count,
    this.total,
    this.perPage,
  });

  factory TopAnimePaginationItems.fromJson(Map<String, dynamic> json) =>
      _$TopAnimePaginationItemsFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimePaginationItemsToJson(this);

  @override
  List<Object?> get props => [count, total, perPage];
}

@JsonSerializable()
class TopAnimeImageType extends Equatable {
  final String? imageUrl;
  final String? smallImageUrl;
  final String? largeImageUrl;

  const TopAnimeImageType({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  factory TopAnimeImageType.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeImageTypeFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimeImageTypeToJson(this);

  @override
  List<Object?> get props => [imageUrl, smallImageUrl, largeImageUrl];
}

@JsonSerializable()
class TopAnimeTrailer extends Equatable {
  final String? youtubeId;
  final String? url;
  final String? embedUrl;
  final TopAnimeTrailerImages? images;

  const TopAnimeTrailer({
    this.youtubeId,
    this.url,
    this.embedUrl,
    this.images,
  });

  factory TopAnimeTrailer.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeTrailerFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimeTrailerToJson(this);

  @override
  List<Object?> get props => [youtubeId, url, embedUrl, images];
}

@JsonSerializable()
class TopAnimeTrailerImages extends Equatable {
  final String? imageUrl;
  final String? smallImageUrl;
  final String? mediumImageUrl;
  final String? largeImageUrl;
  final String? maximumImageUrl;

  const TopAnimeTrailerImages({
    this.imageUrl,
    this.smallImageUrl,
    this.mediumImageUrl,
    this.largeImageUrl,
    this.maximumImageUrl,
  });

  factory TopAnimeTrailerImages.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeTrailerImagesFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimeTrailerImagesToJson(this);

  @override
  List<Object?> get props => [
        imageUrl,
        smallImageUrl,
        mediumImageUrl,
        largeImageUrl,
        maximumImageUrl,
      ];
}

@JsonSerializable()
class TopAnimeTitleEntry extends Equatable {
  final String type;
  final String title;

  const TopAnimeTitleEntry({
    required this.type,
    required this.title,
  });

  factory TopAnimeTitleEntry.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeTitleEntryFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimeTitleEntryToJson(this);

  @override
  List<Object?> get props => [type, title];
}

@JsonSerializable()
class TopAnimeAired extends Equatable {
  final DateTime? from;
  final DateTime? to;
  final TopAnimeAiredProp? prop;
  final String? string;

  const TopAnimeAired({
    this.from,
    this.to,
    this.prop,
    this.string,
  });

  factory TopAnimeAired.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeAiredFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimeAiredToJson(this);

  @override
  List<Object?> get props => [from, to, prop, string];
}

@JsonSerializable()
class TopAnimeAiredProp extends Equatable {
  final TopAnimeDateInfo? from;
  final TopAnimeDateInfo? to;

  const TopAnimeAiredProp({
    this.from,
    this.to,
  });

  factory TopAnimeAiredProp.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeAiredPropFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimeAiredPropToJson(this);

  @override
  List<Object?> get props => [from, to];
}

@JsonSerializable()
class TopAnimeDateInfo extends Equatable {
  final int? day;
  final int? month;
  final int? year;

  const TopAnimeDateInfo({
    this.day,
    this.month,
    this.year,
  });

  factory TopAnimeDateInfo.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeDateInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimeDateInfoToJson(this);

  @override
  List<Object?> get props => [day, month, year];
}

@JsonSerializable()
class TopAnimeBroadcast extends Equatable {
  final String? day;
  final String? time;
  final String? timezone;
  final String? string;

  const TopAnimeBroadcast({
    this.day,
    this.time,
    this.timezone,
    this.string,
  });

  factory TopAnimeBroadcast.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeBroadcastFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimeBroadcastToJson(this);

  @override
  List<Object?> get props => [day, time, timezone, string];
}

@JsonSerializable()
class TopAnimeMalUrl extends Equatable {
  final int malId;
  final String type;
  final String name;
  final String url;

  const TopAnimeMalUrl({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });

  factory TopAnimeMalUrl.fromJson(Map<String, dynamic> json) =>
      _$TopAnimeMalUrlFromJson(json);

  Map<String, dynamic> toJson() => _$TopAnimeMalUrlToJson(this);

  @override
  List<Object?> get props => [malId, type, name, url];
}
