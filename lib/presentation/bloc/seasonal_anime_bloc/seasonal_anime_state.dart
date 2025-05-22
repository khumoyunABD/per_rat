part of 'seasonal_anime_bloc.dart';

@freezed
class SeasonInfo with _$SeasonInfo {
  const factory SeasonInfo({
    required int year,
    required AnimeSeason season,
    required bool isCurrentSeason,
  }) = _SeasonInfo;

  const SeasonInfo._();

  String get displayName => '${season.value.capitalize()} $year';
}

@freezed
class SeasonalAnimeState with _$SeasonalAnimeState {
  const factory SeasonalAnimeState.initial() = SeasonalAnimeInitial;

  const factory SeasonalAnimeState.loading() = SeasonalAnimeLoading;

  const factory SeasonalAnimeState.loaded({
    required List<Anime> animeList,
    required Pagination pagination,
    required int currentPage,
    required SeasonInfo seasonInfo,
  }) = SeasonalAnimeLoaded;

  const factory SeasonalAnimeState.pageLoading({
    required List<Anime> animeList,
    required Pagination pagination,
    required int currentPage,
    required SeasonInfo seasonInfo,
  }) = SeasonalAnimePageLoading;

  const factory SeasonalAnimeState.error(
    String message, {
    List<Anime>? previousList,
    Pagination? previousPagination,
    int? previousPage,
    SeasonInfo? previousSeasonInfo,
  }) = SeasonalAnimeError;

  const SeasonalAnimeState._();

  // Helper properties
  bool get hasReachedMax {
    return maybeMap(
      loaded: (state) => !(state.pagination.hasNextPage ?? false),
      pageLoading: (state) => !(state.pagination.hasNextPage ?? false),
      orElse: () => false,
    );
  }
}

// Helper extensions
extension StringExtension on String {
  String capitalize() {
    return isEmpty ? '' : '${this[0].toUpperCase()}${substring(1)}';
  }
}
