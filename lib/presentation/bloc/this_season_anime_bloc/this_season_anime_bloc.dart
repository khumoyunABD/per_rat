import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';

part 'this_season_anime_bloc.freezed.dart';
part 'this_season_anime_event.dart';
part 'this_season_anime_state.dart';

class ThisSeasonAnimeBloc
    extends Bloc<ThisSeasonAnimeEvent, ThisSeasonAnimeState> {
  final AnimeRepository animeRepository;

  ThisSeasonAnimeBloc({required this.animeRepository})
      : super(const ThisSeasonAnimeState.initial()) {
    on<FetchThisSeasonAnimeEvent>(_onFetchThisSeasonAnime);
  }

  Future<void> _onFetchThisSeasonAnime(
    FetchThisSeasonAnimeEvent event,
    Emitter<ThisSeasonAnimeState> emit,
  ) async {
    emit(ThisSeasonAnimeState.loading());
    try {
      final thisSeasonAnimeResponse =
          await animeRepository.fetchThisSeasonAnime(
        page: event.page ?? 1,
        limit: event.limit ?? 25,
      );
      emit(ThisSeasonAnimeState.loaded(
          seasonalAnimeResponse: thisSeasonAnimeResponse));
      log('Data inside ThisSeason Anime Bloc: ${thisSeasonAnimeResponse.data}');
    } catch (e) {
      emit(ThisSeasonAnimeState.error(message: e.toString()));
      log('Error inside ThisSeason Anime Bloc: $e');
    }
  }
}
