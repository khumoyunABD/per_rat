// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_anime_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopAnimeEvent {
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, int? limit, String? filter) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, int? limit, String? filter)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, int? limit, String? filter)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTopAnimeEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTopAnimeEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTopAnimeEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TopAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopAnimeEventCopyWith<TopAnimeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopAnimeEventCopyWith<$Res> {
  factory $TopAnimeEventCopyWith(
          TopAnimeEvent value, $Res Function(TopAnimeEvent) then) =
      _$TopAnimeEventCopyWithImpl<$Res, TopAnimeEvent>;
  @useResult
  $Res call({int? page, int? limit, String? filter});
}

/// @nodoc
class _$TopAnimeEventCopyWithImpl<$Res, $Val extends TopAnimeEvent>
    implements $TopAnimeEventCopyWith<$Res> {
  _$TopAnimeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? filter = freezed,
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
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchTopAnimeEventImplCopyWith<$Res>
    implements $TopAnimeEventCopyWith<$Res> {
  factory _$$FetchTopAnimeEventImplCopyWith(_$FetchTopAnimeEventImpl value,
          $Res Function(_$FetchTopAnimeEventImpl) then) =
      __$$FetchTopAnimeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page, int? limit, String? filter});
}

/// @nodoc
class __$$FetchTopAnimeEventImplCopyWithImpl<$Res>
    extends _$TopAnimeEventCopyWithImpl<$Res, _$FetchTopAnimeEventImpl>
    implements _$$FetchTopAnimeEventImplCopyWith<$Res> {
  __$$FetchTopAnimeEventImplCopyWithImpl(_$FetchTopAnimeEventImpl _value,
      $Res Function(_$FetchTopAnimeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$FetchTopAnimeEventImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchTopAnimeEventImpl implements FetchTopAnimeEvent {
  const _$FetchTopAnimeEventImpl({this.page, this.limit, this.filter});

  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? filter;

  @override
  String toString() {
    return 'TopAnimeEvent.fetch(page: $page, limit: $limit, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTopAnimeEventImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, limit, filter);

  /// Create a copy of TopAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTopAnimeEventImplCopyWith<_$FetchTopAnimeEventImpl> get copyWith =>
      __$$FetchTopAnimeEventImplCopyWithImpl<_$FetchTopAnimeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, int? limit, String? filter) fetch,
  }) {
    return fetch(page, limit, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, int? limit, String? filter)? fetch,
  }) {
    return fetch?.call(page, limit, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, int? limit, String? filter)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(page, limit, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTopAnimeEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTopAnimeEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTopAnimeEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchTopAnimeEvent implements TopAnimeEvent {
  const factory FetchTopAnimeEvent(
      {final int? page,
      final int? limit,
      final String? filter}) = _$FetchTopAnimeEventImpl;

  @override
  int? get page;
  @override
  int? get limit;
  @override
  String? get filter;

  /// Create a copy of TopAnimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTopAnimeEventImplCopyWith<_$FetchTopAnimeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TopAnimeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? filter) loading,
    required TResult Function(TopAnimeResponse topAnimeResponse, String? filter)
        loaded,
    required TResult Function(String message, String? filter) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? filter)? loading,
    TResult? Function(TopAnimeResponse topAnimeResponse, String? filter)?
        loaded,
    TResult? Function(String message, String? filter)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? filter)? loading,
    TResult Function(TopAnimeResponse topAnimeResponse, String? filter)? loaded,
    TResult Function(String message, String? filter)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopAnimeInitial value) initial,
    required TResult Function(TopAnimeLoading value) loading,
    required TResult Function(TopAnimeLoaded value) loaded,
    required TResult Function(TopAnimeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopAnimeInitial value)? initial,
    TResult? Function(TopAnimeLoading value)? loading,
    TResult? Function(TopAnimeLoaded value)? loaded,
    TResult? Function(TopAnimeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopAnimeInitial value)? initial,
    TResult Function(TopAnimeLoading value)? loading,
    TResult Function(TopAnimeLoaded value)? loaded,
    TResult Function(TopAnimeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopAnimeStateCopyWith<$Res> {
  factory $TopAnimeStateCopyWith(
          TopAnimeState value, $Res Function(TopAnimeState) then) =
      _$TopAnimeStateCopyWithImpl<$Res, TopAnimeState>;
}

/// @nodoc
class _$TopAnimeStateCopyWithImpl<$Res, $Val extends TopAnimeState>
    implements $TopAnimeStateCopyWith<$Res> {
  _$TopAnimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopAnimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TopAnimeInitialImplCopyWith<$Res> {
  factory _$$TopAnimeInitialImplCopyWith(_$TopAnimeInitialImpl value,
          $Res Function(_$TopAnimeInitialImpl) then) =
      __$$TopAnimeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopAnimeInitialImplCopyWithImpl<$Res>
    extends _$TopAnimeStateCopyWithImpl<$Res, _$TopAnimeInitialImpl>
    implements _$$TopAnimeInitialImplCopyWith<$Res> {
  __$$TopAnimeInitialImplCopyWithImpl(
      _$TopAnimeInitialImpl _value, $Res Function(_$TopAnimeInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopAnimeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TopAnimeInitialImpl implements TopAnimeInitial {
  const _$TopAnimeInitialImpl();

  @override
  String toString() {
    return 'TopAnimeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TopAnimeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? filter) loading,
    required TResult Function(TopAnimeResponse topAnimeResponse, String? filter)
        loaded,
    required TResult Function(String message, String? filter) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? filter)? loading,
    TResult? Function(TopAnimeResponse topAnimeResponse, String? filter)?
        loaded,
    TResult? Function(String message, String? filter)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? filter)? loading,
    TResult Function(TopAnimeResponse topAnimeResponse, String? filter)? loaded,
    TResult Function(String message, String? filter)? error,
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
    required TResult Function(TopAnimeInitial value) initial,
    required TResult Function(TopAnimeLoading value) loading,
    required TResult Function(TopAnimeLoaded value) loaded,
    required TResult Function(TopAnimeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopAnimeInitial value)? initial,
    TResult? Function(TopAnimeLoading value)? loading,
    TResult? Function(TopAnimeLoaded value)? loaded,
    TResult? Function(TopAnimeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopAnimeInitial value)? initial,
    TResult Function(TopAnimeLoading value)? loading,
    TResult Function(TopAnimeLoaded value)? loaded,
    TResult Function(TopAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TopAnimeInitial implements TopAnimeState {
  const factory TopAnimeInitial() = _$TopAnimeInitialImpl;
}

/// @nodoc
abstract class _$$TopAnimeLoadingImplCopyWith<$Res> {
  factory _$$TopAnimeLoadingImplCopyWith(_$TopAnimeLoadingImpl value,
          $Res Function(_$TopAnimeLoadingImpl) then) =
      __$$TopAnimeLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? filter});
}

/// @nodoc
class __$$TopAnimeLoadingImplCopyWithImpl<$Res>
    extends _$TopAnimeStateCopyWithImpl<$Res, _$TopAnimeLoadingImpl>
    implements _$$TopAnimeLoadingImplCopyWith<$Res> {
  __$$TopAnimeLoadingImplCopyWithImpl(
      _$TopAnimeLoadingImpl _value, $Res Function(_$TopAnimeLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$TopAnimeLoadingImpl(
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TopAnimeLoadingImpl implements TopAnimeLoading {
  const _$TopAnimeLoadingImpl({this.filter});

  @override
  final String? filter;

  @override
  String toString() {
    return 'TopAnimeState.loading(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopAnimeLoadingImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of TopAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopAnimeLoadingImplCopyWith<_$TopAnimeLoadingImpl> get copyWith =>
      __$$TopAnimeLoadingImplCopyWithImpl<_$TopAnimeLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? filter) loading,
    required TResult Function(TopAnimeResponse topAnimeResponse, String? filter)
        loaded,
    required TResult Function(String message, String? filter) error,
  }) {
    return loading(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? filter)? loading,
    TResult? Function(TopAnimeResponse topAnimeResponse, String? filter)?
        loaded,
    TResult? Function(String message, String? filter)? error,
  }) {
    return loading?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? filter)? loading,
    TResult Function(TopAnimeResponse topAnimeResponse, String? filter)? loaded,
    TResult Function(String message, String? filter)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopAnimeInitial value) initial,
    required TResult Function(TopAnimeLoading value) loading,
    required TResult Function(TopAnimeLoaded value) loaded,
    required TResult Function(TopAnimeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopAnimeInitial value)? initial,
    TResult? Function(TopAnimeLoading value)? loading,
    TResult? Function(TopAnimeLoaded value)? loaded,
    TResult? Function(TopAnimeError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopAnimeInitial value)? initial,
    TResult Function(TopAnimeLoading value)? loading,
    TResult Function(TopAnimeLoaded value)? loaded,
    TResult Function(TopAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TopAnimeLoading implements TopAnimeState {
  const factory TopAnimeLoading({final String? filter}) = _$TopAnimeLoadingImpl;

  String? get filter;

  /// Create a copy of TopAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopAnimeLoadingImplCopyWith<_$TopAnimeLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopAnimeLoadedImplCopyWith<$Res> {
  factory _$$TopAnimeLoadedImplCopyWith(_$TopAnimeLoadedImpl value,
          $Res Function(_$TopAnimeLoadedImpl) then) =
      __$$TopAnimeLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TopAnimeResponse topAnimeResponse, String? filter});
}

/// @nodoc
class __$$TopAnimeLoadedImplCopyWithImpl<$Res>
    extends _$TopAnimeStateCopyWithImpl<$Res, _$TopAnimeLoadedImpl>
    implements _$$TopAnimeLoadedImplCopyWith<$Res> {
  __$$TopAnimeLoadedImplCopyWithImpl(
      _$TopAnimeLoadedImpl _value, $Res Function(_$TopAnimeLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topAnimeResponse = null,
    Object? filter = freezed,
  }) {
    return _then(_$TopAnimeLoadedImpl(
      topAnimeResponse: null == topAnimeResponse
          ? _value.topAnimeResponse
          : topAnimeResponse // ignore: cast_nullable_to_non_nullable
              as TopAnimeResponse,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TopAnimeLoadedImpl implements TopAnimeLoaded {
  const _$TopAnimeLoadedImpl({required this.topAnimeResponse, this.filter});

  @override
  final TopAnimeResponse topAnimeResponse;
  @override
  final String? filter;

  @override
  String toString() {
    return 'TopAnimeState.loaded(topAnimeResponse: $topAnimeResponse, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopAnimeLoadedImpl &&
            (identical(other.topAnimeResponse, topAnimeResponse) ||
                other.topAnimeResponse == topAnimeResponse) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topAnimeResponse, filter);

  /// Create a copy of TopAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopAnimeLoadedImplCopyWith<_$TopAnimeLoadedImpl> get copyWith =>
      __$$TopAnimeLoadedImplCopyWithImpl<_$TopAnimeLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? filter) loading,
    required TResult Function(TopAnimeResponse topAnimeResponse, String? filter)
        loaded,
    required TResult Function(String message, String? filter) error,
  }) {
    return loaded(topAnimeResponse, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? filter)? loading,
    TResult? Function(TopAnimeResponse topAnimeResponse, String? filter)?
        loaded,
    TResult? Function(String message, String? filter)? error,
  }) {
    return loaded?.call(topAnimeResponse, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? filter)? loading,
    TResult Function(TopAnimeResponse topAnimeResponse, String? filter)? loaded,
    TResult Function(String message, String? filter)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(topAnimeResponse, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopAnimeInitial value) initial,
    required TResult Function(TopAnimeLoading value) loading,
    required TResult Function(TopAnimeLoaded value) loaded,
    required TResult Function(TopAnimeError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopAnimeInitial value)? initial,
    TResult? Function(TopAnimeLoading value)? loading,
    TResult? Function(TopAnimeLoaded value)? loaded,
    TResult? Function(TopAnimeError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopAnimeInitial value)? initial,
    TResult Function(TopAnimeLoading value)? loading,
    TResult Function(TopAnimeLoaded value)? loaded,
    TResult Function(TopAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TopAnimeLoaded implements TopAnimeState {
  const factory TopAnimeLoaded(
      {required final TopAnimeResponse topAnimeResponse,
      final String? filter}) = _$TopAnimeLoadedImpl;

  TopAnimeResponse get topAnimeResponse;
  String? get filter;

  /// Create a copy of TopAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopAnimeLoadedImplCopyWith<_$TopAnimeLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopAnimeErrorImplCopyWith<$Res> {
  factory _$$TopAnimeErrorImplCopyWith(
          _$TopAnimeErrorImpl value, $Res Function(_$TopAnimeErrorImpl) then) =
      __$$TopAnimeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? filter});
}

/// @nodoc
class __$$TopAnimeErrorImplCopyWithImpl<$Res>
    extends _$TopAnimeStateCopyWithImpl<$Res, _$TopAnimeErrorImpl>
    implements _$$TopAnimeErrorImplCopyWith<$Res> {
  __$$TopAnimeErrorImplCopyWithImpl(
      _$TopAnimeErrorImpl _value, $Res Function(_$TopAnimeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? filter = freezed,
  }) {
    return _then(_$TopAnimeErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TopAnimeErrorImpl implements TopAnimeError {
  const _$TopAnimeErrorImpl({required this.message, this.filter});

  @override
  final String message;
  @override
  final String? filter;

  @override
  String toString() {
    return 'TopAnimeState.error(message: $message, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopAnimeErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, filter);

  /// Create a copy of TopAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopAnimeErrorImplCopyWith<_$TopAnimeErrorImpl> get copyWith =>
      __$$TopAnimeErrorImplCopyWithImpl<_$TopAnimeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? filter) loading,
    required TResult Function(TopAnimeResponse topAnimeResponse, String? filter)
        loaded,
    required TResult Function(String message, String? filter) error,
  }) {
    return error(message, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? filter)? loading,
    TResult? Function(TopAnimeResponse topAnimeResponse, String? filter)?
        loaded,
    TResult? Function(String message, String? filter)? error,
  }) {
    return error?.call(message, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? filter)? loading,
    TResult Function(TopAnimeResponse topAnimeResponse, String? filter)? loaded,
    TResult Function(String message, String? filter)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopAnimeInitial value) initial,
    required TResult Function(TopAnimeLoading value) loading,
    required TResult Function(TopAnimeLoaded value) loaded,
    required TResult Function(TopAnimeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopAnimeInitial value)? initial,
    TResult? Function(TopAnimeLoading value)? loading,
    TResult? Function(TopAnimeLoaded value)? loaded,
    TResult? Function(TopAnimeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopAnimeInitial value)? initial,
    TResult Function(TopAnimeLoading value)? loading,
    TResult Function(TopAnimeLoaded value)? loaded,
    TResult Function(TopAnimeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TopAnimeError implements TopAnimeState {
  const factory TopAnimeError(
      {required final String message,
      final String? filter}) = _$TopAnimeErrorImpl;

  String get message;
  String? get filter;

  /// Create a copy of TopAnimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopAnimeErrorImplCopyWith<_$TopAnimeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
