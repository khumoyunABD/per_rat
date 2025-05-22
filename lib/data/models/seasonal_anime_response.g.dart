// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasonal_anime_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeasonalAnimeResponseImpl _$$SeasonalAnimeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SeasonalAnimeResponseImpl(
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => Anime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SeasonalAnimeResponseImplToJson(
        _$SeasonalAnimeResponseImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
