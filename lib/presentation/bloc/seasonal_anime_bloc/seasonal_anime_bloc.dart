import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:per_rat/data/extensions/anime_season.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';

part 'seasonal_anime_bloc.freezed.dart';
part 'seasonal_anime_event.dart';
part 'seasonal_anime_state.dart';

class SeasonalAnimeBloc extends Bloc<SeasonalAnimeEvent, SeasonalAnimeState> {
  final AnimeRepository _animeRepository;

  SeasonalAnimeBloc({required AnimeRepository animeRepository})
      : _animeRepository = animeRepository,
        super(const SeasonalAnimeState.initial()) {
    on<LoadCurrentSeasonAnime>(_onLoadCurrentSeasonAnime);
    on<LoadPreviousSeasonAnime>(_onLoadPreviousSeasonAnime);
    on<LoadSpecificSeasonAnime>(_onLoadSpecificSeasonAnime);
    on<LoadNextPage>(_onLoadNextPage);
    on<RefreshSeasonalAnime>(_onRefreshSeasonalAnime);
  }

  Future<void> _onLoadCurrentSeasonAnime(
    LoadCurrentSeasonAnime event,
    Emitter<SeasonalAnimeState> emit,
  ) async {
    emit(const SeasonalAnimeState.loading());
    try {
      final current = _animeRepository.getCurrentSeason();
      final response = await _animeRepository.fetchSeasonalAnime(
        year: current.year,
        season: current.season,
        page: 1,
        limit: event.limit,
      );

      emit(SeasonalAnimeState.loaded(
        animeList: response.data,
        pagination: response.pagination,
        currentPage: 1,
        seasonInfo: SeasonInfo(
          year: current.year,
          season: current.season,
          isCurrentSeason: true,
        ),
      ));
    } catch (e) {
      emit(SeasonalAnimeState.error(e.toString()));
    }
  }

  Future<void> _onLoadPreviousSeasonAnime(
    LoadPreviousSeasonAnime event,
    Emitter<SeasonalAnimeState> emit,
  ) async {
    emit(const SeasonalAnimeState.loading());
    try {
      final previous = _animeRepository.getPreviousSeason();
      final response = await _animeRepository.fetchSeasonalAnime(
        year: previous.year,
        season: previous.season,
        page: 1,
        limit: event.limit,
      );

      emit(SeasonalAnimeState.loaded(
        animeList: response.data,
        pagination: response.pagination,
        currentPage: 1,
        seasonInfo: SeasonInfo(
          year: previous.year,
          season: previous.season,
          isCurrentSeason: false,
        ),
      ));
    } catch (e) {
      emit(SeasonalAnimeState.error(e.toString()));
    }
  }

  Future<void> _onLoadSpecificSeasonAnime(
    LoadSpecificSeasonAnime event,
    Emitter<SeasonalAnimeState> emit,
  ) async {
    emit(const SeasonalAnimeState.loading());
    try {
      final current = _animeRepository.getCurrentSeason();
      final isCurrentSeason =
          current.year == event.year && current.season == event.season;

      final response = await _animeRepository.fetchSeasonalAnime(
        year: event.year,
        season: event.season,
        page: 1,
        limit: event.limit,
      );

      emit(SeasonalAnimeState.loaded(
        animeList: response.data,
        pagination: response.pagination,
        currentPage: 1,
        seasonInfo: SeasonInfo(
          year: event.year,
          season: event.season,
          isCurrentSeason: isCurrentSeason,
        ),
      ));
    } catch (e) {
      emit(SeasonalAnimeState.error(e.toString()));
    }
  }

  Future<void> _onLoadNextPage(
    LoadNextPage event,
    Emitter<SeasonalAnimeState> emit,
  ) async {
    final currentState = state;

    if (currentState is SeasonalAnimeLoaded) {
      // Check if there's a next page
      if (!(currentState.pagination.hasNextPage ?? false)) {
        return;
      }

      try {
        emit(SeasonalAnimeState.pageLoading(
          animeList: currentState.animeList,
          pagination: currentState.pagination,
          currentPage: currentState.currentPage,
          seasonInfo: currentState.seasonInfo,
        ));

        final nextPage = currentState.currentPage + 1;

        final response = await _animeRepository.fetchSeasonalAnime(
          year: currentState.seasonInfo.year,
          season: currentState.seasonInfo.season,
          page: nextPage,
          limit: event.limit,
        );

        emit(SeasonalAnimeState.loaded(
          animeList: [...currentState.animeList, ...response.data],
          pagination: response.pagination,
          currentPage: nextPage,
          seasonInfo: currentState.seasonInfo,
        ));
      } catch (e) {
        emit(SeasonalAnimeState.error(
          e.toString(),
          previousList: currentState.animeList,
          previousPagination: currentState.pagination,
          previousPage: currentState.currentPage,
          previousSeasonInfo: currentState.seasonInfo,
        ));
      }
    }
  }

  Future<void> _onRefreshSeasonalAnime(
    RefreshSeasonalAnime event,
    Emitter<SeasonalAnimeState> emit,
  ) async {
    state.maybeWhen(
      loaded: (animeList, pagination, currentPage, seasonInfo) async {
        try {
          final response = await _animeRepository.fetchSeasonalAnime(
            year: seasonInfo.year,
            season: seasonInfo.season,
            page: 1,
            limit: event.limit,
          );

          emit(SeasonalAnimeState.loaded(
            animeList: response.data,
            pagination: response.pagination,
            currentPage: 1,
            seasonInfo: seasonInfo,
          ));
        } catch (e) {
          emit(SeasonalAnimeState.error(
            e.toString(),
            previousList: animeList,
            previousPagination: pagination,
            previousPage: currentPage,
            previousSeasonInfo: seasonInfo,
          ));
        }
      },
      orElse: () {
        add(SeasonalAnimeEvent.loadCurrentSeason(limit: event.limit));
      },
    );
  }
}
