// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnimeResponse _$AnimeResponseFromJson(Map<String, dynamic> json) {
  return _AnimeResponse.fromJson(json);
}

/// @nodoc
mixin _$AnimeResponse {
  Pagination get pagination => throw _privateConstructorUsedError;
  List<Anime> get data => throw _privateConstructorUsedError;

  /// Serializes this AnimeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimeResponseCopyWith<AnimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeResponseCopyWith<$Res> {
  factory $AnimeResponseCopyWith(
          AnimeResponse value, $Res Function(AnimeResponse) then) =
      _$AnimeResponseCopyWithImpl<$Res, AnimeResponse>;
  @useResult
  $Res call({Pagination pagination, List<Anime> data});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$AnimeResponseCopyWithImpl<$Res, $Val extends AnimeResponse>
    implements $AnimeResponseCopyWith<$Res> {
  _$AnimeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
    ) as $Val);
  }

  /// Create a copy of AnimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnimeResponseImplCopyWith<$Res>
    implements $AnimeResponseCopyWith<$Res> {
  factory _$$AnimeResponseImplCopyWith(
          _$AnimeResponseImpl value, $Res Function(_$AnimeResponseImpl) then) =
      __$$AnimeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pagination pagination, List<Anime> data});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$AnimeResponseImplCopyWithImpl<$Res>
    extends _$AnimeResponseCopyWithImpl<$Res, _$AnimeResponseImpl>
    implements _$$AnimeResponseImplCopyWith<$Res> {
  __$$AnimeResponseImplCopyWithImpl(
      _$AnimeResponseImpl _value, $Res Function(_$AnimeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? data = null,
  }) {
    return _then(_$AnimeResponseImpl(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimeResponseImpl implements _AnimeResponse {
  const _$AnimeResponseImpl(
      {required this.pagination, required final List<Anime> data})
      : _data = data;

  factory _$AnimeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimeResponseImplFromJson(json);

  @override
  final Pagination pagination;
  final List<Anime> _data;
  @override
  List<Anime> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AnimeResponse(pagination: $pagination, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeResponseImpl &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, pagination, const DeepCollectionEquality().hash(_data));

  /// Create a copy of AnimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeResponseImplCopyWith<_$AnimeResponseImpl> get copyWith =>
      __$$AnimeResponseImplCopyWithImpl<_$AnimeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimeResponseImplToJson(
      this,
    );
  }
}

abstract class _AnimeResponse implements AnimeResponse {
  const factory _AnimeResponse(
      {required final Pagination pagination,
      required final List<Anime> data}) = _$AnimeResponseImpl;

  factory _AnimeResponse.fromJson(Map<String, dynamic> json) =
      _$AnimeResponseImpl.fromJson;

  @override
  Pagination get pagination;
  @override
  List<Anime> get data;

  /// Create a copy of AnimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimeResponseImplCopyWith<_$AnimeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Anime _$AnimeFromJson(Map<String, dynamic> json) {
  return _Anime.fromJson(json);
}

/// @nodoc
mixin _$Anime {
  @JsonKey(name: 'mal_id')
  int? get malId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  Map<String, ImageFormat> get images => throw _privateConstructorUsedError;
  Trailer get trailer => throw _privateConstructorUsedError;
  bool get approved => throw _privateConstructorUsedError;
  List<Title>? get titles => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_english')
  String? get titleEnglish => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_japanese')
  String? get titleJapanese => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_synonyms')
  List<String>? get titleSynonyms => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get animeType => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  int? get episodes => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool get airing => throw _privateConstructorUsedError;
  Aired get aired => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'scored_by')
  int? get scoredBy => throw _privateConstructorUsedError;
  int? get rank => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  int? get members => throw _privateConstructorUsedError;
  int? get favorites => throw _privateConstructorUsedError;
  String? get synopsis => throw _privateConstructorUsedError;
  String? get background => throw _privateConstructorUsedError;
  String? get season => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  Broadcast get broadcast => throw _privateConstructorUsedError;
  List<Demographic> get producers => throw _privateConstructorUsedError;
  List<Demographic> get licensors => throw _privateConstructorUsedError;
  List<Demographic> get studios => throw _privateConstructorUsedError;
  List<Demographic> get genres => throw _privateConstructorUsedError;
  @JsonKey(name: 'explicit_genres')
  List<dynamic>? get explicitGenres => throw _privateConstructorUsedError;
  List<Demographic> get themes => throw _privateConstructorUsedError;
  List<Demographic> get demographics => throw _privateConstructorUsedError;

  /// Serializes this Anime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Anime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimeCopyWith<Anime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeCopyWith<$Res> {
  factory $AnimeCopyWith(Anime value, $Res Function(Anime) then) =
      _$AnimeCopyWithImpl<$Res, Anime>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mal_id') int? malId,
      String url,
      Map<String, ImageFormat> images,
      Trailer trailer,
      bool approved,
      List<Title>? titles,
      String title,
      @JsonKey(name: 'title_english') String? titleEnglish,
      @JsonKey(name: 'title_japanese') String? titleJapanese,
      @JsonKey(name: 'title_synonyms') List<String>? titleSynonyms,
      @JsonKey(name: 'type') String? animeType,
      String? source,
      int? episodes,
      String? status,
      bool airing,
      Aired aired,
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
      Broadcast broadcast,
      List<Demographic> producers,
      List<Demographic> licensors,
      List<Demographic> studios,
      List<Demographic> genres,
      @JsonKey(name: 'explicit_genres') List<dynamic>? explicitGenres,
      List<Demographic> themes,
      List<Demographic> demographics});

  $TrailerCopyWith<$Res> get trailer;
  $AiredCopyWith<$Res> get aired;
  $BroadcastCopyWith<$Res> get broadcast;
}

