import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';

part 'top_anime_bloc.freezed.dart';
part 'top_anime_event.dart';
part 'top_anime_state.dart';

class TopAnimeBloc extends Bloc<TopAnimeEvent, TopAnimeState> {
  final AnimeRepository animeRepository;

  TopAnimeBloc({required this.animeRepository})
      : super(const TopAnimeState.initial()) {
    on<FetchTopAnimeEvent>(_onFetchTopAnime);
  }

  Future<void> _onFetchTopAnime(
    FetchTopAnimeEvent event,
    Emitter<TopAnimeState> emit,
  ) async {
    emit(TopAnimeState.loading(filter: event.filter));
    try {
      final topAnimeResponse = await animeRepository.fetchTopAnime(
        page: event.page ?? 1,
        limit: event.limit ?? 25,
        filter: event.filter,
      );
      emit(TopAnimeState.loaded(
          topAnimeResponse: topAnimeResponse, filter: event.filter));
      log('Data inside Top Anime Bloc: ${topAnimeResponse.data}');
    } catch (e) {
      emit(TopAnimeState.error(message: e.toString(), filter: event.filter));
      log('Error inside Top Anime Bloc: $e');
    }
  }
}
