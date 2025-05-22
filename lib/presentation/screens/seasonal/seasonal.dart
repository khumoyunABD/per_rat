import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/presentation/bloc/seasonal_anime_bloc/seasonal_anime_bloc.dart';
import 'package:per_rat/presentation/bloc/this_season_anime_bloc/this_season_anime_bloc.dart';
import 'package:per_rat/presentation/bloc/top_anime_bloc/top_anime_bloc.dart';
import 'package:per_rat/presentation/screens/anime_details.dart';
import 'package:per_rat/presentation/screens/dated_anime_screen.dart';
import 'package:per_rat/presentation/screens/edit_score_screen.dart';
import 'package:per_rat/presentation/widgets/seasonal_anime_item.dart';

class SeasonalScreen extends StatefulWidget {
  const SeasonalScreen({
    super.key,
  });

  @override
  State<SeasonalScreen> createState() => _SeasonalScreenState();
}

class _SeasonalScreenState extends State<SeasonalScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  // Add boolean flags to track which tabs have been loaded
  bool _tab0Loaded = false; // Last season
  bool _tab1Loaded = false; // This season
  bool _tab2Loaded = false; // Next season

  @override
  // Example of staggered requests
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    // Load data for the initial tab only (assuming tab 0 is default)
    _loadDataForTab(0);

    // Add listener to load data when tabs are changed
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    // Load data for the selected tab if not already loaded
    _loadDataForTab(_tabController.index);
  }

  void _loadDataForTab(int tabIndex) {
    switch (tabIndex) {
      case 0: // Last season tab
        if (!_tab0Loaded) {
          context
              .read<SeasonalAnimeBloc>()
              .add(const SeasonalAnimeEvent.loadPreviousSeason());
          _tab0Loaded = true;
        }
        break;
      case 1: // This season tab
        if (!_tab1Loaded) {
          context
              .read<ThisSeasonAnimeBloc>()
              .add(const FetchThisSeasonAnimeEvent());
          _tab1Loaded = true;
        }
        break;
      case 2: // Next season tab
        if (!_tab2Loaded) {
          context
              .read<TopAnimeBloc>()
              .add(const FetchTopAnimeEvent(filter: "upcoming"));
          _tab2Loaded = true;
        }
        break;
    }
  }

  void pickAnime(BuildContext context, Anime anime) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => AnimeDetailsScreen(
          anime: anime,
        ),
      ),
    );
  }

  void pickSeason(List<Anime> datedAnime, String animeYM) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => DatedAnimeScreen(
              datedAnime: datedAnime,
              animeYM: animeYM,
            )));
  }

  void editScore(BuildContext context, Anime anime) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => EditScoreScreen(
              anime: anime,
            )));
  }

  @override
  void dispose() {
    // Remove the listener when disposing
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Last Season tab - Using our new SeasonalAnimeBloc
    Widget lastContent = BlocBuilder<SeasonalAnimeBloc, SeasonalAnimeState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(
            child: Text('Initialize previous season data',
                style: TextStyle(color: Colors.amber)),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (animeList, pagination, currentPage, seasonInfo) {
            if (animeList.isEmpty) {
              return const Center(
                child: Text('No anime found for previous season',
                    style: TextStyle(color: Colors.amber)),
              );
            }

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: animeList.length,
              itemBuilder: (ctx, index) => SeasonalAnimeItem(
                anime: animeList[index],
                onSelectAnime: (anime) {
                  pickAnime(context, anime);
                },
                onEditRating: (anime) {
                  editScore(context, anime);
                },
              ),
            );
          },
          pageLoading: (animeList, pagination, currentPage, seasonInfo) {
            // Show the list with a loading indicator at the bottom
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: animeList.length + 1, // +1 for the loading indicator
              itemBuilder: (ctx, index) {
                if (index == animeList.length) {
                  return const Center(child: CircularProgressIndicator());
                }
                return SeasonalAnimeItem(
                  anime: animeList[index],
                  onSelectAnime: (anime) {
                    pickAnime(context, anime);
                  },
                  onEditRating: (anime) {
                    editScore(context, anime);
                  },
                );
              },
            );
          },
          error: (message, previousList, previousPagination, previousPage,
              previousSeasonInfo) {
            if (previousList == null || previousList.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline,
                        size: 60, color: Colors.red),
                    const SizedBox(height: 16),
                    Text('Error: $message',
                        style: const TextStyle(color: Colors.white)),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<SeasonalAnimeBloc>()
                            .add(const SeasonalAnimeEvent.refresh());
                      },
                      child: const Text('Try Again'),
                    ),
                  ],
                ),
              );
            }

            // Show previous data with an error indicator
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Error: $message'),
                  action: SnackBarAction(
                    label: 'Retry',
                    onPressed: () {
                      context
                          .read<SeasonalAnimeBloc>()
                          .add(const SeasonalAnimeEvent.refresh());
                    },
                  ),
                ),
              );
            });

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: previousList.length,
              itemBuilder: (ctx, index) => SeasonalAnimeItem(
                anime: previousList[index],
                onSelectAnime: (anime) {
                  pickAnime(context, anime);
                },
                onEditRating: (anime) {
                  editScore(context, anime);
                },
              ),
            );
          },
        );
      },
    );

    // This Season tab - using BlocBuilder with "airing" filter
    Widget thisSeaContent =
        BlocBuilder<ThisSeasonAnimeBloc, ThisSeasonAnimeState>(
      buildWhen: (previous, current) {
        // Rebuild only if the state is relevant to "airing"
        if (current is ThisSeasonAnimeLoading) return true;
        if (current is ThisSeasonAnimeLoaded) return true;
        if (current is ThisSeasonAnimeError) return true;
        if (previous is ThisSeasonAnimeInitial &&
            current is ThisSeasonAnimeLoading) return true;
        return false;
      },
      builder: (context, state) {
        if (state is ThisSeasonAnimeLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is ThisSeasonAnimeLoaded) {
          final animeList = state.seasonalAnimeResponse.data;
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.5,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: animeList.length,
            itemBuilder: (ctx, index) => SeasonalAnimeItem(
              anime: animeList[index],
              onSelectAnime: (anime) {
                pickAnime(context, anime);
              },
              onEditRating: (anime) {
                editScore(context, anime);
              },
            ),
          );
        }
        if (state is ThisSeasonAnimeError) {
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

    // Next Season tab - using BlocBuilder with "upcoming" filter
    Widget nextContent = BlocBuilder<TopAnimeBloc, TopAnimeState>(
      buildWhen: (previous, current) {
        // Rebuild only if the state is relevant to "upcoming"
        if (current is TopAnimeLoading && current.filter == "upcoming")
          return true;
        if (current is TopAnimeLoaded && current.filter == "upcoming")
          return true;
        if (current is TopAnimeError && current.filter == "upcoming")
          return true;
        if (previous is TopAnimeInitial && current is TopAnimeLoading)
          return true;
        return false;
      },
      builder: (context, state) {
        if (state is TopAnimeLoading && state.filter == "upcoming") {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is TopAnimeLoaded && state.filter == "upcoming") {
          final animeList = state.topAnimeResponse.data;
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.5,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: animeList.length,
            itemBuilder: (ctx, index) => SeasonalAnimeItem(
              anime: animeList[index],
              onSelectAnime: (anime) {
                pickAnime(context, anime);
              },
              onEditRating: (anime) {
                editScore(context, anime);
              },
            ),
          );
        }
        if (state is TopAnimeError && state.filter == "upcoming") {
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

    // Use the SeasonArchiveWidget for the archive tab
    // Widget archContent = SeasonArchiveWidget(
    //   onSelectAnime: (anime) => pickAnime(context, anime),
    //   onEditRating: (anime) => editScore(context, anime),
    //   onSelectSeason: pickSeason,
    // );

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: 'Last',
            ),
            Tab(
              text: 'This season',
            ),
            Tab(
              text: 'Next',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: lastContent,
          ),
          Center(
            child: thisSeaContent,
          ),
          Center(
            child: nextContent,
          ),
        ],
      ),
    );
  }
}
