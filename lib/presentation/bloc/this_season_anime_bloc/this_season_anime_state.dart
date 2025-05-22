part of 'this_season_anime_bloc.dart';

@freezed
class ThisSeasonAnimeState with _$ThisSeasonAnimeState {
  const factory ThisSeasonAnimeState.initial() = ThisSeasonAnimeInitial;
  const factory ThisSeasonAnimeState.loading() = ThisSeasonAnimeLoading;
  const factory ThisSeasonAnimeState.loaded(
          {required SeasonalAnimeResponse seasonalAnimeResponse}) =
      ThisSeasonAnimeLoaded;
  const factory ThisSeasonAnimeState.error({required String message}) =
      ThisSeasonAnimeError;
}