/// @nodoc
class _$AnimeCopyWithImpl<$Res, $Val extends Anime>
    implements $AnimeCopyWith<$Res> {
  _$AnimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Anime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malId = freezed,
    Object? url = null,
    Object? images = null,
    Object? trailer = null,
    Object? approved = null,
    Object? titles = freezed,
    Object? title = null,
    Object? titleEnglish = freezed,
    Object? titleJapanese = freezed,
    Object? titleSynonyms = freezed,
    Object? animeType = freezed,
    Object? source = freezed,
    Object? episodes = freezed,
    Object? status = freezed,
    Object? airing = null,
    Object? aired = null,
    Object? duration = freezed,
    Object? rating = freezed,
    Object? score = freezed,
    Object? scoredBy = freezed,
    Object? rank = freezed,
    Object? popularity = freezed,
    Object? members = freezed,
    Object? favorites = freezed,
    Object? synopsis = freezed,
    Object? background = freezed,
    Object? season = freezed,
    Object? year = freezed,
    Object? broadcast = null,
    Object? producers = null,
    Object? licensors = null,
    Object? studios = null,
    Object? genres = null,
    Object? explicitGenres = freezed,
    Object? themes = null,
    Object? demographics = null,
  }) {
    return _then(_value.copyWith(
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, ImageFormat>,
      trailer: null == trailer
          ? _value.trailer
          : trailer // ignore: cast_nullable_to_non_nullable
              as Trailer,
      approved: null == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as bool,
      titles: freezed == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<Title>?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleEnglish: freezed == titleEnglish
          ? _value.titleEnglish
          : titleEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      titleJapanese: freezed == titleJapanese
          ? _value.titleJapanese
          : titleJapanese // ignore: cast_nullable_to_non_nullable
              as String?,
      titleSynonyms: freezed == titleSynonyms
          ? _value.titleSynonyms
          : titleSynonyms // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      animeType: freezed == animeType
          ? _value.animeType
          : animeType // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      episodes: freezed == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      airing: null == airing
          ? _value.airing
          : airing // ignore: cast_nullable_to_non_nullable
              as bool,
      aired: null == aired
          ? _value.aired
          : aired // ignore: cast_nullable_to_non_nullable
              as Aired,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      scoredBy: freezed == scoredBy
          ? _value.scoredBy
          : scoredBy // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as int?,
      favorites: freezed == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int?,
      synopsis: freezed == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      broadcast: null == broadcast
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as Broadcast,
      producers: null == producers
          ? _value.producers
          : producers // ignore: cast_nullable_to_non_nullable
              as List<Demographic>,
      licensors: null == licensors
          ? _value.licensors
          : licensors // ignore: cast_nullable_to_non_nullable
              as List<Demographic>,
      studios: null == studios
          ? _value.studios
          : studios // ignore: cast_nullable_to_non_nullable
              as List<Demographic>,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Demographic>,
      explicitGenres: freezed == explicitGenres
          ? _value.explicitGenres
          : explicitGenres // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      themes: null == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<Demographic>,
      demographics: null == demographics
          ? _value.demographics
          : demographics // ignore: cast_nullable_to_non_nullable
              as List<Demographic>,
    ) as $Val);
  }

  /// Create a copy of Anime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrailerCopyWith<$Res> get trailer {
    return $TrailerCopyWith<$Res>(_value.trailer, (value) {
      return _then(_value.copyWith(trailer: value) as $Val);
    });
  }

  /// Create a copy of Anime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AiredCopyWith<$Res> get aired {
    return $AiredCopyWith<$Res>(_value.aired, (value) {
      return _then(_value.copyWith(aired: value) as $Val);
    });
  }

  /// Create a copy of Anime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BroadcastCopyWith<$Res> get broadcast {
    return $BroadcastCopyWith<$Res>(_value.broadcast, (value) {
      return _then(_value.copyWith(broadcast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnimeImplCopyWith<$Res> implements $AnimeCopyWith<$Res> {
  factory _$$AnimeImplCopyWith(
          _$AnimeImpl value, $Res Function(_$AnimeImpl) then) =
      __$$AnimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mal_id') int? malId,
      String url,
      Map<String, ImageFormat> images,
      Trailer trailer,
      bool approved,
      List<Title>? titles,
      String title,
      @JsonKey(name: 'title_english') String? titleEnglish,
      @JsonKey(name: 'title_japanese') String? titleJapanese,
      @JsonKey(name: 'title_synonyms') List<String>? titleSynonyms,
      @JsonKey(name: 'type') String? animeType,
      String? source,
      int? episodes,
      String? status,
      bool airing,
      Aired aired,
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
      Broadcast broadcast,
      List<Demographic> producers,
      List<Demographic> licensors,
      List<Demographic> studios,
      List<Demographic> genres,
      @JsonKey(name: 'explicit_genres') List<dynamic>? explicitGenres,
      List<Demographic> themes,
      List<Demographic> demographics});

  @override
  $TrailerCopyWith<$Res> get trailer;
  @override
  $AiredCopyWith<$Res> get aired;
  @override
  $BroadcastCopyWith<$Res> get broadcast;
}

/// @nodoc
class __$$AnimeImplCopyWithImpl<$Res>
    extends _$AnimeCopyWithImpl<$Res, _$AnimeImpl>
    implements _$$AnimeImplCopyWith<$Res> {
  __$$AnimeImplCopyWithImpl(
      _$AnimeImpl _value, $Res Function(_$AnimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Anime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malId = freezed,
    Object? url = null,
    Object? images = null,
    Object? trailer = null,
    Object? approved = null,
    Object? titles = freezed,
    Object? title = null,
    Object? titleEnglish = freezed,
    Object? titleJapanese = freezed,
    Object? titleSynonyms = freezed,
    Object? animeType = freezed,
    Object? source = freezed,
    Object? episodes = freezed,
    Object? status = freezed,
    Object? airing = null,
    Object? aired = null,
    Object? duration = freezed,
    Object? rating = freezed,
    Object? score = freezed,
    Object? scoredBy = freezed,
    Object? rank = freezed,
    Object? popularity = freezed,
    Object? members = freezed,
    Object? favorites = freezed,
    Object? synopsis = freezed,
    Object? background = freezed,
    Object? season = freezed,
    Object? year = freezed,
    Object? broadcast = null,
    Object? producers = null,
    Object? licensors = null,
    Object? studios = null,
    Object? genres = null,
    Object? explicitGenres = freezed,
    Object? themes = null,
    Object? demographics = null,
  }) {
    return _then(_$AnimeImpl(
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, ImageFormat>,
      trailer: null == trailer
          ? _value.trailer
          : trailer // ignore: cast_nullable_to_non_nullable
              as Trailer,
      approved: null == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as bool,
      titles: freezed == titles
          ? _value._titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<Title>?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleEnglish: freezed == titleEnglish
          ? _value.titleEnglish
          : titleEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      titleJapanese: freezed == titleJapanese
          ? _value.titleJapanese
          : titleJapanese // ignore: cast_nullable_to_non_nullable
              as String?,
      titleSynonyms: freezed == titleSynonyms
          ? _value._titleSynonyms
          : titleSynonyms // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      animeType: freezed == animeType
          ? _value.animeType
          : animeType // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      episodes: freezed == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      airing: null == airing
          ? _value.airing
          : airing // ignore: cast_nullable_to_non_nullable
              as bool,
      aired: null == aired
          ? _value.aired
          : aired // ignore: cast_nullable_to_non_nullable
              as Aired,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      scoredBy: freezed == scoredBy
          ? _value.scoredBy
          : scoredBy // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as int?,
      favorites: freezed == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as int?,
      synopsis: freezed == synopsis
          ? _value.synopsis
          : synopsis // ignore: cast_nullable_to_non_nullable
              as String?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      broadcast: null == broadcast
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as Broadcast,
      producers: null == producers
          ? _value._producers
          : producers // ignore: cast_nullable_to_non_nullable
              as List<Demographic>,
      licensors: null == licensors
          ? _value._licensors
          : licensors // ignore: cast_nullable_to_non_nullable
              as List<Demographic>,
      studios: null == studios
          ? _value._studios
          : studios // ignore: cast_nullable_to_non_nullable
              as List<Demographic>,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Demographic>,
      explicitGenres: freezed == explicitGenres
          ? _value._explicitGenres
          : explicitGenres // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      themes: null == themes
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<Demographic>,
      demographics: null == demographics
          ? _value._demographics
          : demographics // ignore: cast_nullable_to_non_nullable
              as List<Demographic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimeImpl extends _Anime {
  const _$AnimeImpl(
      {@JsonKey(name: 'mal_id') this.malId,
      required this.url,
      required final Map<String, ImageFormat> images,
      required this.trailer,
      required this.approved,
      final List<Title>? titles,
      required this.title,
      @JsonKey(name: 'title_english') this.titleEnglish,
      @JsonKey(name: 'title_japanese') this.titleJapanese,
      @JsonKey(name: 'title_synonyms') final List<String>? titleSynonyms,
      @JsonKey(name: 'type') this.animeType,
      this.source,
      this.episodes,
      this.status,
      required this.airing,
      required this.aired,
      this.duration,
      this.rating,
      this.score,
      @JsonKey(name: 'scored_by') this.scoredBy,
      this.rank,
      this.popularity,
      this.members,
      this.favorites,
      this.synopsis,
      this.background,
      this.season,
      this.year,
      required this.broadcast,
      required final List<Demographic> producers,
      required final List<Demographic> licensors,
      required final List<Demographic> studios,
      required final List<Demographic> genres,
      @JsonKey(name: 'explicit_genres') final List<dynamic>? explicitGenres,
      required final List<Demographic> themes,
      required final List<Demographic> demographics})
      : _images = images,
        _titles = titles,
        _titleSynonyms = titleSynonyms,
        _producers = producers,
        _licensors = licensors,
        _studios = studios,
        _genres = genres,
        _explicitGenres = explicitGenres,
        _themes = themes,
        _demographics = demographics,
        super._();

  factory _$AnimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimeImplFromJson(json);

  @override
  @JsonKey(name: 'mal_id')
  final int? malId;
  @override
  final String url;
  final Map<String, ImageFormat> _images;
  @override
  Map<String, ImageFormat> get images {
    if (_images is EqualUnmodifiableMapView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_images);
  }

  @override
  final Trailer trailer;
  @override
  final bool approved;
  final List<Title>? _titles;
  @override
  List<Title>? get titles {
    final value = _titles;
    if (value == null) return null;
    if (_titles is EqualUnmodifiableListView) return _titles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String title;
  @override
  @JsonKey(name: 'title_english')
  final String? titleEnglish;
  @override
  @JsonKey(name: 'title_japanese')
  final String? titleJapanese;
  final List<String>? _titleSynonyms;
  @override
  @JsonKey(name: 'title_synonyms')
  List<String>? get titleSynonyms {
    final value = _titleSynonyms;
    if (value == null) return null;
    if (_titleSynonyms is EqualUnmodifiableListView) return _titleSynonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'type')
  final String? animeType;
  @override
  final String? source;
  @override
  final int? episodes;
  @override
  final String? status;
  @override
  final bool airing;
  @override
  final Aired aired;
  @override
  final String? duration;
  @override
  final String? rating;
  @override
  final double? score;
  @override
  @JsonKey(name: 'scored_by')
  final int? scoredBy;
  @override
  final int? rank;
  @override
  final int? popularity;
  @override
  final int? members;
  @override
  final int? favorites;
  @override
  final String? synopsis;
  @override
  final String? background;
  @override
  final String? season;
  @override
  final int? year;
  @override
  final Broadcast broadcast;
  final List<Demographic> _producers;
  @override
  List<Demographic> get producers {
    if (_producers is EqualUnmodifiableListView) return _producers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_producers);
  }

  final List<Demographic> _licensors;
  @override
  List<Demographic> get licensors {
    if (_licensors is EqualUnmodifiableListView) return _licensors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_licensors);
  }

  final List<Demographic> _studios;
  @override
  List<Demographic> get studios {
    if (_studios is EqualUnmodifiableListView) return _studios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studios);
  }

  final List<Demographic> _genres;
  @override
  List<Demographic> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<dynamic>? _explicitGenres;
  @override
  @JsonKey(name: 'explicit_genres')
  List<dynamic>? get explicitGenres {
    final value = _explicitGenres;
    if (value == null) return null;
    if (_explicitGenres is EqualUnmodifiableListView) return _explicitGenres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Demographic> _themes;
  @override
  List<Demographic> get themes {
    if (_themes is EqualUnmodifiableListView) return _themes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  final List<Demographic> _demographics;
  @override
  List<Demographic> get demographics {
    if (_demographics is EqualUnmodifiableListView) return _demographics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_demographics);
  }

  @override
  String toString() {
    return 'Anime(malId: $malId, url: $url, images: $images, trailer: $trailer, approved: $approved, titles: $titles, title: $title, titleEnglish: $titleEnglish, titleJapanese: $titleJapanese, titleSynonyms: $titleSynonyms, animeType: $animeType, source: $source, episodes: $episodes, status: $status, airing: $airing, aired: $aired, duration: $duration, rating: $rating, score: $score, scoredBy: $scoredBy, rank: $rank, popularity: $popularity, members: $members, favorites: $favorites, synopsis: $synopsis, background: $background, season: $season, year: $year, broadcast: $broadcast, producers: $producers, licensors: $licensors, studios: $studios, genres: $genres, explicitGenres: $explicitGenres, themes: $themes, demographics: $demographics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeImpl &&
            (identical(other.malId, malId) || other.malId == malId) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.trailer, trailer) || other.trailer == trailer) &&
            (identical(other.approved, approved) ||
                other.approved == approved) &&
            const DeepCollectionEquality().equals(other._titles, _titles) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleEnglish, titleEnglish) ||
                other.titleEnglish == titleEnglish) &&
            (identical(other.titleJapanese, titleJapanese) ||
                other.titleJapanese == titleJapanese) &&
            const DeepCollectionEquality()
                .equals(other._titleSynonyms, _titleSynonyms) &&
            (identical(other.animeType, animeType) ||
                other.animeType == animeType) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.episodes, episodes) ||
                other.episodes == episodes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.airing, airing) || other.airing == airing) &&
            (identical(other.aired, aired) || other.aired == aired) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.scoredBy, scoredBy) ||
                other.scoredBy == scoredBy) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.members, members) || other.members == members) &&
            (identical(other.favorites, favorites) ||
                other.favorites == favorites) &&
            (identical(other.synopsis, synopsis) ||
                other.synopsis == synopsis) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.broadcast, broadcast) ||
                other.broadcast == broadcast) &&
            const DeepCollectionEquality()
                .equals(other._producers, _producers) &&
            const DeepCollectionEquality()
                .equals(other._licensors, _licensors) &&
            const DeepCollectionEquality().equals(other._studios, _studios) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other._explicitGenres, _explicitGenres) &&
            const DeepCollectionEquality().equals(other._themes, _themes) &&
            const DeepCollectionEquality()
                .equals(other._demographics, _demographics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        malId,
        url,
        const DeepCollectionEquality().hash(_images),
        trailer,
        approved,
        const DeepCollectionEquality().hash(_titles),
        title,
        titleEnglish,
        titleJapanese,
        const DeepCollectionEquality().hash(_titleSynonyms),
        animeType,
        source,
        episodes,
        status,
        airing,
        aired,
        duration,
        rating,
        score,
        scoredBy,
        rank,
        popularity,
        members,
        favorites,
        synopsis,
        background,
        season,
        year,
        broadcast,
        const DeepCollectionEquality().hash(_producers),
        const DeepCollectionEquality().hash(_licensors),
        const DeepCollectionEquality().hash(_studios),
        const DeepCollectionEquality().hash(_genres),
        const DeepCollectionEquality().hash(_explicitGenres),
        const DeepCollectionEquality().hash(_themes),
        const DeepCollectionEquality().hash(_demographics)
      ]);

  /// Create a copy of Anime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeImplCopyWith<_$AnimeImpl> get copyWith =>
      __$$AnimeImplCopyWithImpl<_$AnimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimeImplToJson(
      this,
    );
  }
}

