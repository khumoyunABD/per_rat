// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_anime_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopAnimeResponse _$TopAnimeResponseFromJson(Map<String, dynamic> json) =>
    TopAnimeResponse(
      pagination: json['pagination'] == null
          ? null
          : TopAnimePagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => Anime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopAnimeResponseToJson(TopAnimeResponse instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };

TopAnimePagination _$TopAnimePaginationFromJson(Map<String, dynamic> json) =>
    TopAnimePagination(
      lastVisiblePage: (json['lastVisiblePage'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      currentPage: (json['currentPage'] as num?)?.toInt(),
      items: json['items'] == null
          ? null
          : TopAnimePaginationItems.fromJson(
              json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TopAnimePaginationToJson(TopAnimePagination instance) =>
    <String, dynamic>{
      'lastVisiblePage': instance.lastVisiblePage,
      'hasNextPage': instance.hasNextPage,
      'currentPage': instance.currentPage,
      'items': instance.items,
    };

TopAnimePaginationItems _$TopAnimePaginationItemsFromJson(
        Map<String, dynamic> json) =>
    TopAnimePaginationItems(
      count: (json['count'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      perPage: (json['perPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TopAnimePaginationItemsToJson(
        TopAnimePaginationItems instance) =>
    <String, dynamic>{
      'count': instance.count,
      'total': instance.total,
      'perPage': instance.perPage,
    };

TopAnimeImageType _$TopAnimeImageTypeFromJson(Map<String, dynamic> json) =>
    TopAnimeImageType(
      imageUrl: json['imageUrl'] as String?,
      smallImageUrl: json['smallImageUrl'] as String?,
      largeImageUrl: json['largeImageUrl'] as String?,
    );

Map<String, dynamic> _$TopAnimeImageTypeToJson(TopAnimeImageType instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'smallImageUrl': instance.smallImageUrl,
      'largeImageUrl': instance.largeImageUrl,
    };

TopAnimeTrailer _$TopAnimeTrailerFromJson(Map<String, dynamic> json) =>
    TopAnimeTrailer(
      youtubeId: json['youtubeId'] as String?,
      url: json['url'] as String?,
      embedUrl: json['embedUrl'] as String?,
      images: json['images'] == null
          ? null
          : TopAnimeTrailerImages.fromJson(
              json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TopAnimeTrailerToJson(TopAnimeTrailer instance) =>
    <String, dynamic>{
      'youtubeId': instance.youtubeId,
      'url': instance.url,
      'embedUrl': instance.embedUrl,
      'images': instance.images,
    };

TopAnimeTrailerImages _$TopAnimeTrailerImagesFromJson(
        Map<String, dynamic> json) =>
    TopAnimeTrailerImages(
      imageUrl: json['imageUrl'] as String?,
      smallImageUrl: json['smallImageUrl'] as String?,
      mediumImageUrl: json['mediumImageUrl'] as String?,
      largeImageUrl: json['largeImageUrl'] as String?,
      maximumImageUrl: json['maximumImageUrl'] as String?,
    );

Map<String, dynamic> _$TopAnimeTrailerImagesToJson(
        TopAnimeTrailerImages instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'smallImageUrl': instance.smallImageUrl,
      'mediumImageUrl': instance.mediumImageUrl,
      'largeImageUrl': instance.largeImageUrl,
      'maximumImageUrl': instance.maximumImageUrl,
    };

TopAnimeTitleEntry _$TopAnimeTitleEntryFromJson(Map<String, dynamic> json) =>
    TopAnimeTitleEntry(
      type: json['type'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$TopAnimeTitleEntryToJson(TopAnimeTitleEntry instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
    };

TopAnimeAired _$TopAnimeAiredFromJson(Map<String, dynamic> json) =>
    TopAnimeAired(
      from:
          json['from'] == null ? null : DateTime.parse(json['from'] as String),
      to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
      prop: json['prop'] == null
          ? null
          : TopAnimeAiredProp.fromJson(json['prop'] as Map<String, dynamic>),
      string: json['string'] as String?,
    );

Map<String, dynamic> _$TopAnimeAiredToJson(TopAnimeAired instance) =>
    <String, dynamic>{
      'from': instance.from?.toIso8601String(),
      'to': instance.to?.toIso8601String(),
      'prop': instance.prop,
      'string': instance.string,
    };

TopAnimeAiredProp _$TopAnimeAiredPropFromJson(Map<String, dynamic> json) =>
    TopAnimeAiredProp(
      from: json['from'] == null
          ? null
          : TopAnimeDateInfo.fromJson(json['from'] as Map<String, dynamic>),
      to: json['to'] == null
          ? null
          : TopAnimeDateInfo.fromJson(json['to'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TopAnimeAiredPropToJson(TopAnimeAiredProp instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };

TopAnimeDateInfo _$TopAnimeDateInfoFromJson(Map<String, dynamic> json) =>
    TopAnimeDateInfo(
      day: (json['day'] as num?)?.toInt(),
      month: (json['month'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TopAnimeDateInfoToJson(TopAnimeDateInfo instance) =>
    <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
    };

TopAnimeBroadcast _$TopAnimeBroadcastFromJson(Map<String, dynamic> json) =>
    TopAnimeBroadcast(
      day: json['day'] as String?,
      time: json['time'] as String?,
      timezone: json['timezone'] as String?,
      string: json['string'] as String?,
    );

Map<String, dynamic> _$TopAnimeBroadcastToJson(TopAnimeBroadcast instance) =>
    <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'timezone': instance.timezone,
      'string': instance.string,
    };

TopAnimeMalUrl _$TopAnimeMalUrlFromJson(Map<String, dynamic> json) =>
    TopAnimeMalUrl(
      malId: (json['malId'] as num).toInt(),
      type: json['type'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$TopAnimeMalUrlToJson(TopAnimeMalUrl instance) =>
    <String, dynamic>{
      'malId': instance.malId,
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };
