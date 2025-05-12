// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_recommendation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeRecommendationResponseImpl _$$AnimeRecommendationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimeRecommendationResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => RecommendationEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnimeRecommendationResponseImplToJson(
        _$AnimeRecommendationResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$RecommendationEntryImpl _$$RecommendationEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendationEntryImpl(
      entry: AnimeEntry.fromJson(json['entry'] as Map<String, dynamic>),
      url: json['url'] as String,
      votes: (json['votes'] as num).toInt(),
    );

Map<String, dynamic> _$$RecommendationEntryImplToJson(
        _$RecommendationEntryImpl instance) =>
    <String, dynamic>{
      'entry': instance.entry,
      'url': instance.url,
      'votes': instance.votes,
    };

_$AnimeEntryImpl _$$AnimeEntryImplFromJson(Map<String, dynamic> json) =>
    _$AnimeEntryImpl(
      malId: (json['malId'] as num?)?.toInt(),
      url: json['url'] as String,
      images: AnimeImages.fromJson(json['images'] as Map<String, dynamic>),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$AnimeEntryImplToJson(_$AnimeEntryImpl instance) =>
    <String, dynamic>{
      'malId': instance.malId,
      'url': instance.url,
      'images': instance.images,
      'title': instance.title,
    };

_$AnimeImagesImpl _$$AnimeImagesImplFromJson(Map<String, dynamic> json) =>
    _$AnimeImagesImpl(
      jpg: json['jpg'] == null
          ? null
          : ImageUrls.fromJson(json['jpg'] as Map<String, dynamic>),
      webp: json['webp'] == null
          ? null
          : ImageUrls.fromJson(json['webp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnimeImagesImplToJson(_$AnimeImagesImpl instance) =>
    <String, dynamic>{
      'jpg': instance.jpg,
      'webp': instance.webp,
    };

_$ImageUrlsImpl _$$ImageUrlsImplFromJson(Map<String, dynamic> json) =>
    _$ImageUrlsImpl(
      imageUrl: json['imageUrl'] as String?,
      smallImageUrl: json['smallImageUrl'] as String?,
      largeImageUrl: json['largeImageUrl'] as String?,
    );

Map<String, dynamic> _$$ImageUrlsImplToJson(_$ImageUrlsImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'smallImageUrl': instance.smallImageUrl,
      'largeImageUrl': instance.largeImageUrl,
    };