abstract class _Anime extends Anime {
  const factory _Anime(
      {@JsonKey(name: 'mal_id') final int? malId,
      required final String url,
      required final Map<String, ImageFormat> images,
      required final Trailer trailer,
      required final bool approved,
      final List<Title>? titles,
      required final String title,
      @JsonKey(name: 'title_english') final String? titleEnglish,
      @JsonKey(name: 'title_japanese') final String? titleJapanese,
      @JsonKey(name: 'title_synonyms') final List<String>? titleSynonyms,
      @JsonKey(name: 'type') final String? animeType,
      final String? source,
      final int? episodes,
      final String? status,
      required final bool airing,
      required final Aired aired,
      final String? duration,
      final String? rating,
      final double? score,
      @JsonKey(name: 'scored_by') final int? scoredBy,
      final int? rank,
      final int? popularity,
      final int? members,
      final int? favorites,
      final String? synopsis,
      final String? background,
      final String? season,
      final int? year,
      required final Broadcast broadcast,
      required final List<Demographic> producers,
      required final List<Demographic> licensors,
      required final List<Demographic> studios,
      required final List<Demographic> genres,
      @JsonKey(name: 'explicit_genres') final List<dynamic>? explicitGenres,
      required final List<Demographic> themes,
      required final List<Demographic> demographics}) = _$AnimeImpl;
  const _Anime._() : super._();

