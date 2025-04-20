// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeResponseImpl _$$AnimeResponseImplFromJson(Map<String, dynamic> json) =>
    _$AnimeResponseImpl(
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => Anime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnimeResponseImplToJson(_$AnimeResponseImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };

_$AnimeImpl _$$AnimeImplFromJson(Map<String, dynamic> json) => _$AnimeImpl(
      malId: (json['malId'] as num?)?.toInt(),
      url: json['url'] as String,
      images: (json['images'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, ImageFormat.fromJson(e as Map<String, dynamic>)),
      ),
      trailer: Trailer.fromJson(json['trailer'] as Map<String, dynamic>),
      approved: json['approved'] as bool,
      titles: (json['titles'] as List<dynamic>?)
          ?.map((e) => Title.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      titleEnglish: json['titleEnglish'] as String?,
      titleJapanese: json['titleJapanese'] as String?,
      titleSynonyms: (json['titleSynonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      animeType: json['animeType'] as String?,
      source: json['source'] as String?,
      episodes: (json['episodes'] as num?)?.toInt(),
      status: json['status'] as String?,
      airing: json['airing'] as bool,
      aired: Aired.fromJson(json['aired'] as Map<String, dynamic>),
      duration: json['duration'] as String?,
      rating: json['rating'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      scoredBy: (json['scoredBy'] as num?)?.toInt(),
      rank: (json['rank'] as num?)?.toInt(),
      popularity: (json['popularity'] as num?)?.toInt(),
      members: (json['members'] as num?)?.toInt(),
      favorites: (json['favorites'] as num?)?.toInt(),
      synopsis: json['synopsis'] as String?,
      background: json['background'] as String?,
      season: json['season'] as String?,
      year: (json['year'] as num?)?.toInt(),
      broadcast: Broadcast.fromJson(json['broadcast'] as Map<String, dynamic>),
      producers: (json['producers'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      licensors: (json['licensors'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      studios: (json['studios'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      explicitGenres: json['explicitGenres'] as List<dynamic>?,
      themes: (json['themes'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      demographics: (json['demographics'] as List<dynamic>)
          .map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnimeImplToJson(_$AnimeImpl instance) =>
    <String, dynamic>{
      'malId': instance.malId,
      'url': instance.url,
      'images': instance.images,
      'trailer': instance.trailer,
      'approved': instance.approved,
      'titles': instance.titles,
      'title': instance.title,
      'titleEnglish': instance.titleEnglish,
      'titleJapanese': instance.titleJapanese,
      'titleSynonyms': instance.titleSynonyms,
      'animeType': instance.animeType,
      'source': instance.source,
      'episodes': instance.episodes,
      'status': instance.status,
      'airing': instance.airing,
      'aired': instance.aired,
      'duration': instance.duration,
      'rating': instance.rating,
      'score': instance.score,
      'scoredBy': instance.scoredBy,
      'rank': instance.rank,
      'popularity': instance.popularity,
      'members': instance.members,
      'favorites': instance.favorites,
      'synopsis': instance.synopsis,
      'background': instance.background,
      'season': instance.season,
      'year': instance.year,
      'broadcast': instance.broadcast,
      'producers': instance.producers,
      'licensors': instance.licensors,
      'studios': instance.studios,
      'genres': instance.genres,
      'explicitGenres': instance.explicitGenres,
      'themes': instance.themes,
      'demographics': instance.demographics,
    };

_$AiredImpl _$$AiredImplFromJson(Map<String, dynamic> json) => _$AiredImpl(
      from:
          json['from'] == null ? null : DateTime.parse(json['from'] as String),
      to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
      prop: Prop.fromJson(json['prop'] as Map<String, dynamic>),
      string: json['string'] as String?,
    );

Map<String, dynamic> _$$AiredImplToJson(_$AiredImpl instance) =>
    <String, dynamic>{
      'from': instance.from?.toIso8601String(),
      'to': instance.to?.toIso8601String(),
      'prop': instance.prop,
      'string': instance.string,
    };

_$PropImpl _$$PropImplFromJson(Map<String, dynamic> json) => _$PropImpl(
      from: json['from'] == null
          ? null
          : PropFrom.fromJson(json['from'] as Map<String, dynamic>),
      to: json['to'] == null
          ? null
          : PropFrom.fromJson(json['to'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropImplToJson(_$PropImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };

_$PropFromImpl _$$PropFromImplFromJson(Map<String, dynamic> json) =>
    _$PropFromImpl(
      day: (json['day'] as num?)?.toInt(),
      month: (json['month'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PropFromImplToJson(_$PropFromImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
    };

_$BroadcastImpl _$$BroadcastImplFromJson(Map<String, dynamic> json) =>
    _$BroadcastImpl(
      day: json['day'] as String?,
      time: json['time'] as String?,
      timezone: json['timezone'] as String?,
      string: json['string'] as String?,
    );

Map<String, dynamic> _$$BroadcastImplToJson(_$BroadcastImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'timezone': instance.timezone,
      'string': instance.string,
    };

_$DemographicImpl _$$DemographicImplFromJson(Map<String, dynamic> json) =>
    _$DemographicImpl(
      malId: (json['malId'] as num?)?.toInt(),
      type: json['type'] as String?,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$DemographicImplToJson(_$DemographicImpl instance) =>
    <String, dynamic>{
      'malId': instance.malId,
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };

_$ImageFormatImpl _$$ImageFormatImplFromJson(Map<String, dynamic> json) =>
    _$ImageFormatImpl(
      imageUrl: json['imageUrl'] as String?,
      smallImageUrl: json['smallImageUrl'] as String?,
      largeImageUrl: json['largeImageUrl'] as String?,
    );

Map<String, dynamic> _$$ImageFormatImplToJson(_$ImageFormatImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'smallImageUrl': instance.smallImageUrl,
      'largeImageUrl': instance.largeImageUrl,
    };

_$TitleImpl _$$TitleImplFromJson(Map<String, dynamic> json) => _$TitleImpl(
      titleType: json['titleType'] as String?,
      titleName: json['titleName'] as String?,
    );

Map<String, dynamic> _$$TitleImplToJson(_$TitleImpl instance) =>
    <String, dynamic>{
      'titleType': instance.titleType,
      'titleName': instance.titleName,
    };

_$TrailerImpl _$$TrailerImplFromJson(Map<String, dynamic> json) =>
    _$TrailerImpl(
      youtubeId: json['youtubeId'] as String?,
      url: json['url'] as String?,
      embedUrl: json['embedUrl'] as String?,
      images: json['images'] == null
          ? null
          : Images.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrailerImplToJson(_$TrailerImpl instance) =>
    <String, dynamic>{
      'youtubeId': instance.youtubeId,
      'url': instance.url,
      'embedUrl': instance.embedUrl,
      'images': instance.images,
    };

_$ImagesImpl _$$ImagesImplFromJson(Map<String, dynamic> json) => _$ImagesImpl(
      imageUrl: json['imageUrl'] as String?,
      smallImageUrl: json['smallImageUrl'] as String?,
      mediumImageUrl: json['mediumImageUrl'] as String?,
      largeImageUrl: json['largeImageUrl'] as String?,
      maximumImageUrl: json['maximumImageUrl'] as String?,
    );

Map<String, dynamic> _$$ImagesImplToJson(_$ImagesImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'smallImageUrl': instance.smallImageUrl,
      'mediumImageUrl': instance.mediumImageUrl,
      'largeImageUrl': instance.largeImageUrl,
      'maximumImageUrl': instance.maximumImageUrl,
    };

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      lastVisiblePage: (json['lastVisiblePage'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      currentPage: (json['currentPage'] as num?)?.toInt(),
      items: PaginationItems.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'lastVisiblePage': instance.lastVisiblePage,
      'hasNextPage': instance.hasNextPage,
      'currentPage': instance.currentPage,
      'items': instance.items,
    };

_$PaginationItemsImpl _$$PaginationItemsImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationItemsImpl(
      count: (json['count'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      perPage: (json['perPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationItemsImplToJson(
        _$PaginationItemsImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'total': instance.total,
      'perPage': instance.perPage,
    };
