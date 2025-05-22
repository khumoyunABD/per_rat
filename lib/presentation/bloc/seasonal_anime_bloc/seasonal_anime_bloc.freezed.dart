// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seasonal_anime_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SeasonalAnimeEvent {
  int get limit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadCurrentSeason,
    required TResult Function(int limit) loadPreviousSeason,
    required TResult Function(int year, AnimeSeason season, int limit)
        loadSpecificSeason,
    required TResult Function(int limit) loadNextPage,
    required TResult Function(int limit) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadCurrentSeason,
    TResult? Function(int limit)? loadPreviousSeason,
    TResult? Function(int year, AnimeSeason season, int limit)?
        loadSpecificSeason,
    TResult? Function(int limit)? loadNextPage,
    TResult? Function(int limit)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadCurrentSeason,
    TResult Function(int limit)? loadPreviousSeason,
    TResult Function(int year, AnimeSeason season, int limit)?
        loadSpecificSeason,
    TResult Function(int limit)? loadNextPage,
    TResult Function(int limit)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentSeasonAnime value) loadCurrentSeason,
    required TResult Function(LoadPreviousSeasonAnime value) loadPreviousSeason,
    required TResult Function(LoadSpecificSeasonAnime value) loadSpecificSeason,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(RefreshSeasonalAnime value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentSeasonAnime value)? loadCurrentSeason,
    TResult? Function(LoadPreviousSeasonAnime value)? loadPreviousSeason,
    TResult? Function(LoadSpecificSeasonAnime value)? loadSpecificSeason,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(RefreshSeasonalAnime value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentSeasonAnime value)? loadCurrentSeason,
    TResult Function(LoadPreviousSeasonAnime value)? loadPreviousSeason,
    TResult Function(LoadSpecificSeasonAnime value)? loadSpecificSeason,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(RefreshSeasonalAnime value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeasonalAnimeEventCopyWith<SeasonalAnimeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonalAnimeEventCopyWith<$Res> {
  factory $SeasonalAnimeEventCopyWith(
          SeasonalAnimeEvent value, $Res Function(SeasonalAnimeEvent) then) =
      _$SeasonalAnimeEventCopyWithImpl<$Res, SeasonalAnimeEvent>;
  @useResult
  $Res call({int limit});
}

/// @nodoc
class _$SeasonalAnimeEventCopyWithImpl<$Res, $Val extends SeasonalAnimeEvent>
    implements $SeasonalAnimeEventCopyWith<$Res> {
  _$SeasonalAnimeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadCurrentSeasonAnimeImplCopyWith<$Res>
    implements $SeasonalAnimeEventCopyWith<$Res> {
  factory _$$LoadCurrentSeasonAnimeImplCopyWith(
          _$LoadCurrentSeasonAnimeImpl value,
          $Res Function(_$LoadCurrentSeasonAnimeImpl) then) =
      __$$LoadCurrentSeasonAnimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit});
}

/// @nodoc
class __$$LoadCurrentSeasonAnimeImplCopyWithImpl<$Res>
    extends _$SeasonalAnimeEventCopyWithImpl<$Res, _$LoadCurrentSeasonAnimeImpl>
    implements _$$LoadCurrentSeasonAnimeImplCopyWith<$Res> {
  __$$LoadCurrentSeasonAnimeImplCopyWithImpl(
      _$LoadCurrentSeasonAnimeImpl _value,
      $Res Function(_$LoadCurrentSeasonAnimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_$LoadCurrentSeasonAnimeImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadCurrentSeasonAnimeImpl implements LoadCurrentSeasonAnime {
  const _$LoadCurrentSeasonAnimeImpl({this.limit = 25});

  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'SeasonalAnimeEvent.loadCurrentSeason(limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCurrentSeasonAnimeImpl &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCurrentSeasonAnimeImplCopyWith<_$LoadCurrentSeasonAnimeImpl>
      get copyWith => __$$LoadCurrentSeasonAnimeImplCopyWithImpl<
          _$LoadCurrentSeasonAnimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadCurrentSeason,
    required TResult Function(int limit) loadPreviousSeason,
    required TResult Function(int year, AnimeSeason season, int limit)
        loadSpecificSeason,
    required TResult Function(int limit) loadNextPage,
    required TResult Function(int limit) refresh,
  }) {
    return loadCurrentSeason(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadCurrentSeason,
    TResult? Function(int limit)? loadPreviousSeason,
    TResult? Function(int year, AnimeSeason season, int limit)?
        loadSpecificSeason,
    TResult? Function(int limit)? loadNextPage,
    TResult? Function(int limit)? refresh,
  }) {
    return loadCurrentSeason?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadCurrentSeason,
    TResult Function(int limit)? loadPreviousSeason,
    TResult Function(int year, AnimeSeason season, int limit)?
        loadSpecificSeason,
    TResult Function(int limit)? loadNextPage,
    TResult Function(int limit)? refresh,
    required TResult orElse(),
  }) {
    if (loadCurrentSeason != null) {
      return loadCurrentSeason(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentSeasonAnime value) loadCurrentSeason,
    required TResult Function(LoadPreviousSeasonAnime value) loadPreviousSeason,
    required TResult Function(LoadSpecificSeasonAnime value) loadSpecificSeason,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(RefreshSeasonalAnime value) refresh,
  }) {
    return loadCurrentSeason(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentSeasonAnime value)? loadCurrentSeason,
    TResult? Function(LoadPreviousSeasonAnime value)? loadPreviousSeason,
    TResult? Function(LoadSpecificSeasonAnime value)? loadSpecificSeason,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(RefreshSeasonalAnime value)? refresh,
  }) {
    return loadCurrentSeason?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentSeasonAnime value)? loadCurrentSeason,
    TResult Function(LoadPreviousSeasonAnime value)? loadPreviousSeason,
    TResult Function(LoadSpecificSeasonAnime value)? loadSpecificSeason,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(RefreshSeasonalAnime value)? refresh,
    required TResult orElse(),
  }) {
    if (loadCurrentSeason != null) {
      return loadCurrentSeason(this);
    }
    return orElse();
  }
}

