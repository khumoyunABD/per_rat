import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/presentation/bloc/top_anime_bloc/top_anime_bloc.dart';
import 'package:per_rat/presentation/widgets/archive_anime_item.dart';

class SeasonArchiveWidget extends StatelessWidget {
  const SeasonArchiveWidget({
    Key? key,
    required this.onSelectAnime,
    required this.onEditRating,
    required this.onSelectSeason,
  }) : super(key: key);

  final Function(Anime) onSelectAnime;
  final Function(Anime) onEditRating;
  final Function(List<Anime>, String) onSelectSeason;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopAnimeBloc, TopAnimeState>(
      buildWhen: (previous, current) {
        // Rebuild only if the state is relevant to "bypopularity" filter
        if (current is TopAnimeLoading && current.filter == "bypopularity")
          return true;
        if (current is TopAnimeLoaded && current.filter == "bypopularity")
          return true;
        if (current is TopAnimeError && current.filter == "bypopularity")
          return true;
        if (previous is TopAnimeInitial && current is TopAnimeLoading)
          return true;
        return false;
      },
      builder: (context, state) {
        if (state is TopAnimeLoading && state.filter == "bypopularity") {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is TopAnimeLoaded && state.filter == "bypopularity") {
          final archiveAnime = state.topAnimeResponse.data;

          // Extract years for grouping
          final archiveYears = List<int>.from(archiveAnime
              .where((anime) => anime.aired.from != null)
              .map((anime) => anime.aired.from!.year)
              .toSet());

          if (archiveYears.isNotEmpty) {
            archiveYears.sort((a, b) => b.compareTo(a));

            return ListView(
              children: <Widget>[
                Column(
                  children: [
                    for (final year in archiveYears)
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              year.toString(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 22),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Season filtering with null safety
                              ArchiveAnimeItem(
                                onPickSeason: (datedAnime) {
                                  onSelectSeason(datedAnime, 'Winter $year');
                                },
                                animeSeason: 'Winter',
                                datedAnime: archiveAnime
                                    .where((anime) =>
                                        anime.aired.from != null &&
                                        anime.aired.from!.year == year &&
                                        anime.aired.from!.month >= 1 &&
                                        anime.aired.from!.month < 4)
                                    .toList(),
                              ),
                              ArchiveAnimeItem(
                                onPickSeason: (datedAnime) {
                                  onSelectSeason(datedAnime, 'Spring $year');
                                },
                                animeSeason: 'Spring',
                                datedAnime: archiveAnime
                                    .where((anime) =>
                                        anime.aired.from != null &&
                                        anime.aired.from!.year == year &&
                                        anime.aired.from!.month >= 4 &&
                                        anime.aired.from!.month < 7)
                                    .toList(),
                              ),
                              ArchiveAnimeItem(
                                onPickSeason: (datedAnime) {
                                  onSelectSeason(datedAnime, 'Summer $year');
                                },
                                animeSeason: 'Summer',
                                datedAnime: archiveAnime
                                    .where((anime) =>
                                        anime.aired.from != null &&
                                        anime.aired.from!.year == year &&
                                        anime.aired.from!.month >= 7 &&
                                        anime.aired.from!.month < 10)
                                    .toList(),
                              ),
                              ArchiveAnimeItem(
                                onPickSeason: (datedAnime) {
                                  onSelectSeason(datedAnime, 'Fall $year');
                                },
                                animeSeason: 'Fall',
                                datedAnime: archiveAnime
                                    .where((anime) =>
                                        anime.aired.from != null &&
                                        anime.aired.from!.year == year &&
                                        anime.aired.from!.month >= 10 &&
                                        anime.aired.from!.month <= 12)
                                    .toList(),
                              ),
                            ],
                          ),
                        ],
                      ),
                  ],
                )
              ],
            );
          }
        }
        if (state is TopAnimeError && state.filter == "bypopularity") {
          return Center(
            child: Text(
              'Error: ${state.message}',
              style: const TextStyle(color: Colors.white),
            ),
          );
        }
        return const Center(
          child: Text(
            'No shows are present',
            style: TextStyle(color: Colors.amber),
          ),
        );
      },
    );
  }
}