  factory _Anime.fromJson(Map<String, dynamic> json) = _$AnimeImpl.fromJson;

  @override
  @JsonKey(name: 'mal_id')
  int? get malId;
  @override
  String get url;
  @override
  Map<String, ImageFormat> get images;
  @override
  Trailer get trailer;
  @override
  bool get approved;
  @override
  List<Title>? get titles;
  @override
  String get title;
  @override
  @JsonKey(name: 'title_english')
  String? get titleEnglish;
  @override
  @JsonKey(name: 'title_japanese')
  String? get titleJapanese;
  @override
  @JsonKey(name: 'title_synonyms')
  List<String>? get titleSynonyms;
  @override
  @JsonKey(name: 'type')
  String? get animeType;
  @override
  String? get source;
  @override
  int? get episodes;
  @override
  String? get status;
  @override
  bool get airing;
  @override
  Aired get aired;
  @override
  String? get duration;
  @override
  String? get rating;
  @override
  double? get score;
  @override
  @JsonKey(name: 'scored_by')
  int? get scoredBy;
  @override
  int? get rank;
  @override
  int? get popularity;
  @override
  int? get members;
  @override
  int? get favorites;
  @override
  String? get synopsis;
  @override
  String? get background;
  @override
  String? get season;
  @override
  int? get year;
  @override
  Broadcast get broadcast;
  @override
  List<Demographic> get producers;
  @override
  List<Demographic> get licensors;
  @override
  List<Demographic> get studios;
  @override
  List<Demographic> get genres;
  @override
  @JsonKey(name: 'explicit_genres')
  List<dynamic>? get explicitGenres;
  @override
  List<Demographic> get themes;
  @override
  List<Demographic> get demographics;

  /// Create a copy of Anime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimeImplCopyWith<_$AnimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Aired _$AiredFromJson(Map<String, dynamic> json) {
  return _Aired.fromJson(json);
}

