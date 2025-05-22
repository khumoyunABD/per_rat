// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seasonal_anime_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeasonalAnimeResponse _$SeasonalAnimeResponseFromJson(
    Map<String, dynamic> json) {
  return _SeasonalAnimeResponse.fromJson(json);
}

/// @nodoc
mixin _$SeasonalAnimeResponse {
  Pagination get pagination => throw _privateConstructorUsedError;
  List<Anime> get data => throw _privateConstructorUsedError;

  /// Serializes this SeasonalAnimeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeasonalAnimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeasonalAnimeResponseCopyWith<SeasonalAnimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonalAnimeResponseCopyWith<$Res> {
  factory $SeasonalAnimeResponseCopyWith(SeasonalAnimeResponse value,
          $Res Function(SeasonalAnimeResponse) then) =
      _$SeasonalAnimeResponseCopyWithImpl<$Res, SeasonalAnimeResponse>;
  @useResult
  $Res call({Pagination pagination, List<Anime> data});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$SeasonalAnimeResponseCopyWithImpl<$Res,
        $Val extends SeasonalAnimeResponse>
    implements $SeasonalAnimeResponseCopyWith<$Res> {
  _$SeasonalAnimeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeasonalAnimeResponse
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

  /// Create a copy of SeasonalAnimeResponse
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
abstract class _$$SeasonalAnimeResponseImplCopyWith<$Res>
    implements $SeasonalAnimeResponseCopyWith<$Res> {
  factory _$$SeasonalAnimeResponseImplCopyWith(
          _$SeasonalAnimeResponseImpl value,
          $Res Function(_$SeasonalAnimeResponseImpl) then) =
      __$$SeasonalAnimeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pagination pagination, List<Anime> data});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$SeasonalAnimeResponseImplCopyWithImpl<$Res>
    extends _$SeasonalAnimeResponseCopyWithImpl<$Res,
        _$SeasonalAnimeResponseImpl>
    implements _$$SeasonalAnimeResponseImplCopyWith<$Res> {
  __$$SeasonalAnimeResponseImplCopyWithImpl(_$SeasonalAnimeResponseImpl _value,
      $Res Function(_$SeasonalAnimeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonalAnimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
    Object? data = null,
  }) {
    return _then(_$SeasonalAnimeResponseImpl(
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
class _$SeasonalAnimeResponseImpl implements _SeasonalAnimeResponse {
  const _$SeasonalAnimeResponseImpl(
      {required this.pagination, required final List<Anime> data})
      : _data = data;

  factory _$SeasonalAnimeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonalAnimeResponseImplFromJson(json);

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
    return 'SeasonalAnimeResponse(pagination: $pagination, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonalAnimeResponseImpl &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, pagination, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SeasonalAnimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonalAnimeResponseImplCopyWith<_$SeasonalAnimeResponseImpl>
      get copyWith => __$$SeasonalAnimeResponseImplCopyWithImpl<
          _$SeasonalAnimeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonalAnimeResponseImplToJson(
      this,
    );
  }
}

abstract class _SeasonalAnimeResponse implements SeasonalAnimeResponse {
  const factory _SeasonalAnimeResponse(
      {required final Pagination pagination,
      required final List<Anime> data}) = _$SeasonalAnimeResponseImpl;

  factory _SeasonalAnimeResponse.fromJson(Map<String, dynamic> json) =
      _$SeasonalAnimeResponseImpl.fromJson;

  @override
  Pagination get pagination;
  @override
  List<Anime> get data;

  /// Create a copy of SeasonalAnimeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonalAnimeResponseImplCopyWith<_$SeasonalAnimeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