abstract class LoadCurrentSeasonAnime implements SeasonalAnimeEvent {
  const factory LoadCurrentSeasonAnime({final int limit}) =
      _$LoadCurrentSeasonAnimeImpl;

  @override
  int get limit;

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCurrentSeasonAnimeImplCopyWith<_$LoadCurrentSeasonAnimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadPreviousSeasonAnimeImplCopyWith<$Res>
    implements $SeasonalAnimeEventCopyWith<$Res> {
  factory _$$LoadPreviousSeasonAnimeImplCopyWith(
          _$LoadPreviousSeasonAnimeImpl value,
          $Res Function(_$LoadPreviousSeasonAnimeImpl) then) =
      __$$LoadPreviousSeasonAnimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit});
}

/// @nodoc
class __$$LoadPreviousSeasonAnimeImplCopyWithImpl<$Res>
    extends _$SeasonalAnimeEventCopyWithImpl<$Res,
        _$LoadPreviousSeasonAnimeImpl>
    implements _$$LoadPreviousSeasonAnimeImplCopyWith<$Res> {
  __$$LoadPreviousSeasonAnimeImplCopyWithImpl(
      _$LoadPreviousSeasonAnimeImpl _value,
      $Res Function(_$LoadPreviousSeasonAnimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_$LoadPreviousSeasonAnimeImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadPreviousSeasonAnimeImpl implements LoadPreviousSeasonAnime {
  const _$LoadPreviousSeasonAnimeImpl({this.limit = 25});

  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'SeasonalAnimeEvent.loadPreviousSeason(limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPreviousSeasonAnimeImpl &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPreviousSeasonAnimeImplCopyWith<_$LoadPreviousSeasonAnimeImpl>
      get copyWith => __$$LoadPreviousSeasonAnimeImplCopyWithImpl<
          _$LoadPreviousSeasonAnimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadCurrentSeason,
    required TResult Function(int limit) loadPreviousSeason,
    required TResult Function(int year, AnimeSeason season, int limit)
        loadSpecificSeason,
    required TResult Function(int limit) loadNextPage,
    required TResult Function(int limit) refresh,
  }) {
    return loadPreviousSeason(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadCurrentSeason,
    TResult? Function(int limit)? loadPreviousSeason,
    TResult? Function(int year, AnimeSeason season, int limit)?
        loadSpecificSeason,
    TResult? Function(int limit)? loadNextPage,
    TResult? Function(int limit)? refresh,
  }) {
    return loadPreviousSeason?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadCurrentSeason,
    TResult Function(int limit)? loadPreviousSeason,
    TResult Function(int year, AnimeSeason season, int limit)?
        loadSpecificSeason,
    TResult Function(int limit)? loadNextPage,
    TResult Function(int limit)? refresh,
    required TResult orElse(),
  }) {
    if (loadPreviousSeason != null) {
      return loadPreviousSeason(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentSeasonAnime value) loadCurrentSeason,
    required TResult Function(LoadPreviousSeasonAnime value) loadPreviousSeason,
    required TResult Function(LoadSpecificSeasonAnime value) loadSpecificSeason,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(RefreshSeasonalAnime value) refresh,
  }) {
    return loadPreviousSeason(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentSeasonAnime value)? loadCurrentSeason,
    TResult? Function(LoadPreviousSeasonAnime value)? loadPreviousSeason,
    TResult? Function(LoadSpecificSeasonAnime value)? loadSpecificSeason,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(RefreshSeasonalAnime value)? refresh,
  }) {
    return loadPreviousSeason?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentSeasonAnime value)? loadCurrentSeason,
    TResult Function(LoadPreviousSeasonAnime value)? loadPreviousSeason,
    TResult Function(LoadSpecificSeasonAnime value)? loadSpecificSeason,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(RefreshSeasonalAnime value)? refresh,
    required TResult orElse(),
  }) {
    if (loadPreviousSeason != null) {
      return loadPreviousSeason(this);
    }
    return orElse();
  }
}

abstract class LoadPreviousSeasonAnime implements SeasonalAnimeEvent {
  const factory LoadPreviousSeasonAnime({final int limit}) =
      _$LoadPreviousSeasonAnimeImpl;

  @override
  int get limit;

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadPreviousSeasonAnimeImplCopyWith<_$LoadPreviousSeasonAnimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSpecificSeasonAnimeImplCopyWith<$Res>
    implements $SeasonalAnimeEventCopyWith<$Res> {
  factory _$$LoadSpecificSeasonAnimeImplCopyWith(
          _$LoadSpecificSeasonAnimeImpl value,
          $Res Function(_$LoadSpecificSeasonAnimeImpl) then) =
      __$$LoadSpecificSeasonAnimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, AnimeSeason season, int limit});
}