/// @nodoc
mixin _$Aired {
  DateTime? get from => throw _privateConstructorUsedError;
  DateTime? get to => throw _privateConstructorUsedError;
  Prop get prop => throw _privateConstructorUsedError;
  String? get string => throw _privateConstructorUsedError;

  /// Serializes this Aired to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Aired
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AiredCopyWith<Aired> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiredCopyWith<$Res> {
  factory $AiredCopyWith(Aired value, $Res Function(Aired) then) =
      _$AiredCopyWithImpl<$Res, Aired>;
  @useResult
  $Res call({DateTime? from, DateTime? to, Prop prop, String? string});

  $PropCopyWith<$Res> get prop;
}

/// @nodoc
class _$AiredCopyWithImpl<$Res, $Val extends Aired>
    implements $AiredCopyWith<$Res> {
  _$AiredCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Aired
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? prop = null,
    Object? string = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      prop: null == prop
          ? _value.prop
          : prop // ignore: cast_nullable_to_non_nullable
              as Prop,
      string: freezed == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Aired
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropCopyWith<$Res> get prop {
    return $PropCopyWith<$Res>(_value.prop, (value) {
      return _then(_value.copyWith(prop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AiredImplCopyWith<$Res> implements $AiredCopyWith<$Res> {
  factory _$$AiredImplCopyWith(
          _$AiredImpl value, $Res Function(_$AiredImpl) then) =
      __$$AiredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? from, DateTime? to, Prop prop, String? string});

  @override
  $PropCopyWith<$Res> get prop;
}

/// @nodoc
class __$$AiredImplCopyWithImpl<$Res>
    extends _$AiredCopyWithImpl<$Res, _$AiredImpl>
    implements _$$AiredImplCopyWith<$Res> {
  __$$AiredImplCopyWithImpl(
      _$AiredImpl _value, $Res Function(_$AiredImpl) _then)
      : super(_value, _then);

  /// Create a copy of Aired
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? prop = null,
    Object? string = freezed,
  }) {
    return _then(_$AiredImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      prop: null == prop
          ? _value.prop
          : prop // ignore: cast_nullable_to_non_nullable
              as Prop,
      string: freezed == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiredImpl implements _Aired {
  const _$AiredImpl({this.from, this.to, required this.prop, this.string});

  factory _$AiredImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiredImplFromJson(json);

  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final Prop prop;
  @override
  final String? string;

  @override
  String toString() {
    return 'Aired(from: $from, to: $to, prop: $prop, string: $string)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiredImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.prop, prop) || other.prop == prop) &&
            (identical(other.string, string) || other.string == string));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, to, prop, string);

  /// Create a copy of Aired
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AiredImplCopyWith<_$AiredImpl> get copyWith =>
      __$$AiredImplCopyWithImpl<_$AiredImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiredImplToJson(
      this,
    );
  }
}

abstract class _Aired implements Aired {
  const factory _Aired(
      {final DateTime? from,
      final DateTime? to,
      required final Prop prop,
      final String? string}) = _$AiredImpl;

  factory _Aired.fromJson(Map<String, dynamic> json) = _$AiredImpl.fromJson;

  @override
  DateTime? get from;
  @override
  DateTime? get to;
  @override
  Prop get prop;
  @override
  String? get string;

  /// Create a copy of Aired
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AiredImplCopyWith<_$AiredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Prop _$PropFromJson(Map<String, dynamic> json) {
  return _Prop.fromJson(json);
}

/// @nodoc
mixin _$Prop {
  PropFrom? get from => throw _privateConstructorUsedError;
  PropFrom? get to => throw _privateConstructorUsedError;

  /// Serializes this Prop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Prop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropCopyWith<Prop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropCopyWith<$Res> {
  factory $PropCopyWith(Prop value, $Res Function(Prop) then) =
      _$PropCopyWithImpl<$Res, Prop>;
  @useResult
  $Res call({PropFrom? from, PropFrom? to});

  $PropFromCopyWith<$Res>? get from;
  $PropFromCopyWith<$Res>? get to;
}

/// @nodoc
class _$PropCopyWithImpl<$Res, $Val extends Prop>
    implements $PropCopyWith<$Res> {
  _$PropCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Prop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as PropFrom?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as PropFrom?,
    ) as $Val);
  }

  /// Create a copy of Prop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropFromCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $PropFromCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }

  /// Create a copy of Prop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropFromCopyWith<$Res>? get to {
    if (_value.to == null) {
      return null;
    }

    return $PropFromCopyWith<$Res>(_value.to!, (value) {
      return _then(_value.copyWith(to: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropImplCopyWith<$Res> implements $PropCopyWith<$Res> {
  factory _$$PropImplCopyWith(
          _$PropImpl value, $Res Function(_$PropImpl) then) =
      __$$PropImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PropFrom? from, PropFrom? to});

  @override
  $PropFromCopyWith<$Res>? get from;
  @override
  $PropFromCopyWith<$Res>? get to;
}

/// @nodoc
class __$$PropImplCopyWithImpl<$Res>
    extends _$PropCopyWithImpl<$Res, _$PropImpl>
    implements _$$PropImplCopyWith<$Res> {
  __$$PropImplCopyWithImpl(_$PropImpl _value, $Res Function(_$PropImpl) _then)
      : super(_value, _then);

  /// Create a copy of Prop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$PropImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as PropFrom?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as PropFrom?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropImpl implements _Prop {
  const _$PropImpl({this.from, this.to});

  factory _$PropImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropImplFromJson(json);

  @override
  final PropFrom? from;
  @override
  final PropFrom? to;

  @override
  String toString() {
    return 'Prop(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  /// Create a copy of Prop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropImplCopyWith<_$PropImpl> get copyWith =>
      __$$PropImplCopyWithImpl<_$PropImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropImplToJson(
      this,
    );
  }
}

abstract class _Prop implements Prop {
  const factory _Prop({final PropFrom? from, final PropFrom? to}) = _$PropImpl;

  factory _Prop.fromJson(Map<String, dynamic> json) = _$PropImpl.fromJson;

  @override
  PropFrom? get from;
  @override
  PropFrom? get to;

  /// Create a copy of Prop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropImplCopyWith<_$PropImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropFrom _$PropFromFromJson(Map<String, dynamic> json) {
  return _PropFrom.fromJson(json);
}

/// @nodoc
mixin _$PropFrom {
  int? get day => throw _privateConstructorUsedError;
  int? get month => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;

  /// Serializes this PropFrom to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropFrom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropFromCopyWith<PropFrom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropFromCopyWith<$Res> {
  factory $PropFromCopyWith(PropFrom value, $Res Function(PropFrom) then) =
      _$PropFromCopyWithImpl<$Res, PropFrom>;
  @useResult
  $Res call({int? day, int? month, int? year});
}

/// @nodoc
class _$PropFromCopyWithImpl<$Res, $Val extends PropFrom>
    implements $PropFromCopyWith<$Res> {
  _$PropFromCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropFrom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropFromImplCopyWith<$Res>
    implements $PropFromCopyWith<$Res> {
  factory _$$PropFromImplCopyWith(
          _$PropFromImpl value, $Res Function(_$PropFromImpl) then) =
      __$$PropFromImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? day, int? month, int? year});
}

/// @nodoc
class __$$PropFromImplCopyWithImpl<$Res>
    extends _$PropFromCopyWithImpl<$Res, _$PropFromImpl>
    implements _$$PropFromImplCopyWith<$Res> {
  __$$PropFromImplCopyWithImpl(
      _$PropFromImpl _value, $Res Function(_$PropFromImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropFrom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
  }) {
    return _then(_$PropFromImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropFromImpl implements _PropFrom {
  const _$PropFromImpl({this.day, this.month, this.year});

  factory _$PropFromImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropFromImplFromJson(json);

  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  @override
  String toString() {
    return 'PropFrom(day: $day, month: $month, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropFromImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, month, year);

  /// Create a copy of PropFrom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropFromImplCopyWith<_$PropFromImpl> get copyWith =>
      __$$PropFromImplCopyWithImpl<_$PropFromImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropFromImplToJson(
      this,
    );
  }
}

abstract class _PropFrom implements PropFrom {
  const factory _PropFrom({final int? day, final int? month, final int? year}) =
      _$PropFromImpl;

  factory _PropFrom.fromJson(Map<String, dynamic> json) =
      _$PropFromImpl.fromJson;

  @override
  int? get day;
  @override
  int? get month;
  @override
  int? get year;

  /// Create a copy of PropFrom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropFromImplCopyWith<_$PropFromImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Broadcast _$BroadcastFromJson(Map<String, dynamic> json) {
  return _Broadcast.fromJson(json);
}

/// @nodoc
mixin _$Broadcast {
  String? get day => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get string => throw _privateConstructorUsedError;

  /// Serializes this Broadcast to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Broadcast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BroadcastCopyWith<Broadcast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastCopyWith<$Res> {
  factory $BroadcastCopyWith(Broadcast value, $Res Function(Broadcast) then) =
      _$BroadcastCopyWithImpl<$Res, Broadcast>;
  @useResult
  $Res call({String? day, String? time, String? timezone, String? string});
}

/// @nodoc
class _$BroadcastCopyWithImpl<$Res, $Val extends Broadcast>
    implements $BroadcastCopyWith<$Res> {
  _$BroadcastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Broadcast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? time = freezed,
    Object? timezone = freezed,
    Object? string = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      string: freezed == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BroadcastImplCopyWith<$Res>
    implements $BroadcastCopyWith<$Res> {
  factory _$$BroadcastImplCopyWith(
          _$BroadcastImpl value, $Res Function(_$BroadcastImpl) then) =
      __$$BroadcastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? day, String? time, String? timezone, String? string});
}

/// @nodoc
class __$$BroadcastImplCopyWithImpl<$Res>
    extends _$BroadcastCopyWithImpl<$Res, _$BroadcastImpl>
    implements _$$BroadcastImplCopyWith<$Res> {
  __$$BroadcastImplCopyWithImpl(
      _$BroadcastImpl _value, $Res Function(_$BroadcastImpl) _then)
      : super(_value, _then);

  /// Create a copy of Broadcast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? time = freezed,
    Object? timezone = freezed,
    Object? string = freezed,
  }) {
    return _then(_$BroadcastImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      string: freezed == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BroadcastImpl implements _Broadcast {
  const _$BroadcastImpl({this.day, this.time, this.timezone, this.string});

  factory _$BroadcastImpl.fromJson(Map<String, dynamic> json) =>
      _$$BroadcastImplFromJson(json);

  @override
  final String? day;
  @override
  final String? time;
  @override
  final String? timezone;
  @override
  final String? string;

  @override
  String toString() {
    return 'Broadcast(day: $day, time: $time, timezone: $timezone, string: $string)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BroadcastImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.string, string) || other.string == string));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, time, timezone, string);

  /// Create a copy of Broadcast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BroadcastImplCopyWith<_$BroadcastImpl> get copyWith =>
      __$$BroadcastImplCopyWithImpl<_$BroadcastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BroadcastImplToJson(
      this,
    );
  }
}

abstract class _Broadcast implements Broadcast {
  const factory _Broadcast(
      {final String? day,
      final String? time,
      final String? timezone,
      final String? string}) = _$BroadcastImpl;

  factory _Broadcast.fromJson(Map<String, dynamic> json) =
      _$BroadcastImpl.fromJson;

  @override
  String? get day;
  @override
  String? get time;
  @override
  String? get timezone;
  @override
  String? get string;

  /// Create a copy of Broadcast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BroadcastImplCopyWith<_$BroadcastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Demographic _$DemographicFromJson(Map<String, dynamic> json) {
  return _Demographic.fromJson(json);
}

/// @nodoc
mixin _$Demographic {
  @JsonKey(name: 'mal_id')
  int? get malId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this Demographic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Demographic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DemographicCopyWith<Demographic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemographicCopyWith<$Res> {
  factory $DemographicCopyWith(
          Demographic value, $Res Function(Demographic) then) =
      _$DemographicCopyWithImpl<$Res, Demographic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mal_id') int? malId,
      String? type,
      String name,
      String url});
}

/// @nodoc
class _$DemographicCopyWithImpl<$Res, $Val extends Demographic>
    implements $DemographicCopyWith<$Res> {
  _$DemographicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Demographic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malId = freezed,
    Object? type = freezed,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemographicImplCopyWith<$Res>
    implements $DemographicCopyWith<$Res> {
  factory _$$DemographicImplCopyWith(
          _$DemographicImpl value, $Res Function(_$DemographicImpl) then) =
      __$$DemographicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mal_id') int? malId,
      String? type,
      String name,
      String url});
}

/// @nodoc
class __$$DemographicImplCopyWithImpl<$Res>
    extends _$DemographicCopyWithImpl<$Res, _$DemographicImpl>
    implements _$$DemographicImplCopyWith<$Res> {
  __$$DemographicImplCopyWithImpl(
      _$DemographicImpl _value, $Res Function(_$DemographicImpl) _then)
      : super(_value, _then);

  /// Create a copy of Demographic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malId = freezed,
    Object? type = freezed,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$DemographicImpl(
      malId: freezed == malId
          ? _value.malId
          : malId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DemographicImpl implements _Demographic {
  const _$DemographicImpl(
      {@JsonKey(name: 'mal_id') this.malId,
      this.type,
      required this.name,
      required this.url});

  factory _$DemographicImpl.fromJson(Map<String, dynamic> json) =>
      _$$DemographicImplFromJson(json);

  @override
  @JsonKey(name: 'mal_id')
  final int? malId;
  @override
  final String? type;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'Demographic(malId: $malId, type: $type, name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemographicImpl &&
            (identical(other.malId, malId) || other.malId == malId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, malId, type, name, url);

  /// Create a copy of Demographic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DemographicImplCopyWith<_$DemographicImpl> get copyWith =>
      __$$DemographicImplCopyWithImpl<_$DemographicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DemographicImplToJson(
      this,
    );
  }
}

abstract class _Demographic implements Demographic {
  const factory _Demographic(
      {@JsonKey(name: 'mal_id') final int? malId,
      final String? type,
      required final String name,
      required final String url}) = _$DemographicImpl;

  factory _Demographic.fromJson(Map<String, dynamic> json) =
      _$DemographicImpl.fromJson;

  @override
  @JsonKey(name: 'mal_id')
  int? get malId;
  @override
  String? get type;
  @override
  String get name;
  @override
  String get url;

  /// Create a copy of Demographic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DemographicImplCopyWith<_$DemographicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageFormat _$ImageFormatFromJson(Map<String, dynamic> json) {
  return _ImageFormat.fromJson(json);
}

/// @nodoc
mixin _$ImageFormat {
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'small_image_url')
  String? get smallImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_image_url')
  String? get largeImageUrl => throw _privateConstructorUsedError;

  /// Serializes this ImageFormat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageFormat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageFormatCopyWith<ImageFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageFormatCopyWith<$Res> {
  factory $ImageFormatCopyWith(
          ImageFormat value, $Res Function(ImageFormat) then) =
      _$ImageFormatCopyWithImpl<$Res, ImageFormat>;
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'small_image_url') String? smallImageUrl,
      @JsonKey(name: 'large_image_url') String? largeImageUrl});
}

/// @nodoc
class _$ImageFormatCopyWithImpl<$Res, $Val extends ImageFormat>
    implements $ImageFormatCopyWith<$Res> {
  _$ImageFormatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageFormat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? smallImageUrl = freezed,
    Object? largeImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageFormatImplCopyWith<$Res>
    implements $ImageFormatCopyWith<$Res> {
  factory _$$ImageFormatImplCopyWith(
          _$ImageFormatImpl value, $Res Function(_$ImageFormatImpl) then) =
      __$$ImageFormatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'small_image_url') String? smallImageUrl,
      @JsonKey(name: 'large_image_url') String? largeImageUrl});
}

