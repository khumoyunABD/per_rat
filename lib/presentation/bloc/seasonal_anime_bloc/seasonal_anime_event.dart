part of 'seasonal_anime_bloc.dart';

@freezed
class SeasonalAnimeEvent with _$SeasonalAnimeEvent {
  const factory SeasonalAnimeEvent.loadCurrentSeason({
    @Default(25) int limit,
  }) = LoadCurrentSeasonAnime;

  const factory SeasonalAnimeEvent.loadPreviousSeason({
    @Default(25) int limit,
  }) = LoadPreviousSeasonAnime;

  const factory SeasonalAnimeEvent.loadSpecificSeason({
    required int year,
    required AnimeSeason season,
    @Default(25) int limit,
  }) = LoadSpecificSeasonAnime;

  const factory SeasonalAnimeEvent.loadNextPage({
    @Default(25) int limit,
  }) = LoadNextPage;

  const factory SeasonalAnimeEvent.refresh({
    @Default(25) int limit,
  }) = RefreshSeasonalAnime;
}
