part of 'this_season_anime_bloc.dart';

@freezed
class ThisSeasonAnimeEvent with _$ThisSeasonAnimeEvent {
  const factory ThisSeasonAnimeEvent.fetch({
    int? page,
    int? limit,
  }) = FetchThisSeasonAnimeEvent;
}