/// @nodoc
class __$$ImageFormatImplCopyWithImpl<$Res>
    extends _$ImageFormatCopyWithImpl<$Res, _$ImageFormatImpl>
    implements _$$ImageFormatImplCopyWith<$Res> {
  __$$ImageFormatImplCopyWithImpl(
      _$ImageFormatImpl _value, $Res Function(_$ImageFormatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageFormat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? smallImageUrl = freezed,
    Object? largeImageUrl = freezed,
  }) {
    return _then(_$ImageFormatImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageFormatImpl implements _ImageFormat {
  const _$ImageFormatImpl(
      {@JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'small_image_url') this.smallImageUrl,
      @JsonKey(name: 'large_image_url') this.largeImageUrl});

  factory _$ImageFormatImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageFormatImplFromJson(json);

  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'small_image_url')
  final String? smallImageUrl;
  @override
  @JsonKey(name: 'large_image_url')
  final String? largeImageUrl;

  @override
  String toString() {
    return 'ImageFormat(imageUrl: $imageUrl, smallImageUrl: $smallImageUrl, largeImageUrl: $largeImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageFormatImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.smallImageUrl, smallImageUrl) ||
                other.smallImageUrl == smallImageUrl) &&
            (identical(other.largeImageUrl, largeImageUrl) ||
                other.largeImageUrl == largeImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imageUrl, smallImageUrl, largeImageUrl);

  /// Create a copy of ImageFormat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageFormatImplCopyWith<_$ImageFormatImpl> get copyWith =>
      __$$ImageFormatImplCopyWithImpl<_$ImageFormatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageFormatImplToJson(
      this,
    );
  }
}

abstract class _ImageFormat implements ImageFormat {
  const factory _ImageFormat(
          {@JsonKey(name: 'image_url') final String? imageUrl,
          @JsonKey(name: 'small_image_url') final String? smallImageUrl,
          @JsonKey(name: 'large_image_url') final String? largeImageUrl}) =
      _$ImageFormatImpl;

  factory _ImageFormat.fromJson(Map<String, dynamic> json) =
      _$ImageFormatImpl.fromJson;

  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'small_image_url')
  String? get smallImageUrl;
  @override
  @JsonKey(name: 'large_image_url')
  String? get largeImageUrl;

  /// Create a copy of ImageFormat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageFormatImplCopyWith<_$ImageFormatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Title _$TitleFromJson(Map<String, dynamic> json) {
  return _Title.fromJson(json);
}

/// @nodoc
mixin _$Title {
  @JsonKey(name: 'type')
  String? get titleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get titleName => throw _privateConstructorUsedError;

  /// Serializes this Title to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Title
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TitleCopyWith<Title> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleCopyWith<$Res> {
  factory $TitleCopyWith(Title value, $Res Function(Title) then) =
      _$TitleCopyWithImpl<$Res, Title>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? titleType,
      @JsonKey(name: 'title') String? titleName});
}

