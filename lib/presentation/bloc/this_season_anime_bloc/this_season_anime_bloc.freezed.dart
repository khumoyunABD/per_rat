// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'this_season_anime_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThisSeasonAnimeEvent {
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, int? limit) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, int? limit)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, int? limit)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchThisSeasonAnimeEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchThisSeasonAnimeEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchThisSeasonAnimeEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ThisSeasonAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThisSeasonAnimeEventCopyWith<ThisSeasonAnimeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThisSeasonAnimeEventCopyWith<$Res> {
  factory $ThisSeasonAnimeEventCopyWith(ThisSeasonAnimeEvent value,
          $Res Function(ThisSeasonAnimeEvent) then) =
      _$ThisSeasonAnimeEventCopyWithImpl<$Res, ThisSeasonAnimeEvent>;
  @useResult
  $Res call({int? page, int? limit});
}

/// @nodoc
class _$ThisSeasonAnimeEventCopyWithImpl<$Res,
        $Val extends ThisSeasonAnimeEvent>
    implements $ThisSeasonAnimeEventCopyWith<$Res> {
  _$ThisSeasonAnimeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThisSeasonAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchThisSeasonAnimeEventImplCopyWith<$Res>
    implements $ThisSeasonAnimeEventCopyWith<$Res> {
  factory _$$FetchThisSeasonAnimeEventImplCopyWith(
          _$FetchThisSeasonAnimeEventImpl value,
          $Res Function(_$FetchThisSeasonAnimeEventImpl) then) =
      __$$FetchThisSeasonAnimeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page, int? limit});
}

