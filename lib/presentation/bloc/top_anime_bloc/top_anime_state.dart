part of 'top_anime_bloc.dart';

@freezed
sealed class TopAnimeState with _$TopAnimeState {
  const factory TopAnimeState.initial() = TopAnimeInitial;
  const factory TopAnimeState.loading({String? filter}) = TopAnimeLoading;
  const factory TopAnimeState.loaded(
      {required TopAnimeResponse topAnimeResponse,
      String? filter}) = TopAnimeLoaded;
  const factory TopAnimeState.error({required String message, String? filter}) =
      TopAnimeError;
}
