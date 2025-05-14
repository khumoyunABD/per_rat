// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_recommendation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnimeRecommendationResponse _$AnimeRecommendationResponseFromJson(
    Map<String, dynamic> json) {
  return _AnimeRecommendationResponse.fromJson(json);
}

/// @nodoc
mixin _$AnimeRecommendationResponse {
  List<RecommendationEntry> get data => throw _privateConstructorUsedError;

  /// Serializes this AnimeRecommendationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnimeRecommendationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimeRecommendationResponseCopyWith<AnimeRecommendationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeRecommendationResponseCopyWith<$Res> {
  factory $AnimeRecommendationResponseCopyWith(
          AnimeRecommendationResponse value,
          $Res Function(AnimeRecommendationResponse) then) =
      _$AnimeRecommendationResponseCopyWithImpl<$Res,
          AnimeRecommendationResponse>;
  @useResult
  $Res call({List<RecommendationEntry> data});
}

/// @nodoc
class _$AnimeRecommendationResponseCopyWithImpl<$Res,
        $Val extends AnimeRecommendationResponse>
    implements $AnimeRecommendationResponseCopyWith<$Res> {
  _$AnimeRecommendationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimeRecommendationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RecommendationEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimeRecommendationResponseImplCopyWith<$Res>
    implements $AnimeRecommendationResponseCopyWith<$Res> {
  factory _$$AnimeRecommendationResponseImplCopyWith(
          _$AnimeRecommendationResponseImpl value,
          $Res Function(_$AnimeRecommendationResponseImpl) then) =
      __$$AnimeRecommendationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecommendationEntry> data});
}