/// @nodoc
class __$$FetchThisSeasonAnimeEventImplCopyWithImpl<$Res>
    extends _$ThisSeasonAnimeEventCopyWithImpl<$Res,
        _$FetchThisSeasonAnimeEventImpl>
    implements _$$FetchThisSeasonAnimeEventImplCopyWith<$Res> {
  __$$FetchThisSeasonAnimeEventImplCopyWithImpl(
      _$FetchThisSeasonAnimeEventImpl _value,
      $Res Function(_$FetchThisSeasonAnimeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThisSeasonAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$FetchThisSeasonAnimeEventImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FetchThisSeasonAnimeEventImpl implements FetchThisSeasonAnimeEvent {
  const _$FetchThisSeasonAnimeEventImpl({this.page, this.limit});

  @override
  final int? page;
  @override
  final int? limit;

  @override
  String toString() {
    return 'ThisSeasonAnimeEvent.fetch(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchThisSeasonAnimeEventImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, limit);

  /// Create a copy of ThisSeasonAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchThisSeasonAnimeEventImplCopyWith<_$FetchThisSeasonAnimeEventImpl>
      get copyWith => __$$FetchThisSeasonAnimeEventImplCopyWithImpl<
          _$FetchThisSeasonAnimeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, int? limit) fetch,
  }) {
    return fetch(page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, int? limit)? fetch,
  }) {
    return fetch?.call(page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, int? limit)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchThisSeasonAnimeEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchThisSeasonAnimeEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchThisSeasonAnimeEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchThisSeasonAnimeEvent implements ThisSeasonAnimeEvent {
  const factory FetchThisSeasonAnimeEvent({final int? page, final int? limit}) =
      _$FetchThisSeasonAnimeEventImpl;

  @override
  int? get page;
  @override
  int? get limit;

  /// Create a copy of ThisSeasonAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchThisSeasonAnimeEventImplCopyWith<_$FetchThisSeasonAnimeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThisSeasonAnimeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SeasonalAnimeResponse seasonalAnimeResponse)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SeasonalAnimeResponse seasonalAnimeResponse)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SeasonalAnimeResponse seasonalAnimeResponse)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThisSeasonAnimeInitial value) initial,
    required TResult Function(ThisSeasonAnimeLoading value) loading,
    required TResult Function(ThisSeasonAnimeLoaded value) loaded,
    required TResult Function(ThisSeasonAnimeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThisSeasonAnimeInitial value)? initial,
    TResult? Function(ThisSeasonAnimeLoading value)? loading,
    TResult? Function(ThisSeasonAnimeLoaded value)? loaded,
    TResult? Function(ThisSeasonAnimeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThisSeasonAnimeInitial value)? initial,
    TResult Function(ThisSeasonAnimeLoading value)? loading,
    TResult Function(ThisSeasonAnimeLoaded value)? loaded,
    TResult Function(ThisSeasonAnimeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThisSeasonAnimeStateCopyWith<$Res> {
  factory $ThisSeasonAnimeStateCopyWith(ThisSeasonAnimeState value,
          $Res Function(ThisSeasonAnimeState) then) =
      _$ThisSeasonAnimeStateCopyWithImpl<$Res, ThisSeasonAnimeState>;
}

/// @nodoc
class _$ThisSeasonAnimeStateCopyWithImpl<$Res,
        $Val extends ThisSeasonAnimeState>
    implements $ThisSeasonAnimeStateCopyWith<$Res> {
  _$ThisSeasonAnimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThisSeasonAnimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ThisSeasonAnimeInitialImplCopyWith<$Res> {
  factory _$$ThisSeasonAnimeInitialImplCopyWith(
          _$ThisSeasonAnimeInitialImpl value,
          $Res Function(_$ThisSeasonAnimeInitialImpl) then) =
      __$$ThisSeasonAnimeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThisSeasonAnimeInitialImplCopyWithImpl<$Res>
    extends _$ThisSeasonAnimeStateCopyWithImpl<$Res,
        _$ThisSeasonAnimeInitialImpl>
    implements _$$ThisSeasonAnimeInitialImplCopyWith<$Res> {
  __$$ThisSeasonAnimeInitialImplCopyWithImpl(
      _$ThisSeasonAnimeInitialImpl _value,
      $Res Function(_$ThisSeasonAnimeInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThisSeasonAnimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ThisSeasonAnimeInitialImpl implements ThisSeasonAnimeInitial {
  const _$ThisSeasonAnimeInitialImpl();

  @override
  String toString() {
    return 'ThisSeasonAnimeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThisSeasonAnimeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SeasonalAnimeResponse seasonalAnimeResponse)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SeasonalAnimeResponse seasonalAnimeResponse)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SeasonalAnimeResponse seasonalAnimeResponse)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(ThisSeasonAnimeInitial value) initial,
    required TResult Function(ThisSeasonAnimeLoading value) loading,
    required TResult Function(ThisSeasonAnimeLoaded value) loaded,
    required TResult Function(ThisSeasonAnimeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThisSeasonAnimeInitial value)? initial,
    TResult? Function(ThisSeasonAnimeLoading value)? loading,
    TResult? Function(ThisSeasonAnimeLoaded value)? loaded,
    TResult? Function(ThisSeasonAnimeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThisSeasonAnimeInitial value)? initial,
    TResult Function(ThisSeasonAnimeLoading value)? loading,
    TResult Function(ThisSeasonAnimeLoaded value)? loaded,
    TResult Function(ThisSeasonAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ThisSeasonAnimeInitial implements ThisSeasonAnimeState {
  const factory ThisSeasonAnimeInitial() = _$ThisSeasonAnimeInitialImpl;
}

/// @nodoc
abstract class _$$ThisSeasonAnimeLoadingImplCopyWith<$Res> {
  factory _$$ThisSeasonAnimeLoadingImplCopyWith(
          _$ThisSeasonAnimeLoadingImpl value,
          $Res Function(_$ThisSeasonAnimeLoadingImpl) then) =
      __$$ThisSeasonAnimeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThisSeasonAnimeLoadingImplCopyWithImpl<$Res>
    extends _$ThisSeasonAnimeStateCopyWithImpl<$Res,
        _$ThisSeasonAnimeLoadingImpl>
    implements _$$ThisSeasonAnimeLoadingImplCopyWith<$Res> {
  __$$ThisSeasonAnimeLoadingImplCopyWithImpl(
      _$ThisSeasonAnimeLoadingImpl _value,
      $Res Function(_$ThisSeasonAnimeLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThisSeasonAnimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ThisSeasonAnimeLoadingImpl implements ThisSeasonAnimeLoading {
  const _$ThisSeasonAnimeLoadingImpl();

  @override
  String toString() {
    return 'ThisSeasonAnimeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThisSeasonAnimeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SeasonalAnimeResponse seasonalAnimeResponse)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SeasonalAnimeResponse seasonalAnimeResponse)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SeasonalAnimeResponse seasonalAnimeResponse)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(ThisSeasonAnimeInitial value) initial,
    required TResult Function(ThisSeasonAnimeLoading value) loading,
    required TResult Function(ThisSeasonAnimeLoaded value) loaded,
    required TResult Function(ThisSeasonAnimeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThisSeasonAnimeInitial value)? initial,
    TResult? Function(ThisSeasonAnimeLoading value)? loading,
    TResult? Function(ThisSeasonAnimeLoaded value)? loaded,
    TResult? Function(ThisSeasonAnimeError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThisSeasonAnimeInitial value)? initial,
    TResult Function(ThisSeasonAnimeLoading value)? loading,
    TResult Function(ThisSeasonAnimeLoaded value)? loaded,
    TResult Function(ThisSeasonAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ThisSeasonAnimeLoading implements ThisSeasonAnimeState {
  const factory ThisSeasonAnimeLoading() = _$ThisSeasonAnimeLoadingImpl;
}

/// @nodoc
abstract class _$$ThisSeasonAnimeLoadedImplCopyWith<$Res> {
  factory _$$ThisSeasonAnimeLoadedImplCopyWith(
          _$ThisSeasonAnimeLoadedImpl value,
          $Res Function(_$ThisSeasonAnimeLoadedImpl) then) =
      __$$ThisSeasonAnimeLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SeasonalAnimeResponse seasonalAnimeResponse});

  $SeasonalAnimeResponseCopyWith<$Res> get seasonalAnimeResponse;
}

/// @nodoc
class __$$ThisSeasonAnimeLoadedImplCopyWithImpl<$Res>
    extends _$ThisSeasonAnimeStateCopyWithImpl<$Res,
        _$ThisSeasonAnimeLoadedImpl>
    implements _$$ThisSeasonAnimeLoadedImplCopyWith<$Res> {
  __$$ThisSeasonAnimeLoadedImplCopyWithImpl(_$ThisSeasonAnimeLoadedImpl _value,
      $Res Function(_$ThisSeasonAnimeLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThisSeasonAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seasonalAnimeResponse = null,
  }) {
    return _then(_$ThisSeasonAnimeLoadedImpl(
      seasonalAnimeResponse: null == seasonalAnimeResponse
          ? _value.seasonalAnimeResponse
          : seasonalAnimeResponse // ignore: cast_nullable_to_non_nullable
              as SeasonalAnimeResponse,
    ));
  }

  /// Create a copy of ThisSeasonAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SeasonalAnimeResponseCopyWith<$Res> get seasonalAnimeResponse {
    return $SeasonalAnimeResponseCopyWith<$Res>(_value.seasonalAnimeResponse,
        (value) {
      return _then(_value.copyWith(seasonalAnimeResponse: value));
    });
  }
}

/// @nodoc

class _$ThisSeasonAnimeLoadedImpl implements ThisSeasonAnimeLoaded {
  const _$ThisSeasonAnimeLoadedImpl({required this.seasonalAnimeResponse});

  @override
  final SeasonalAnimeResponse seasonalAnimeResponse;

  @override
  String toString() {
    return 'ThisSeasonAnimeState.loaded(seasonalAnimeResponse: $seasonalAnimeResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThisSeasonAnimeLoadedImpl &&
            (identical(other.seasonalAnimeResponse, seasonalAnimeResponse) ||
                other.seasonalAnimeResponse == seasonalAnimeResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seasonalAnimeResponse);

  /// Create a copy of ThisSeasonAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThisSeasonAnimeLoadedImplCopyWith<_$ThisSeasonAnimeLoadedImpl>
      get copyWith => __$$ThisSeasonAnimeLoadedImplCopyWithImpl<
          _$ThisSeasonAnimeLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SeasonalAnimeResponse seasonalAnimeResponse)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(seasonalAnimeResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SeasonalAnimeResponse seasonalAnimeResponse)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(seasonalAnimeResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SeasonalAnimeResponse seasonalAnimeResponse)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(seasonalAnimeResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThisSeasonAnimeInitial value) initial,
    required TResult Function(ThisSeasonAnimeLoading value) loading,
    required TResult Function(ThisSeasonAnimeLoaded value) loaded,
    required TResult Function(ThisSeasonAnimeError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThisSeasonAnimeInitial value)? initial,
    TResult? Function(ThisSeasonAnimeLoading value)? loading,
    TResult? Function(ThisSeasonAnimeLoaded value)? loaded,
    TResult? Function(ThisSeasonAnimeError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThisSeasonAnimeInitial value)? initial,
    TResult Function(ThisSeasonAnimeLoading value)? loading,
    TResult Function(ThisSeasonAnimeLoaded value)? loaded,
    TResult Function(ThisSeasonAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ThisSeasonAnimeLoaded implements ThisSeasonAnimeState {
  const factory ThisSeasonAnimeLoaded(
          {required final SeasonalAnimeResponse seasonalAnimeResponse}) =
      _$ThisSeasonAnimeLoadedImpl;

  SeasonalAnimeResponse get seasonalAnimeResponse;

  /// Create a copy of ThisSeasonAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThisSeasonAnimeLoadedImplCopyWith<_$ThisSeasonAnimeLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThisSeasonAnimeErrorImplCopyWith<$Res> {
  factory _$$ThisSeasonAnimeErrorImplCopyWith(_$ThisSeasonAnimeErrorImpl value,
          $Res Function(_$ThisSeasonAnimeErrorImpl) then) =
      __$$ThisSeasonAnimeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ThisSeasonAnimeErrorImplCopyWithImpl<$Res>
    extends _$ThisSeasonAnimeStateCopyWithImpl<$Res, _$ThisSeasonAnimeErrorImpl>
    implements _$$ThisSeasonAnimeErrorImplCopyWith<$Res> {
  __$$ThisSeasonAnimeErrorImplCopyWithImpl(_$ThisSeasonAnimeErrorImpl _value,
      $Res Function(_$ThisSeasonAnimeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThisSeasonAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ThisSeasonAnimeErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ThisSeasonAnimeErrorImpl implements ThisSeasonAnimeError {
  const _$ThisSeasonAnimeErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ThisSeasonAnimeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThisSeasonAnimeErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ThisSeasonAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThisSeasonAnimeErrorImplCopyWith<_$ThisSeasonAnimeErrorImpl>
      get copyWith =>
          __$$ThisSeasonAnimeErrorImplCopyWithImpl<_$ThisSeasonAnimeErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SeasonalAnimeResponse seasonalAnimeResponse)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SeasonalAnimeResponse seasonalAnimeResponse)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SeasonalAnimeResponse seasonalAnimeResponse)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThisSeasonAnimeInitial value) initial,
    required TResult Function(ThisSeasonAnimeLoading value) loading,
    required TResult Function(ThisSeasonAnimeLoaded value) loaded,
    required TResult Function(ThisSeasonAnimeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThisSeasonAnimeInitial value)? initial,
    TResult? Function(ThisSeasonAnimeLoading value)? loading,
    TResult? Function(ThisSeasonAnimeLoaded value)? loaded,
    TResult? Function(ThisSeasonAnimeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThisSeasonAnimeInitial value)? initial,
    TResult Function(ThisSeasonAnimeLoading value)? loading,
    TResult Function(ThisSeasonAnimeLoaded value)? loaded,
    TResult Function(ThisSeasonAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ThisSeasonAnimeError implements ThisSeasonAnimeState {
  const factory ThisSeasonAnimeError({required final String message}) =
      _$ThisSeasonAnimeErrorImpl;

  String get message;

  /// Create a copy of ThisSeasonAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThisSeasonAnimeErrorImplCopyWith<_$ThisSeasonAnimeErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