/// @nodoc
class __$$LoadSpecificSeasonAnimeImplCopyWithImpl<$Res>
    extends _$SeasonalAnimeEventCopyWithImpl<$Res,
        _$LoadSpecificSeasonAnimeImpl>
    implements _$$LoadSpecificSeasonAnimeImplCopyWith<$Res> {
  __$$LoadSpecificSeasonAnimeImplCopyWithImpl(
      _$LoadSpecificSeasonAnimeImpl _value,
      $Res Function(_$LoadSpecificSeasonAnimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? season = null,
    Object? limit = null,
  }) {
    return _then(_$LoadSpecificSeasonAnimeImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as AnimeSeason,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadSpecificSeasonAnimeImpl implements LoadSpecificSeasonAnime {
  const _$LoadSpecificSeasonAnimeImpl(
      {required this.year, required this.season, this.limit = 25});

  @override
  final int year;
  @override
  final AnimeSeason season;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'SeasonalAnimeEvent.loadSpecificSeason(year: $year, season: $season, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSpecificSeasonAnimeImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year, season, limit);

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSpecificSeasonAnimeImplCopyWith<_$LoadSpecificSeasonAnimeImpl>
      get copyWith => __$$LoadSpecificSeasonAnimeImplCopyWithImpl<
          _$LoadSpecificSeasonAnimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadCurrentSeason,
    required TResult Function(int limit) loadPreviousSeason,
    required TResult Function(int year, AnimeSeason season, int limit)
        loadSpecificSeason,
    required TResult Function(int limit) loadNextPage,
    required TResult Function(int limit) refresh,
  }) {
    return loadSpecificSeason(year, season, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadCurrentSeason,
    TResult? Function(int limit)? loadPreviousSeason,
    TResult? Function(int year, AnimeSeason season, int limit)?
        loadSpecificSeason,
    TResult? Function(int limit)? loadNextPage,
    TResult? Function(int limit)? refresh,
  }) {
    return loadSpecificSeason?.call(year, season, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadCurrentSeason,
    TResult Function(int limit)? loadPreviousSeason,
    TResult Function(int year, AnimeSeason season, int limit)?
        loadSpecificSeason,
    TResult Function(int limit)? loadNextPage,
    TResult Function(int limit)? refresh,
    required TResult orElse(),
  }) {
    if (loadSpecificSeason != null) {
      return loadSpecificSeason(year, season, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentSeasonAnime value) loadCurrentSeason,
    required TResult Function(LoadPreviousSeasonAnime value) loadPreviousSeason,
    required TResult Function(LoadSpecificSeasonAnime value) loadSpecificSeason,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(RefreshSeasonalAnime value) refresh,
  }) {
    return loadSpecificSeason(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentSeasonAnime value)? loadCurrentSeason,
    TResult? Function(LoadPreviousSeasonAnime value)? loadPreviousSeason,
    TResult? Function(LoadSpecificSeasonAnime value)? loadSpecificSeason,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(RefreshSeasonalAnime value)? refresh,
  }) {
    return loadSpecificSeason?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentSeasonAnime value)? loadCurrentSeason,
    TResult Function(LoadPreviousSeasonAnime value)? loadPreviousSeason,
    TResult Function(LoadSpecificSeasonAnime value)? loadSpecificSeason,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(RefreshSeasonalAnime value)? refresh,
    required TResult orElse(),
  }) {
    if (loadSpecificSeason != null) {
      return loadSpecificSeason(this);
    }
    return orElse();
  }
}

abstract class LoadSpecificSeasonAnime implements SeasonalAnimeEvent {
  const factory LoadSpecificSeasonAnime(
      {required final int year,
      required final AnimeSeason season,
      final int limit}) = _$LoadSpecificSeasonAnimeImpl;

  int get year;
  AnimeSeason get season;
  @override
  int get limit;

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSpecificSeasonAnimeImplCopyWith<_$LoadSpecificSeasonAnimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadNextPageImplCopyWith<$Res>
    implements $SeasonalAnimeEventCopyWith<$Res> {
  factory _$$LoadNextPageImplCopyWith(
          _$LoadNextPageImpl value, $Res Function(_$LoadNextPageImpl) then) =
      __$$LoadNextPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit});
}

/// @nodoc
class __$$LoadNextPageImplCopyWithImpl<$Res>
    extends _$SeasonalAnimeEventCopyWithImpl<$Res, _$LoadNextPageImpl>
    implements _$$LoadNextPageImplCopyWith<$Res> {
  __$$LoadNextPageImplCopyWithImpl(
      _$LoadNextPageImpl _value, $Res Function(_$LoadNextPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_$LoadNextPageImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadNextPageImpl implements LoadNextPage {
  const _$LoadNextPageImpl({this.limit = 25});

  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'SeasonalAnimeEvent.loadNextPage(limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNextPageImpl &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadNextPageImplCopyWith<_$LoadNextPageImpl> get copyWith =>
      __$$LoadNextPageImplCopyWithImpl<_$LoadNextPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadCurrentSeason,
    required TResult Function(int limit) loadPreviousSeason,
    required TResult Function(int year, AnimeSeason season, int limit)
        loadSpecificSeason,
    required TResult Function(int limit) loadNextPage,
    required TResult Function(int limit) refresh,
  }) {
    return loadNextPage(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadCurrentSeason,
    TResult? Function(int limit)? loadPreviousSeason,
    TResult? Function(int year, AnimeSeason season, int limit)?
        loadSpecificSeason,
    TResult? Function(int limit)? loadNextPage,
    TResult? Function(int limit)? refresh,
  }) {
    return loadNextPage?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadCurrentSeason,
    TResult Function(int limit)? loadPreviousSeason,
    TResult Function(int year, AnimeSeason season, int limit)?
        loadSpecificSeason,
    TResult Function(int limit)? loadNextPage,
    TResult Function(int limit)? refresh,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentSeasonAnime value) loadCurrentSeason,
    required TResult Function(LoadPreviousSeasonAnime value) loadPreviousSeason,
    required TResult Function(LoadSpecificSeasonAnime value) loadSpecificSeason,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(RefreshSeasonalAnime value) refresh,
  }) {
    return loadNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentSeasonAnime value)? loadCurrentSeason,
    TResult? Function(LoadPreviousSeasonAnime value)? loadPreviousSeason,
    TResult? Function(LoadSpecificSeasonAnime value)? loadSpecificSeason,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(RefreshSeasonalAnime value)? refresh,
  }) {
    return loadNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentSeasonAnime value)? loadCurrentSeason,
    TResult Function(LoadPreviousSeasonAnime value)? loadPreviousSeason,
    TResult Function(LoadSpecificSeasonAnime value)? loadSpecificSeason,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(RefreshSeasonalAnime value)? refresh,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(this);
    }
    return orElse();
  }
}