/// @nodoc
class _$TitleCopyWithImpl<$Res, $Val extends Title>
    implements $TitleCopyWith<$Res> {
  _$TitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Title
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleType = freezed,
    Object? titleName = freezed,
  }) {
    return _then(_value.copyWith(
      titleType: freezed == titleType
          ? _value.titleType
          : titleType // ignore: cast_nullable_to_non_nullable
              as String?,
      titleName: freezed == titleName
          ? _value.titleName
          : titleName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TitleImplCopyWith<$Res> implements $TitleCopyWith<$Res> {
  factory _$$TitleImplCopyWith(
          _$TitleImpl value, $Res Function(_$TitleImpl) then) =
      __$$TitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? titleType,
      @JsonKey(name: 'title') String? titleName});
}

/// @nodoc
class __$$TitleImplCopyWithImpl<$Res>
    extends _$TitleCopyWithImpl<$Res, _$TitleImpl>
    implements _$$TitleImplCopyWith<$Res> {
  __$$TitleImplCopyWithImpl(
      _$TitleImpl _value, $Res Function(_$TitleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Title
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleType = freezed,
    Object? titleName = freezed,
  }) {
    return _then(_$TitleImpl(
      titleType: freezed == titleType
          ? _value.titleType
          : titleType // ignore: cast_nullable_to_non_nullable
              as String?,
      titleName: freezed == titleName
          ? _value.titleName
          : titleName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleImpl implements _Title {
  const _$TitleImpl(
      {@JsonKey(name: 'type') this.titleType,
      @JsonKey(name: 'title') this.titleName});

  factory _$TitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitleImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? titleType;
  @override
  @JsonKey(name: 'title')
  final String? titleName;

  @override
  String toString() {
    return 'Title(titleType: $titleType, titleName: $titleName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleImpl &&
            (identical(other.titleType, titleType) ||
                other.titleType == titleType) &&
            (identical(other.titleName, titleName) ||
                other.titleName == titleName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, titleType, titleName);

  /// Create a copy of Title
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleImplCopyWith<_$TitleImpl> get copyWith =>
      __$$TitleImplCopyWithImpl<_$TitleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleImplToJson(
      this,
    );
  }
}

abstract class _Title implements Title {
  const factory _Title(
      {@JsonKey(name: 'type') final String? titleType,
      @JsonKey(name: 'title') final String? titleName}) = _$TitleImpl;

  factory _Title.fromJson(Map<String, dynamic> json) = _$TitleImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get titleType;
  @override
  @JsonKey(name: 'title')
  String? get titleName;

  /// Create a copy of Title
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TitleImplCopyWith<_$TitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Trailer _$TrailerFromJson(Map<String, dynamic> json) {
  return _Trailer.fromJson(json);
}

/// @nodoc
mixin _$Trailer {
  @JsonKey(name: 'youtube_id')
  String? get youtubeId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'embed_url')
  String? get embedUrl => throw _privateConstructorUsedError;
  Images? get images => throw _privateConstructorUsedError;

  /// Serializes this Trailer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trailer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrailerCopyWith<Trailer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailerCopyWith<$Res> {
  factory $TrailerCopyWith(Trailer value, $Res Function(Trailer) then) =
      _$TrailerCopyWithImpl<$Res, Trailer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'youtube_id') String? youtubeId,
      String? url,
      @JsonKey(name: 'embed_url') String? embedUrl,
      Images? images});

  $ImagesCopyWith<$Res>? get images;
}

/// @nodoc
class _$TrailerCopyWithImpl<$Res, $Val extends Trailer>
    implements $TrailerCopyWith<$Res> {
  _$TrailerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trailer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? youtubeId = freezed,
    Object? url = freezed,
    Object? embedUrl = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      youtubeId: freezed == youtubeId
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      embedUrl: freezed == embedUrl
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images?,
    ) as $Val);
  }

  /// Create a copy of Trailer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImagesCopyWith<$Res>? get images {
    if (_value.images == null) {
      return null;
    }

    return $ImagesCopyWith<$Res>(_value.images!, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrailerImplCopyWith<$Res> implements $TrailerCopyWith<$Res> {
  factory _$$TrailerImplCopyWith(
          _$TrailerImpl value, $Res Function(_$TrailerImpl) then) =
      __$$TrailerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'youtube_id') String? youtubeId,
      String? url,
      @JsonKey(name: 'embed_url') String? embedUrl,
      Images? images});

  @override
  $ImagesCopyWith<$Res>? get images;
}

/// @nodoc
class __$$TrailerImplCopyWithImpl<$Res>
    extends _$TrailerCopyWithImpl<$Res, _$TrailerImpl>
    implements _$$TrailerImplCopyWith<$Res> {
  __$$TrailerImplCopyWithImpl(
      _$TrailerImpl _value, $Res Function(_$TrailerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trailer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? youtubeId = freezed,
    Object? url = freezed,
    Object? embedUrl = freezed,
    Object? images = freezed,
  }) {
    return _then(_$TrailerImpl(
      youtubeId: freezed == youtubeId
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      embedUrl: freezed == embedUrl
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrailerImpl implements _Trailer {
  const _$TrailerImpl(
      {@JsonKey(name: 'youtube_id') this.youtubeId,
      this.url,
      @JsonKey(name: 'embed_url') this.embedUrl,
      this.images});

  factory _$TrailerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrailerImplFromJson(json);

  @override
  @JsonKey(name: 'youtube_id')
  final String? youtubeId;
  @override
  final String? url;
  @override
  @JsonKey(name: 'embed_url')
  final String? embedUrl;
  @override
  final Images? images;

  @override
  String toString() {
    return 'Trailer(youtubeId: $youtubeId, url: $url, embedUrl: $embedUrl, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrailerImpl &&
            (identical(other.youtubeId, youtubeId) ||
                other.youtubeId == youtubeId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.embedUrl, embedUrl) ||
                other.embedUrl == embedUrl) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, youtubeId, url, embedUrl, images);

  /// Create a copy of Trailer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrailerImplCopyWith<_$TrailerImpl> get copyWith =>
      __$$TrailerImplCopyWithImpl<_$TrailerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrailerImplToJson(
      this,
    );
  }
}

abstract class _Trailer implements Trailer {
  const factory _Trailer(
      {@JsonKey(name: 'youtube_id') final String? youtubeId,
      final String? url,
      @JsonKey(name: 'embed_url') final String? embedUrl,
      final Images? images}) = _$TrailerImpl;

  factory _Trailer.fromJson(Map<String, dynamic> json) = _$TrailerImpl.fromJson;

  @override
  @JsonKey(name: 'youtube_id')
  String? get youtubeId;
  @override
  String? get url;
  @override
  @JsonKey(name: 'embed_url')
  String? get embedUrl;
  @override
  Images? get images;

  /// Create a copy of Trailer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrailerImplCopyWith<_$TrailerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
mixin _$Images {
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'small_image_url')
  String? get smallImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'medium_image_url')
  String? get mediumImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_image_url')
  String? get largeImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'maximum_image_url')
  String? get maximumImageUrl => throw _privateConstructorUsedError;

  /// Serializes this Images to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res, Images>;
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'small_image_url') String? smallImageUrl,
      @JsonKey(name: 'medium_image_url') String? mediumImageUrl,
      @JsonKey(name: 'large_image_url') String? largeImageUrl,
      @JsonKey(name: 'maximum_image_url') String? maximumImageUrl});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res, $Val extends Images>
    implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? smallImageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? largeImageUrl = freezed,
    Object? maximumImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumImageUrl: freezed == maximumImageUrl
          ? _value.maximumImageUrl
          : maximumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagesImplCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$ImagesImplCopyWith(
          _$ImagesImpl value, $Res Function(_$ImagesImpl) then) =
      __$$ImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'small_image_url') String? smallImageUrl,
      @JsonKey(name: 'medium_image_url') String? mediumImageUrl,
      @JsonKey(name: 'large_image_url') String? largeImageUrl,
      @JsonKey(name: 'maximum_image_url') String? maximumImageUrl});
}

/// @nodoc
class __$$ImagesImplCopyWithImpl<$Res>
    extends _$ImagesCopyWithImpl<$Res, _$ImagesImpl>
    implements _$$ImagesImplCopyWith<$Res> {
  __$$ImagesImplCopyWithImpl(
      _$ImagesImpl _value, $Res Function(_$ImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? smallImageUrl = freezed,
    Object? mediumImageUrl = freezed,
    Object? largeImageUrl = freezed,
    Object? maximumImageUrl = freezed,
  }) {
    return _then(_$ImagesImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      smallImageUrl: freezed == smallImageUrl
          ? _value.smallImageUrl
          : smallImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mediumImageUrl: freezed == mediumImageUrl
          ? _value.mediumImageUrl
          : mediumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumImageUrl: freezed == maximumImageUrl
          ? _value.maximumImageUrl
          : maximumImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesImpl implements _Images {
  const _$ImagesImpl(
      {@JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'small_image_url') this.smallImageUrl,
      @JsonKey(name: 'medium_image_url') this.mediumImageUrl,
      @JsonKey(name: 'large_image_url') this.largeImageUrl,
      @JsonKey(name: 'maximum_image_url') this.maximumImageUrl});

  factory _$ImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesImplFromJson(json);

  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'small_image_url')
  final String? smallImageUrl;
  @override
  @JsonKey(name: 'medium_image_url')
  final String? mediumImageUrl;
  @override
  @JsonKey(name: 'large_image_url')
  final String? largeImageUrl;
  @override
  @JsonKey(name: 'maximum_image_url')
  final String? maximumImageUrl;

  @override
  String toString() {
    return 'Images(imageUrl: $imageUrl, smallImageUrl: $smallImageUrl, mediumImageUrl: $mediumImageUrl, largeImageUrl: $largeImageUrl, maximumImageUrl: $maximumImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.smallImageUrl, smallImageUrl) ||
                other.smallImageUrl == smallImageUrl) &&
            (identical(other.mediumImageUrl, mediumImageUrl) ||
                other.mediumImageUrl == mediumImageUrl) &&
            (identical(other.largeImageUrl, largeImageUrl) ||
                other.largeImageUrl == largeImageUrl) &&
            (identical(other.maximumImageUrl, maximumImageUrl) ||
                other.maximumImageUrl == maximumImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, smallImageUrl,
      mediumImageUrl, largeImageUrl, maximumImageUrl);

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      __$$ImagesImplCopyWithImpl<_$ImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesImplToJson(
      this,
    );
  }
}

