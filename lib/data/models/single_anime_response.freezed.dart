// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_anime_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleAnimeResponse _$SingleAnimeResponseFromJson(Map<String, dynamic> json) {
  return _SingleAnimeResponse.fromJson(json);
}

/// @nodoc
mixin _$SingleAnimeResponse {
  Anime get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleAnimeResponseCopyWith<SingleAnimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleAnimeResponseCopyWith<$Res> {
  factory $SingleAnimeResponseCopyWith(
          SingleAnimeResponse value, $Res Function(SingleAnimeResponse) then) =
      _$SingleAnimeResponseCopyWithImpl<$Res, SingleAnimeResponse>;
  @useResult
  $Res call({Anime data});

  $AnimeCopyWith<$Res> get data;
}

/// @nodoc
class _$SingleAnimeResponseCopyWithImpl<$Res, $Val extends SingleAnimeResponse>
    implements $SingleAnimeResponseCopyWith<$Res> {
  _$SingleAnimeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Anime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimeCopyWith<$Res> get data {
    return $AnimeCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SingleAnimeResponseImplCopyWith<$Res>
    implements $SingleAnimeResponseCopyWith<$Res> {
  factory _$$SingleAnimeResponseImplCopyWith(_$SingleAnimeResponseImpl value,
          $Res Function(_$SingleAnimeResponseImpl) then) =
      __$$SingleAnimeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Anime data});

  @override
  $AnimeCopyWith<$Res> get data;
}

/// @nodoc
class __$$SingleAnimeResponseImplCopyWithImpl<$Res>
    extends _$SingleAnimeResponseCopyWithImpl<$Res, _$SingleAnimeResponseImpl>
    implements _$$SingleAnimeResponseImplCopyWith<$Res> {
  __$$SingleAnimeResponseImplCopyWithImpl(_$SingleAnimeResponseImpl _value,
      $Res Function(_$SingleAnimeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SingleAnimeResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Anime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleAnimeResponseImpl implements _SingleAnimeResponse {
  const _$SingleAnimeResponseImpl({required this.data});

  factory _$SingleAnimeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleAnimeResponseImplFromJson(json);

  @override
  final Anime data;

  @override
  String toString() {
    return 'SingleAnimeResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleAnimeResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleAnimeResponseImplCopyWith<_$SingleAnimeResponseImpl> get copyWith =>
      __$$SingleAnimeResponseImplCopyWithImpl<_$SingleAnimeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleAnimeResponseImplToJson(
      this,
    );
  }
}

abstract class _SingleAnimeResponse implements SingleAnimeResponse {
  const factory _SingleAnimeResponse({required final Anime data}) =
      _$SingleAnimeResponseImpl;

  factory _SingleAnimeResponse.fromJson(Map<String, dynamic> json) =
      _$SingleAnimeResponseImpl.fromJson;

  @override
  Anime get data;
  @override
  @JsonKey(ignore: true)
  _$$SingleAnimeResponseImplCopyWith<_$SingleAnimeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