abstract class LoadNextPage implements SeasonalAnimeEvent {
  const factory LoadNextPage({final int limit}) = _$LoadNextPageImpl;

  @override
  int get limit;

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadNextPageImplCopyWith<_$LoadNextPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshSeasonalAnimeImplCopyWith<$Res>
    implements $SeasonalAnimeEventCopyWith<$Res> {
  factory _$$RefreshSeasonalAnimeImplCopyWith(_$RefreshSeasonalAnimeImpl value,
          $Res Function(_$RefreshSeasonalAnimeImpl) then) =
      __$$RefreshSeasonalAnimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit});
}

/// @nodoc
class __$$RefreshSeasonalAnimeImplCopyWithImpl<$Res>
    extends _$SeasonalAnimeEventCopyWithImpl<$Res, _$RefreshSeasonalAnimeImpl>
    implements _$$RefreshSeasonalAnimeImplCopyWith<$Res> {
  __$$RefreshSeasonalAnimeImplCopyWithImpl(_$RefreshSeasonalAnimeImpl _value,
      $Res Function(_$RefreshSeasonalAnimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_$RefreshSeasonalAnimeImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RefreshSeasonalAnimeImpl implements RefreshSeasonalAnime {
  const _$RefreshSeasonalAnimeImpl({this.limit = 25});

  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'SeasonalAnimeEvent.refresh(limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshSeasonalAnimeImpl &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshSeasonalAnimeImplCopyWith<_$RefreshSeasonalAnimeImpl>
      get copyWith =>
          __$$RefreshSeasonalAnimeImplCopyWithImpl<_$RefreshSeasonalAnimeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadCurrentSeason,
    required TResult Function(int limit) loadPreviousSeason,
    required TResult Function(int year, AnimeSeason season, int limit)
        loadSpecificSeason,
    required TResult Function(int limit) loadNextPage,
    required TResult Function(int limit) refresh,
  }) {
    return refresh(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadCurrentSeason,
    TResult? Function(int limit)? loadPreviousSeason,
    TResult? Function(int year, AnimeSeason season, int limit)?
        loadSpecificSeason,
    TResult? Function(int limit)? loadNextPage,
    TResult? Function(int limit)? refresh,
  }) {
    return refresh?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadCurrentSeason,
    TResult Function(int limit)? loadPreviousSeason,
    TResult Function(int year, AnimeSeason season, int limit)?
        loadSpecificSeason,
    TResult Function(int limit)? loadNextPage,
    TResult Function(int limit)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCurrentSeasonAnime value) loadCurrentSeason,
    required TResult Function(LoadPreviousSeasonAnime value) loadPreviousSeason,
    required TResult Function(LoadSpecificSeasonAnime value) loadSpecificSeason,
    required TResult Function(LoadNextPage value) loadNextPage,
    required TResult Function(RefreshSeasonalAnime value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCurrentSeasonAnime value)? loadCurrentSeason,
    TResult? Function(LoadPreviousSeasonAnime value)? loadPreviousSeason,
    TResult? Function(LoadSpecificSeasonAnime value)? loadSpecificSeason,
    TResult? Function(LoadNextPage value)? loadNextPage,
    TResult? Function(RefreshSeasonalAnime value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCurrentSeasonAnime value)? loadCurrentSeason,
    TResult Function(LoadPreviousSeasonAnime value)? loadPreviousSeason,
    TResult Function(LoadSpecificSeasonAnime value)? loadSpecificSeason,
    TResult Function(LoadNextPage value)? loadNextPage,
    TResult Function(RefreshSeasonalAnime value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshSeasonalAnime implements SeasonalAnimeEvent {
  const factory RefreshSeasonalAnime({final int limit}) =
      _$RefreshSeasonalAnimeImpl;

  @override
  int get limit;

  /// Create a copy of SeasonalAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshSeasonalAnimeImplCopyWith<_$RefreshSeasonalAnimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SeasonInfo {
  int get year => throw _privateConstructorUsedError;
  AnimeSeason get season => throw _privateConstructorUsedError;
  bool get isCurrentSeason => throw _privateConstructorUsedError;

  /// Create a copy of SeasonInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeasonInfoCopyWith<SeasonInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonInfoCopyWith<$Res> {
  factory $SeasonInfoCopyWith(
          SeasonInfo value, $Res Function(SeasonInfo) then) =
      _$SeasonInfoCopyWithImpl<$Res, SeasonInfo>;
  @useResult
  $Res call({int year, AnimeSeason season, bool isCurrentSeason});
}

/// @nodoc
class _$SeasonInfoCopyWithImpl<$Res, $Val extends SeasonInfo>
    implements $SeasonInfoCopyWith<$Res> {
  _$SeasonInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeasonInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? season = null,
    Object? isCurrentSeason = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as AnimeSeason,
      isCurrentSeason: null == isCurrentSeason
          ? _value.isCurrentSeason
          : isCurrentSeason // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeasonInfoImplCopyWith<$Res>
    implements $SeasonInfoCopyWith<$Res> {
  factory _$$SeasonInfoImplCopyWith(
          _$SeasonInfoImpl value, $Res Function(_$SeasonInfoImpl) then) =
      __$$SeasonInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, AnimeSeason season, bool isCurrentSeason});
}

/// @nodoc
class __$$SeasonInfoImplCopyWithImpl<$Res>
    extends _$SeasonInfoCopyWithImpl<$Res, _$SeasonInfoImpl>
    implements _$$SeasonInfoImplCopyWith<$Res> {
  __$$SeasonInfoImplCopyWithImpl(
      _$SeasonInfoImpl _value, $Res Function(_$SeasonInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? season = null,
    Object? isCurrentSeason = null,
  }) {
    return _then(_$SeasonInfoImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as AnimeSeason,
      isCurrentSeason: null == isCurrentSeason
          ? _value.isCurrentSeason
          : isCurrentSeason // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SeasonInfoImpl extends _SeasonInfo {
  const _$SeasonInfoImpl(
      {required this.year, required this.season, required this.isCurrentSeason})
      : super._();

  @override
  final int year;
  @override
  final AnimeSeason season;
  @override
  final bool isCurrentSeason;

  @override
  String toString() {
    return 'SeasonInfo(year: $year, season: $season, isCurrentSeason: $isCurrentSeason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonInfoImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.isCurrentSeason, isCurrentSeason) ||
                other.isCurrentSeason == isCurrentSeason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year, season, isCurrentSeason);

  /// Create a copy of SeasonInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonInfoImplCopyWith<_$SeasonInfoImpl> get copyWith =>
      __$$SeasonInfoImplCopyWithImpl<_$SeasonInfoImpl>(this, _$identity);
}

abstract class _SeasonInfo extends SeasonInfo {
  const factory _SeasonInfo(
      {required final int year,
      required final AnimeSeason season,
      required final bool isCurrentSeason}) = _$SeasonInfoImpl;
  const _SeasonInfo._() : super._();

  @override
  int get year;
  @override
  AnimeSeason get season;
  @override
  bool get isCurrentSeason;

  /// Create a copy of SeasonInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonInfoImplCopyWith<_$SeasonInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SeasonalAnimeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)
        loaded,
    required TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)
        pageLoading,
    required TResult Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        loaded,
    TResult? Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        pageLoading,
    TResult? Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        loaded,
    TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        pageLoading,
    TResult Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeasonalAnimeInitial value) initial,
    required TResult Function(SeasonalAnimeLoading value) loading,
    required TResult Function(SeasonalAnimeLoaded value) loaded,
    required TResult Function(SeasonalAnimePageLoading value) pageLoading,
    required TResult Function(SeasonalAnimeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeasonalAnimeInitial value)? initial,
    TResult? Function(SeasonalAnimeLoading value)? loading,
    TResult? Function(SeasonalAnimeLoaded value)? loaded,
    TResult? Function(SeasonalAnimePageLoading value)? pageLoading,
    TResult? Function(SeasonalAnimeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeasonalAnimeInitial value)? initial,
    TResult Function(SeasonalAnimeLoading value)? loading,
    TResult Function(SeasonalAnimeLoaded value)? loaded,
    TResult Function(SeasonalAnimePageLoading value)? pageLoading,
    TResult Function(SeasonalAnimeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonalAnimeStateCopyWith<$Res> {
  factory $SeasonalAnimeStateCopyWith(
          SeasonalAnimeState value, $Res Function(SeasonalAnimeState) then) =
      _$SeasonalAnimeStateCopyWithImpl<$Res, SeasonalAnimeState>;
}

/// @nodoc
class _$SeasonalAnimeStateCopyWithImpl<$Res, $Val extends SeasonalAnimeState>
    implements $SeasonalAnimeStateCopyWith<$Res> {
  _$SeasonalAnimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SeasonalAnimeInitialImplCopyWith<$Res> {
  factory _$$SeasonalAnimeInitialImplCopyWith(_$SeasonalAnimeInitialImpl value,
          $Res Function(_$SeasonalAnimeInitialImpl) then) =
      __$$SeasonalAnimeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SeasonalAnimeInitialImplCopyWithImpl<$Res>
    extends _$SeasonalAnimeStateCopyWithImpl<$Res, _$SeasonalAnimeInitialImpl>
    implements _$$SeasonalAnimeInitialImplCopyWith<$Res> {
  __$$SeasonalAnimeInitialImplCopyWithImpl(_$SeasonalAnimeInitialImpl _value,
      $Res Function(_$SeasonalAnimeInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SeasonalAnimeInitialImpl extends SeasonalAnimeInitial {
  const _$SeasonalAnimeInitialImpl() : super._();

  @override
  String toString() {
    return 'SeasonalAnimeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonalAnimeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)
        loaded,
    required TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)
        pageLoading,
    required TResult Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        loaded,
    TResult? Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        pageLoading,
    TResult? Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        loaded,
    TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        pageLoading,
    TResult Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeasonalAnimeInitial value) initial,
    required TResult Function(SeasonalAnimeLoading value) loading,
    required TResult Function(SeasonalAnimeLoaded value) loaded,
    required TResult Function(SeasonalAnimePageLoading value) pageLoading,
    required TResult Function(SeasonalAnimeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeasonalAnimeInitial value)? initial,
    TResult? Function(SeasonalAnimeLoading value)? loading,
    TResult? Function(SeasonalAnimeLoaded value)? loaded,
    TResult? Function(SeasonalAnimePageLoading value)? pageLoading,
    TResult? Function(SeasonalAnimeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeasonalAnimeInitial value)? initial,
    TResult Function(SeasonalAnimeLoading value)? loading,
    TResult Function(SeasonalAnimeLoaded value)? loaded,
    TResult Function(SeasonalAnimePageLoading value)? pageLoading,
    TResult Function(SeasonalAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SeasonalAnimeInitial extends SeasonalAnimeState {
  const factory SeasonalAnimeInitial() = _$SeasonalAnimeInitialImpl;
  const SeasonalAnimeInitial._() : super._();
}

/// @nodoc
abstract class _$$SeasonalAnimeLoadingImplCopyWith<$Res> {
  factory _$$SeasonalAnimeLoadingImplCopyWith(_$SeasonalAnimeLoadingImpl value,
          $Res Function(_$SeasonalAnimeLoadingImpl) then) =
      __$$SeasonalAnimeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SeasonalAnimeLoadingImplCopyWithImpl<$Res>
    extends _$SeasonalAnimeStateCopyWithImpl<$Res, _$SeasonalAnimeLoadingImpl>
    implements _$$SeasonalAnimeLoadingImplCopyWith<$Res> {
  __$$SeasonalAnimeLoadingImplCopyWithImpl(_$SeasonalAnimeLoadingImpl _value,
      $Res Function(_$SeasonalAnimeLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SeasonalAnimeLoadingImpl extends SeasonalAnimeLoading {
  const _$SeasonalAnimeLoadingImpl() : super._();

  @override
  String toString() {
    return 'SeasonalAnimeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonalAnimeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)
        loaded,
    required TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)
        pageLoading,
    required TResult Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        loaded,
    TResult? Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        pageLoading,
    TResult? Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)?
        error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        loaded,
    TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        pageLoading,
    TResult Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeasonalAnimeInitial value) initial,
    required TResult Function(SeasonalAnimeLoading value) loading,
    required TResult Function(SeasonalAnimeLoaded value) loaded,
    required TResult Function(SeasonalAnimePageLoading value) pageLoading,
    required TResult Function(SeasonalAnimeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeasonalAnimeInitial value)? initial,
    TResult? Function(SeasonalAnimeLoading value)? loading,
    TResult? Function(SeasonalAnimeLoaded value)? loaded,
    TResult? Function(SeasonalAnimePageLoading value)? pageLoading,
    TResult? Function(SeasonalAnimeError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeasonalAnimeInitial value)? initial,
    TResult Function(SeasonalAnimeLoading value)? loading,
    TResult Function(SeasonalAnimeLoaded value)? loaded,
    TResult Function(SeasonalAnimePageLoading value)? pageLoading,
    TResult Function(SeasonalAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SeasonalAnimeLoading extends SeasonalAnimeState {
  const factory SeasonalAnimeLoading() = _$SeasonalAnimeLoadingImpl;
  const SeasonalAnimeLoading._() : super._();
}

/// @nodoc
abstract class _$$SeasonalAnimeLoadedImplCopyWith<$Res> {
  factory _$$SeasonalAnimeLoadedImplCopyWith(_$SeasonalAnimeLoadedImpl value,
          $Res Function(_$SeasonalAnimeLoadedImpl) then) =
      __$$SeasonalAnimeLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Anime> animeList,
      Pagination pagination,
      int currentPage,
      SeasonInfo seasonInfo});

  $PaginationCopyWith<$Res> get pagination;
  $SeasonInfoCopyWith<$Res> get seasonInfo;
}

/// @nodoc
class __$$SeasonalAnimeLoadedImplCopyWithImpl<$Res>
    extends _$SeasonalAnimeStateCopyWithImpl<$Res, _$SeasonalAnimeLoadedImpl>
    implements _$$SeasonalAnimeLoadedImplCopyWith<$Res> {
  __$$SeasonalAnimeLoadedImplCopyWithImpl(_$SeasonalAnimeLoadedImpl _value,
      $Res Function(_$SeasonalAnimeLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animeList = null,
    Object? pagination = null,
    Object? currentPage = null,
    Object? seasonInfo = null,
  }) {
    return _then(_$SeasonalAnimeLoadedImpl(
      animeList: null == animeList
          ? _value._animeList
          : animeList // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      seasonInfo: null == seasonInfo
          ? _value.seasonInfo
          : seasonInfo // ignore: cast_nullable_to_non_nullable
              as SeasonInfo,
    ));
  }

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SeasonInfoCopyWith<$Res> get seasonInfo {
    return $SeasonInfoCopyWith<$Res>(_value.seasonInfo, (value) {
      return _then(_value.copyWith(seasonInfo: value));
    });
  }
}

/// @nodoc

class _$SeasonalAnimeLoadedImpl extends SeasonalAnimeLoaded {
  const _$SeasonalAnimeLoadedImpl(
      {required final List<Anime> animeList,
      required this.pagination,
      required this.currentPage,
      required this.seasonInfo})
      : _animeList = animeList,
        super._();

  final List<Anime> _animeList;
  @override
  List<Anime> get animeList {
    if (_animeList is EqualUnmodifiableListView) return _animeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animeList);
  }

  @override
  final Pagination pagination;
  @override
  final int currentPage;
  @override
  final SeasonInfo seasonInfo;

  @override
  String toString() {
    return 'SeasonalAnimeState.loaded(animeList: $animeList, pagination: $pagination, currentPage: $currentPage, seasonInfo: $seasonInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonalAnimeLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._animeList, _animeList) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.seasonInfo, seasonInfo) ||
                other.seasonInfo == seasonInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_animeList),
      pagination,
      currentPage,
      seasonInfo);

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonalAnimeLoadedImplCopyWith<_$SeasonalAnimeLoadedImpl> get copyWith =>
      __$$SeasonalAnimeLoadedImplCopyWithImpl<_$SeasonalAnimeLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)
        loaded,
    required TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)
        pageLoading,
    required TResult Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)
        error,
  }) {
    return loaded(animeList, pagination, currentPage, seasonInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        loaded,
    TResult? Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        pageLoading,
    TResult? Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)?
        error,
  }) {
    return loaded?.call(animeList, pagination, currentPage, seasonInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        loaded,
    TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        pageLoading,
    TResult Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(animeList, pagination, currentPage, seasonInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeasonalAnimeInitial value) initial,
    required TResult Function(SeasonalAnimeLoading value) loading,
    required TResult Function(SeasonalAnimeLoaded value) loaded,
    required TResult Function(SeasonalAnimePageLoading value) pageLoading,
    required TResult Function(SeasonalAnimeError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeasonalAnimeInitial value)? initial,
    TResult? Function(SeasonalAnimeLoading value)? loading,
    TResult? Function(SeasonalAnimeLoaded value)? loaded,
    TResult? Function(SeasonalAnimePageLoading value)? pageLoading,
    TResult? Function(SeasonalAnimeError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeasonalAnimeInitial value)? initial,
    TResult Function(SeasonalAnimeLoading value)? loading,
    TResult Function(SeasonalAnimeLoaded value)? loaded,
    TResult Function(SeasonalAnimePageLoading value)? pageLoading,
    TResult Function(SeasonalAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SeasonalAnimeLoaded extends SeasonalAnimeState {
  const factory SeasonalAnimeLoaded(
      {required final List<Anime> animeList,
      required final Pagination pagination,
      required final int currentPage,
      required final SeasonInfo seasonInfo}) = _$SeasonalAnimeLoadedImpl;
  const SeasonalAnimeLoaded._() : super._();

  List<Anime> get animeList;
  Pagination get pagination;
  int get currentPage;
  SeasonInfo get seasonInfo;

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonalAnimeLoadedImplCopyWith<_$SeasonalAnimeLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SeasonalAnimePageLoadingImplCopyWith<$Res> {
  factory _$$SeasonalAnimePageLoadingImplCopyWith(
          _$SeasonalAnimePageLoadingImpl value,
          $Res Function(_$SeasonalAnimePageLoadingImpl) then) =
      __$$SeasonalAnimePageLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Anime> animeList,
      Pagination pagination,
      int currentPage,
      SeasonInfo seasonInfo});

  $PaginationCopyWith<$Res> get pagination;
  $SeasonInfoCopyWith<$Res> get seasonInfo;
}

/// @nodoc
class __$$SeasonalAnimePageLoadingImplCopyWithImpl<$Res>
    extends _$SeasonalAnimeStateCopyWithImpl<$Res,
        _$SeasonalAnimePageLoadingImpl>
    implements _$$SeasonalAnimePageLoadingImplCopyWith<$Res> {
  __$$SeasonalAnimePageLoadingImplCopyWithImpl(
      _$SeasonalAnimePageLoadingImpl _value,
      $Res Function(_$SeasonalAnimePageLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animeList = null,
    Object? pagination = null,
    Object? currentPage = null,
    Object? seasonInfo = null,
  }) {
    return _then(_$SeasonalAnimePageLoadingImpl(
      animeList: null == animeList
          ? _value._animeList
          : animeList // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      seasonInfo: null == seasonInfo
          ? _value.seasonInfo
          : seasonInfo // ignore: cast_nullable_to_non_nullable
              as SeasonInfo,
    ));
  }

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SeasonInfoCopyWith<$Res> get seasonInfo {
    return $SeasonInfoCopyWith<$Res>(_value.seasonInfo, (value) {
      return _then(_value.copyWith(seasonInfo: value));
    });
  }
}

/// @nodoc

class _$SeasonalAnimePageLoadingImpl extends SeasonalAnimePageLoading {
  const _$SeasonalAnimePageLoadingImpl(
      {required final List<Anime> animeList,
      required this.pagination,
      required this.currentPage,
      required this.seasonInfo})
      : _animeList = animeList,
        super._();

  final List<Anime> _animeList;
  @override
  List<Anime> get animeList {
    if (_animeList is EqualUnmodifiableListView) return _animeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animeList);
  }

  @override
  final Pagination pagination;
  @override
  final int currentPage;
  @override
  final SeasonInfo seasonInfo;

  @override
  String toString() {
    return 'SeasonalAnimeState.pageLoading(animeList: $animeList, pagination: $pagination, currentPage: $currentPage, seasonInfo: $seasonInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonalAnimePageLoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._animeList, _animeList) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.seasonInfo, seasonInfo) ||
                other.seasonInfo == seasonInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_animeList),
      pagination,
      currentPage,
      seasonInfo);

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonalAnimePageLoadingImplCopyWith<_$SeasonalAnimePageLoadingImpl>
      get copyWith => __$$SeasonalAnimePageLoadingImplCopyWithImpl<
          _$SeasonalAnimePageLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)
        loaded,
    required TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)
        pageLoading,
    required TResult Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)
        error,
  }) {
    return pageLoading(animeList, pagination, currentPage, seasonInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        loaded,
    TResult? Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        pageLoading,
    TResult? Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)?
        error,
  }) {
    return pageLoading?.call(animeList, pagination, currentPage, seasonInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        loaded,
    TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        pageLoading,
    TResult Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)?
        error,
    required TResult orElse(),
  }) {
    if (pageLoading != null) {
      return pageLoading(animeList, pagination, currentPage, seasonInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeasonalAnimeInitial value) initial,
    required TResult Function(SeasonalAnimeLoading value) loading,
    required TResult Function(SeasonalAnimeLoaded value) loaded,
    required TResult Function(SeasonalAnimePageLoading value) pageLoading,
    required TResult Function(SeasonalAnimeError value) error,
  }) {
    return pageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeasonalAnimeInitial value)? initial,
    TResult? Function(SeasonalAnimeLoading value)? loading,
    TResult? Function(SeasonalAnimeLoaded value)? loaded,
    TResult? Function(SeasonalAnimePageLoading value)? pageLoading,
    TResult? Function(SeasonalAnimeError value)? error,
  }) {
    return pageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeasonalAnimeInitial value)? initial,
    TResult Function(SeasonalAnimeLoading value)? loading,
    TResult Function(SeasonalAnimeLoaded value)? loaded,
    TResult Function(SeasonalAnimePageLoading value)? pageLoading,
    TResult Function(SeasonalAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (pageLoading != null) {
      return pageLoading(this);
    }
    return orElse();
  }
}