abstract class _Images implements Images {
  const factory _Images(
          {@JsonKey(name: 'image_url') final String? imageUrl,
          @JsonKey(name: 'small_image_url') final String? smallImageUrl,
          @JsonKey(name: 'medium_image_url') final String? mediumImageUrl,
          @JsonKey(name: 'large_image_url') final String? largeImageUrl,
          @JsonKey(name: 'maximum_image_url') final String? maximumImageUrl}) =
      _$ImagesImpl;

  factory _Images.fromJson(Map<String, dynamic> json) = _$ImagesImpl.fromJson;

  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'small_image_url')
  String? get smallImageUrl;
  @override
  @JsonKey(name: 'medium_image_url')
  String? get mediumImageUrl;
  @override
  @JsonKey(name: 'large_image_url')
  String? get largeImageUrl;
  @override
  @JsonKey(name: 'maximum_image_url')
  String? get maximumImageUrl;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  @JsonKey(name: 'last_visible_page')
  int? get lastVisiblePage => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_next_page')
  bool? get hasNextPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  PaginationItems get items => throw _privateConstructorUsedError;

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {@JsonKey(name: 'last_visible_page') int? lastVisiblePage,
      @JsonKey(name: 'has_next_page') bool? hasNextPage,
      @JsonKey(name: 'current_page') int? currentPage,
      PaginationItems items});

  $PaginationItemsCopyWith<$Res> get items;
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastVisiblePage = freezed,
    Object? hasNextPage = freezed,
    Object? currentPage = freezed,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      lastVisiblePage: freezed == lastVisiblePage
          ? _value.lastVisiblePage
          : lastVisiblePage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as PaginationItems,
    ) as $Val);
  }

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationItemsCopyWith<$Res> get items {
    return $PaginationItemsCopyWith<$Res>(_value.items, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'last_visible_page') int? lastVisiblePage,
      @JsonKey(name: 'has_next_page') bool? hasNextPage,
      @JsonKey(name: 'current_page') int? currentPage,
      PaginationItems items});

  @override
  $PaginationItemsCopyWith<$Res> get items;
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastVisiblePage = freezed,
    Object? hasNextPage = freezed,
    Object? currentPage = freezed,
    Object? items = null,
  }) {
    return _then(_$PaginationImpl(
      lastVisiblePage: freezed == lastVisiblePage
          ? _value.lastVisiblePage
          : lastVisiblePage // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as PaginationItems,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationImpl implements _Pagination {
  const _$PaginationImpl(
      {@JsonKey(name: 'last_visible_page') this.lastVisiblePage,
      @JsonKey(name: 'has_next_page') this.hasNextPage,
      @JsonKey(name: 'current_page') this.currentPage,
      required this.items});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  @JsonKey(name: 'last_visible_page')
  final int? lastVisiblePage;
  @override
  @JsonKey(name: 'has_next_page')
  final bool? hasNextPage;
  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  final PaginationItems items;

  @override
  String toString() {
    return 'Pagination(lastVisiblePage: $lastVisiblePage, hasNextPage: $hasNextPage, currentPage: $currentPage, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.lastVisiblePage, lastVisiblePage) ||
                other.lastVisiblePage == lastVisiblePage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.items, items) || other.items == items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, lastVisiblePage, hasNextPage, currentPage, items);

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  const factory _Pagination(
      {@JsonKey(name: 'last_visible_page') final int? lastVisiblePage,
      @JsonKey(name: 'has_next_page') final bool? hasNextPage,
      @JsonKey(name: 'current_page') final int? currentPage,
      required final PaginationItems items}) = _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

  @override
  @JsonKey(name: 'last_visible_page')
  int? get lastVisiblePage;
  @override
  @JsonKey(name: 'has_next_page')
  bool? get hasNextPage;
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  PaginationItems get items;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationItems _$PaginationItemsFromJson(Map<String, dynamic> json) {
  return _PaginationItems.fromJson(json);
}

/// @nodoc
mixin _$PaginationItems {
  int? get count => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;

  /// Serializes this PaginationItems to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationItemsCopyWith<PaginationItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationItemsCopyWith<$Res> {
  factory $PaginationItemsCopyWith(
          PaginationItems value, $Res Function(PaginationItems) then) =
      _$PaginationItemsCopyWithImpl<$Res, PaginationItems>;
  @useResult
  $Res call({int? count, int? total, @JsonKey(name: 'per_page') int? perPage});
}

/// @nodoc
class _$PaginationItemsCopyWithImpl<$Res, $Val extends PaginationItems>
    implements $PaginationItemsCopyWith<$Res> {
  _$PaginationItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? total = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationItemsImplCopyWith<$Res>
    implements $PaginationItemsCopyWith<$Res> {
  factory _$$PaginationItemsImplCopyWith(_$PaginationItemsImpl value,
          $Res Function(_$PaginationItemsImpl) then) =
      __$$PaginationItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, int? total, @JsonKey(name: 'per_page') int? perPage});
}

/// @nodoc
class __$$PaginationItemsImplCopyWithImpl<$Res>
    extends _$PaginationItemsCopyWithImpl<$Res, _$PaginationItemsImpl>
    implements _$$PaginationItemsImplCopyWith<$Res> {
  __$$PaginationItemsImplCopyWithImpl(
      _$PaginationItemsImpl _value, $Res Function(_$PaginationItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? total = freezed,
    Object? perPage = freezed,
  }) {
    return _then(_$PaginationItemsImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationItemsImpl implements _PaginationItems {
  const _$PaginationItemsImpl(
      {this.count, this.total, @JsonKey(name: 'per_page') this.perPage});

  factory _$PaginationItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationItemsImplFromJson(json);

  @override
  final int? count;
  @override
  final int? total;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;

  @override
  String toString() {
    return 'PaginationItems(count: $count, total: $total, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationItemsImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, total, perPage);

  /// Create a copy of PaginationItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationItemsImplCopyWith<_$PaginationItemsImpl> get copyWith =>
      __$$PaginationItemsImplCopyWithImpl<_$PaginationItemsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationItemsImplToJson(
      this,
    );
  }
}

abstract class _PaginationItems implements PaginationItems {
  const factory _PaginationItems(
      {final int? count,
      final int? total,
      @JsonKey(name: 'per_page') final int? perPage}) = _$PaginationItemsImpl;

  factory _PaginationItems.fromJson(Map<String, dynamic> json) =
      _$PaginationItemsImpl.fromJson;

  @override
  int? get count;
  @override
  int? get total;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;

  /// Create a copy of PaginationItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationItemsImplCopyWith<_$PaginationItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