/// @nodoc
class __$$AnimeRecommendationResponseImplCopyWithImpl<$Res>
    extends _$AnimeRecommendationResponseCopyWithImpl<$Res,
        _$AnimeRecommendationResponseImpl>
    implements _$$AnimeRecommendationResponseImplCopyWith<$Res> {
  __$$AnimeRecommendationResponseImplCopyWithImpl(
      _$AnimeRecommendationResponseImpl _value,
      $Res Function(_$AnimeRecommendationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnimeRecommendationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AnimeRecommendationResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RecommendationEntry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimeRecommendationResponseImpl
    implements _AnimeRecommendationResponse {
  const _$AnimeRecommendationResponseImpl(
      {required final List<RecommendationEntry> data})
      : _data = data;

  factory _$AnimeRecommendationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AnimeRecommendationResponseImplFromJson(json);

  final List<RecommendationEntry> _data;
  @override
  List<RecommendationEntry> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AnimeRecommendationResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeRecommendationResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of AnimeRecommendationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeRecommendationResponseImplCopyWith<_$AnimeRecommendationResponseImpl>
      get copyWith => __$$AnimeRecommendationResponseImplCopyWithImpl<
          _$AnimeRecommendationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimeRecommendationResponseImplToJson(
      this,
    );
  }
}

abstract class _AnimeRecommendationResponse
    implements AnimeRecommendationResponse {
  const factory _AnimeRecommendationResponse(
          {required final List<RecommendationEntry> data}) =
      _$AnimeRecommendationResponseImpl;

  factory _AnimeRecommendationResponse.fromJson(Map<String, dynamic> json) =
      _$AnimeRecommendationResponseImpl.fromJson;

  @override
  List<RecommendationEntry> get data;

  /// Create a copy of AnimeRecommendationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimeRecommendationResponseImplCopyWith<_$AnimeRecommendationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecommendationEntry _$RecommendationEntryFromJson(Map<String, dynamic> json) {
  return _RecommendationEntry.fromJson(json);
}

/// @nodoc
mixin _$RecommendationEntry {
  AnimeEntry get entry => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get votes => throw _privateConstructorUsedError;

  /// Serializes this RecommendationEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecommendationEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendationEntryCopyWith<RecommendationEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationEntryCopyWith<$Res> {
  factory $RecommendationEntryCopyWith(
          RecommendationEntry value, $Res Function(RecommendationEntry) then) =
      _$RecommendationEntryCopyWithImpl<$Res, RecommendationEntry>;
  @useResult
  $Res call({AnimeEntry entry, String url, int votes});

  $AnimeEntryCopyWith<$Res> get entry;
}

/// @nodoc
class _$RecommendationEntryCopyWithImpl<$Res, $Val extends RecommendationEntry>
    implements $RecommendationEntryCopyWith<$Res> {
  _$RecommendationEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendationEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
    Object? url = null,
    Object? votes = null,
  }) {
    return _then(_value.copyWith(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as AnimeEntry,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      votes: null == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RecommendationEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimeEntryCopyWith<$Res> get entry {
    return $AnimeEntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecommendationEntryImplCopyWith<$Res>
    implements $RecommendationEntryCopyWith<$Res> {
  factory _$$RecommendationEntryImplCopyWith(_$RecommendationEntryImpl value,
          $Res Function(_$RecommendationEntryImpl) then) =
      __$$RecommendationEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnimeEntry entry, String url, int votes});

  @override
  $AnimeEntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$RecommendationEntryImplCopyWithImpl<$Res>
    extends _$RecommendationEntryCopyWithImpl<$Res, _$RecommendationEntryImpl>
    implements _$$RecommendationEntryImplCopyWith<$Res> {
  __$$RecommendationEntryImplCopyWithImpl(_$RecommendationEntryImpl _value,
      $Res Function(_$RecommendationEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendationEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
    Object? url = null,
    Object? votes = null,
  }) {
    return _then(_$RecommendationEntryImpl(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as AnimeEntry,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      votes: null == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecommendationEntryImpl implements _RecommendationEntry {
  const _$RecommendationEntryImpl(
      {required this.entry, required this.url, required this.votes});

  factory _$RecommendationEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendationEntryImplFromJson(json);

  @override
  final AnimeEntry entry;
  @override
  final String url;
  @override
  final int votes;

  @override
  String toString() {
    return 'RecommendationEntry(entry: $entry, url: $url, votes: $votes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationEntryImpl &&
            (identical(other.entry, entry) || other.entry == entry) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.votes, votes) || other.votes == votes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entry, url, votes);

  /// Create a copy of RecommendationEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationEntryImplCopyWith<_$RecommendationEntryImpl> get copyWith =>
      __$$RecommendationEntryImplCopyWithImpl<_$RecommendationEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendationEntryImplToJson(
      this,
    );
  }
}

abstract class _RecommendationEntry implements RecommendationEntry {
  const factory _RecommendationEntry(
      {required final AnimeEntry entry,
      required final String url,
      required final int votes}) = _$RecommendationEntryImpl;

  factory _RecommendationEntry.fromJson(Map<String, dynamic> json) =
      _$RecommendationEntryImpl.fromJson;

  @override
  AnimeEntry get entry;
  @override
  String get url;
  @override
  int get votes;

  /// Create a copy of RecommendationEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendationEntryImplCopyWith<_$RecommendationEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimeEntry _$AnimeEntryFromJson(Map<String, dynamic> json) {
  return _AnimeEntry.fromJson(json);
}

/// @nodoc
mixin _$AnimeEntry {
  @JsonKey(name: 'mal_id')
  int? get malId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  AnimeImages get images => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this AnimeEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnimeEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimeEntryCopyWith<AnimeEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeEntryCopyWith<$Res> {
  factory $AnimeEntryCopyWith(
          AnimeEntry value, $Res Function(AnimeEntry) then) =
      _$AnimeEntryCopyWithImpl<$Res, AnimeEntry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mal_id') int? malId,
      String url,
      AnimeImages images,
      String title});

  $AnimeImagesCopyWith<$Res> get images;
}

/// @nodoc
class _$AnimeEntryCopyWithImpl<$Res, $Val extends AnimeEntry>
    implements $AnimeEntryCopyWith<$Res> {
  _$AnimeEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimeEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malId = freezed,
    Object? url = null,
    Object? images = null,
    Object? title = null,
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
              as AnimeImages,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of AnimeEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimeImagesCopyWith<$Res> get images {
    return $AnimeImagesCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnimeEntryImplCopyWith<$Res>
    implements $AnimeEntryCopyWith<$Res> {
  factory _$$AnimeEntryImplCopyWith(
          _$AnimeEntryImpl value, $Res Function(_$AnimeEntryImpl) then) =
      __$$AnimeEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mal_id') int? malId,
      String url,
      AnimeImages images,
      String title});

  @override
  $AnimeImagesCopyWith<$Res> get images;
}

/// @nodoc
class __$$AnimeEntryImplCopyWithImpl<$Res>
    extends _$AnimeEntryCopyWithImpl<$Res, _$AnimeEntryImpl>
    implements _$$AnimeEntryImplCopyWith<$Res> {
  __$$AnimeEntryImplCopyWithImpl(
      _$AnimeEntryImpl _value, $Res Function(_$AnimeEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnimeEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malId = freezed,
    Object? url = null,
    Object? images = null,
    Object? title = null,
  }) {
    return _then(_$AnimeEntryImpl(
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
              as AnimeImages,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimeEntryImpl implements _AnimeEntry {
  const _$AnimeEntryImpl(
      {@JsonKey(name: 'mal_id') required this.malId,
      required this.url,
      required this.images,
      required this.title});

  factory _$AnimeEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimeEntryImplFromJson(json);

  @override
  @JsonKey(name: 'mal_id')
  final int? malId;
  @override
  final String url;
  @override
  final AnimeImages images;
  @override
  final String title;

  @override
  String toString() {
    return 'AnimeEntry(malId: $malId, url: $url, images: $images, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeEntryImpl &&
            (identical(other.malId, malId) || other.malId == malId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, malId, url, images, title);

  /// Create a copy of AnimeEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeEntryImplCopyWith<_$AnimeEntryImpl> get copyWith =>
      __$$AnimeEntryImplCopyWithImpl<_$AnimeEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimeEntryImplToJson(
      this,
    );
  }
}

abstract class _AnimeEntry implements AnimeEntry {
  const factory _AnimeEntry(
      {@JsonKey(name: 'mal_id') required final int? malId,
      required final String url,
      required final AnimeImages images,
      required final String title}) = _$AnimeEntryImpl;

  factory _AnimeEntry.fromJson(Map<String, dynamic> json) =
      _$AnimeEntryImpl.fromJson;

  @override
  @JsonKey(name: 'mal_id')
  int? get malId;
  @override
  String get url;
  @override
  AnimeImages get images;
  @override
  String get title;

  /// Create a copy of AnimeEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimeEntryImplCopyWith<_$AnimeEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimeImages _$AnimeImagesFromJson(Map<String, dynamic> json) {
  return _AnimeImages.fromJson(json);
}

/// @nodoc
mixin _$AnimeImages {
  ImageUrls? get jpg => throw _privateConstructorUsedError;
  ImageUrls? get webp => throw _privateConstructorUsedError;

  /// Serializes this AnimeImages to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnimeImages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimeImagesCopyWith<AnimeImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeImagesCopyWith<$Res> {
  factory $AnimeImagesCopyWith(
          AnimeImages value, $Res Function(AnimeImages) then) =
      _$AnimeImagesCopyWithImpl<$Res, AnimeImages>;
  @useResult
  $Res call({ImageUrls? jpg, ImageUrls? webp});

  $ImageUrlsCopyWith<$Res>? get jpg;
  $ImageUrlsCopyWith<$Res>? get webp;
}

/// @nodoc
class _$AnimeImagesCopyWithImpl<$Res, $Val extends AnimeImages>
    implements $AnimeImagesCopyWith<$Res> {
  _$AnimeImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimeImages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jpg = freezed,
    Object? webp = freezed,
  }) {
    return _then(_value.copyWith(
      jpg: freezed == jpg
          ? _value.jpg
          : jpg // ignore: cast_nullable_to_non_nullable
              as ImageUrls?,
      webp: freezed == webp
          ? _value.webp
          : webp // ignore: cast_nullable_to_non_nullable
              as ImageUrls?,
    ) as $Val);
  }

  /// Create a copy of AnimeImages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageUrlsCopyWith<$Res>? get jpg {
    if (_value.jpg == null) {
      return null;
    }

    return $ImageUrlsCopyWith<$Res>(_value.jpg!, (value) {
      return _then(_value.copyWith(jpg: value) as $Val);
    });
  }

  /// Create a copy of AnimeImages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageUrlsCopyWith<$Res>? get webp {
    if (_value.webp == null) {
      return null;
    }

    return $ImageUrlsCopyWith<$Res>(_value.webp!, (value) {
      return _then(_value.copyWith(webp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnimeImagesImplCopyWith<$Res>
    implements $AnimeImagesCopyWith<$Res> {
  factory _$$AnimeImagesImplCopyWith(
          _$AnimeImagesImpl value, $Res Function(_$AnimeImagesImpl) then) =
      __$$AnimeImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageUrls? jpg, ImageUrls? webp});

  @override
  $ImageUrlsCopyWith<$Res>? get jpg;
  @override
  $ImageUrlsCopyWith<$Res>? get webp;
}

/// @nodoc
class __$$AnimeImagesImplCopyWithImpl<$Res>
    extends _$AnimeImagesCopyWithImpl<$Res, _$AnimeImagesImpl>
    implements _$$AnimeImagesImplCopyWith<$Res> {
  __$$AnimeImagesImplCopyWithImpl(
      _$AnimeImagesImpl _value, $Res Function(_$AnimeImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnimeImages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jpg = freezed,
    Object? webp = freezed,
  }) {
    return _then(_$AnimeImagesImpl(
      jpg: freezed == jpg
          ? _value.jpg
          : jpg // ignore: cast_nullable_to_non_nullable
              as ImageUrls?,
      webp: freezed == webp
          ? _value.webp
          : webp // ignore: cast_nullable_to_non_nullable
              as ImageUrls?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimeImagesImpl implements _AnimeImages {
  const _$AnimeImagesImpl({required this.jpg, required this.webp});

  factory _$AnimeImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimeImagesImplFromJson(json);

  @override
  final ImageUrls? jpg;
  @override
  final ImageUrls? webp;

  @override
  String toString() {
    return 'AnimeImages(jpg: $jpg, webp: $webp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeImagesImpl &&
            (identical(other.jpg, jpg) || other.jpg == jpg) &&
            (identical(other.webp, webp) || other.webp == webp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jpg, webp);

  /// Create a copy of AnimeImages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeImagesImplCopyWith<_$AnimeImagesImpl> get copyWith =>
      __$$AnimeImagesImplCopyWithImpl<_$AnimeImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimeImagesImplToJson(
      this,
    );
  }
}

abstract class _AnimeImages implements AnimeImages {
  const factory _AnimeImages(
      {required final ImageUrls? jpg,
      required final ImageUrls? webp}) = _$AnimeImagesImpl;

  factory _AnimeImages.fromJson(Map<String, dynamic> json) =
      _$AnimeImagesImpl.fromJson;

  @override
  ImageUrls? get jpg;
  @override
  ImageUrls? get webp;

  /// Create a copy of AnimeImages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimeImagesImplCopyWith<_$AnimeImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageUrls _$ImageUrlsFromJson(Map<String, dynamic> json) {
  return _ImageUrls.fromJson(json);
}

/// @nodoc
mixin _$ImageUrls {
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'small_image_url')
  String? get smallImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'large_image_url')
  String? get largeImageUrl => throw _privateConstructorUsedError;

  /// Serializes this ImageUrls to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageUrlsCopyWith<ImageUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrlsCopyWith<$Res> {
  factory $ImageUrlsCopyWith(ImageUrls value, $Res Function(ImageUrls) then) =
      _$ImageUrlsCopyWithImpl<$Res, ImageUrls>;
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'small_image_url') String? smallImageUrl,
      @JsonKey(name: 'large_image_url') String? largeImageUrl});
}

/// @nodoc
class _$ImageUrlsCopyWithImpl<$Res, $Val extends ImageUrls>
    implements $ImageUrlsCopyWith<$Res> {
  _$ImageUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageUrls
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
abstract class _$$ImageUrlsImplCopyWith<$Res>
    implements $ImageUrlsCopyWith<$Res> {
  factory _$$ImageUrlsImplCopyWith(
          _$ImageUrlsImpl value, $Res Function(_$ImageUrlsImpl) then) =
      __$$ImageUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'small_image_url') String? smallImageUrl,
      @JsonKey(name: 'large_image_url') String? largeImageUrl});
}

/// @nodoc
class __$$ImageUrlsImplCopyWithImpl<$Res>
    extends _$ImageUrlsCopyWithImpl<$Res, _$ImageUrlsImpl>
    implements _$$ImageUrlsImplCopyWith<$Res> {
  __$$ImageUrlsImplCopyWithImpl(
      _$ImageUrlsImpl _value, $Res Function(_$ImageUrlsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? smallImageUrl = freezed,
    Object? largeImageUrl = freezed,
  }) {
    return _then(_$ImageUrlsImpl(
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
class _$ImageUrlsImpl implements _ImageUrls {
  const _$ImageUrlsImpl(
      {@JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'small_image_url') required this.smallImageUrl,
      @JsonKey(name: 'large_image_url') required this.largeImageUrl});

  factory _$ImageUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageUrlsImplFromJson(json);

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
    return 'ImageUrls(imageUrl: $imageUrl, smallImageUrl: $smallImageUrl, largeImageUrl: $largeImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUrlsImpl &&
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

  /// Create a copy of ImageUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUrlsImplCopyWith<_$ImageUrlsImpl> get copyWith =>
      __$$ImageUrlsImplCopyWithImpl<_$ImageUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUrlsImplToJson(
      this,
    );
  }
}

abstract class _ImageUrls implements ImageUrls {
  const factory _ImageUrls(
      {@JsonKey(name: 'image_url') required final String? imageUrl,
      @JsonKey(name: 'small_image_url') required final String? smallImageUrl,
      @JsonKey(name: 'large_image_url')
      required final String? largeImageUrl}) = _$ImageUrlsImpl;

  factory _ImageUrls.fromJson(Map<String, dynamic> json) =
      _$ImageUrlsImpl.fromJson;

  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'small_image_url')
  String? get smallImageUrl;
  @override
  @JsonKey(name: 'large_image_url')
  String? get largeImageUrl;

  /// Create a copy of ImageUrls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageUrlsImplCopyWith<_$ImageUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