abstract class SeasonalAnimePageLoading extends SeasonalAnimeState {
  const factory SeasonalAnimePageLoading(
      {required final List<Anime> animeList,
      required final Pagination pagination,
      required final int currentPage,
      required final SeasonInfo seasonInfo}) = _$SeasonalAnimePageLoadingImpl;
  const SeasonalAnimePageLoading._() : super._();

  List<Anime> get animeList;
  Pagination get pagination;
  int get currentPage;
  SeasonInfo get seasonInfo;

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonalAnimePageLoadingImplCopyWith<_$SeasonalAnimePageLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SeasonalAnimeErrorImplCopyWith<$Res> {
  factory _$$SeasonalAnimeErrorImplCopyWith(_$SeasonalAnimeErrorImpl value,
          $Res Function(_$SeasonalAnimeErrorImpl) then) =
      __$$SeasonalAnimeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String message,
      List<Anime>? previousList,
      Pagination? previousPagination,
      int? previousPage,
      SeasonInfo? previousSeasonInfo});

  $PaginationCopyWith<$Res>? get previousPagination;
  $SeasonInfoCopyWith<$Res>? get previousSeasonInfo;
}

/// @nodoc
class __$$SeasonalAnimeErrorImplCopyWithImpl<$Res>
    extends _$SeasonalAnimeStateCopyWithImpl<$Res, _$SeasonalAnimeErrorImpl>
    implements _$$SeasonalAnimeErrorImplCopyWith<$Res> {
  __$$SeasonalAnimeErrorImplCopyWithImpl(_$SeasonalAnimeErrorImpl _value,
      $Res Function(_$SeasonalAnimeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? previousList = freezed,
    Object? previousPagination = freezed,
    Object? previousPage = freezed,
    Object? previousSeasonInfo = freezed,
  }) {
    return _then(_$SeasonalAnimeErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      previousList: freezed == previousList
          ? _value._previousList
          : previousList // ignore: cast_nullable_to_non_nullable
              as List<Anime>?,
      previousPagination: freezed == previousPagination
          ? _value.previousPagination
          : previousPagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      previousPage: freezed == previousPage
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int?,
      previousSeasonInfo: freezed == previousSeasonInfo
          ? _value.previousSeasonInfo
          : previousSeasonInfo // ignore: cast_nullable_to_non_nullable
              as SeasonInfo?,
    ));
  }

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get previousPagination {
    if (_value.previousPagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.previousPagination!, (value) {
      return _then(_value.copyWith(previousPagination: value));
    });
  }

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SeasonInfoCopyWith<$Res>? get previousSeasonInfo {
    if (_value.previousSeasonInfo == null) {
      return null;
    }

    return $SeasonInfoCopyWith<$Res>(_value.previousSeasonInfo!, (value) {
      return _then(_value.copyWith(previousSeasonInfo: value));
    });
  }
}

