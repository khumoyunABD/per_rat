part of 'top_anime_bloc.dart';

@freezed
sealed class TopAnimeEvent with _$TopAnimeEvent {
  const factory TopAnimeEvent.fetch({
    int? page,
    int? limit,
    String? filter,
  }) = FetchTopAnimeEvent;
}