/// @nodoc

class _$SeasonalAnimeErrorImpl extends SeasonalAnimeError {
  const _$SeasonalAnimeErrorImpl(this.message,
      {final List<Anime>? previousList,
      this.previousPagination,
      this.previousPage,
      this.previousSeasonInfo})
      : _previousList = previousList,
        super._();

  @override
  final String message;
  final List<Anime>? _previousList;
  @override
  List<Anime>? get previousList {
    final value = _previousList;
    if (value == null) return null;
    if (_previousList is EqualUnmodifiableListView) return _previousList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Pagination? previousPagination;
  @override
  final int? previousPage;
  @override
  final SeasonInfo? previousSeasonInfo;

  @override
  String toString() {
    return 'SeasonalAnimeState.error(message: $message, previousList: $previousList, previousPagination: $previousPagination, previousPage: $previousPage, previousSeasonInfo: $previousSeasonInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonalAnimeErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._previousList, _previousList) &&
            (identical(other.previousPagination, previousPagination) ||
                other.previousPagination == previousPagination) &&
            (identical(other.previousPage, previousPage) ||
                other.previousPage == previousPage) &&
            (identical(other.previousSeasonInfo, previousSeasonInfo) ||
                other.previousSeasonInfo == previousSeasonInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_previousList),
      previousPagination,
      previousPage,
      previousSeasonInfo);

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonalAnimeErrorImplCopyWith<_$SeasonalAnimeErrorImpl> get copyWith =>
      __$$SeasonalAnimeErrorImplCopyWithImpl<_$SeasonalAnimeErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)
        loaded,
    required TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)
        pageLoading,
    required TResult Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)
        error,
  }) {
    return error(message, previousList, previousPagination, previousPage,
        previousSeasonInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        loaded,
    TResult? Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        pageLoading,
    TResult? Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)?
        error,
  }) {
    return error?.call(message, previousList, previousPagination, previousPage,
        previousSeasonInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        loaded,
    TResult Function(List<Anime> animeList, Pagination pagination,
            int currentPage, SeasonInfo seasonInfo)?
        pageLoading,
    TResult Function(
            String message,
            List<Anime>? previousList,
            Pagination? previousPagination,
            int? previousPage,
            SeasonInfo? previousSeasonInfo)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, previousList, previousPagination, previousPage,
          previousSeasonInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SeasonalAnimeInitial value) initial,
    required TResult Function(SeasonalAnimeLoading value) loading,
    required TResult Function(SeasonalAnimeLoaded value) loaded,
    required TResult Function(SeasonalAnimePageLoading value) pageLoading,
    required TResult Function(SeasonalAnimeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SeasonalAnimeInitial value)? initial,
    TResult? Function(SeasonalAnimeLoading value)? loading,
    TResult? Function(SeasonalAnimeLoaded value)? loaded,
    TResult? Function(SeasonalAnimePageLoading value)? pageLoading,
    TResult? Function(SeasonalAnimeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SeasonalAnimeInitial value)? initial,
    TResult Function(SeasonalAnimeLoading value)? loading,
    TResult Function(SeasonalAnimeLoaded value)? loaded,
    TResult Function(SeasonalAnimePageLoading value)? pageLoading,
    TResult Function(SeasonalAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SeasonalAnimeError extends SeasonalAnimeState {
  const factory SeasonalAnimeError(final String message,
      {final List<Anime>? previousList,
      final Pagination? previousPagination,
      final int? previousPage,
      final SeasonInfo? previousSeasonInfo}) = _$SeasonalAnimeErrorImpl;
  const SeasonalAnimeError._() : super._();

  String get message;
  List<Anime>? get previousList;
  Pagination? get previousPagination;
  int? get previousPage;
  SeasonInfo? get previousSeasonInfo;

  /// Create a copy of SeasonalAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonalAnimeErrorImplCopyWith<_$SeasonalAnimeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
