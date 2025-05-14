import 'package:flutter/material.dart';
import 'package:per_rat/data/client/jikan_service.dart';
import 'package:per_rat/data/extensions/date_time_extensions.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';
import 'package:per_rat/presentation/screens/anime_details.dart';
import 'package:per_rat/presentation/screens/dated_anime_screen.dart';
import 'package:per_rat/presentation/screens/edit_score_screen.dart';
import 'package:per_rat/presentation/widgets/archive_anime_item.dart';
import 'package:per_rat/presentation/widgets/seasonal_anime_item.dart';

class SeasonalScreen extends StatefulWidget {
  const SeasonalScreen({
    super.key,
  });

  //final List<Anime> lastAnime;

  @override
  State<SeasonalScreen> createState() => _SeasonalScreenState();
}

class _SeasonalScreenState extends State<SeasonalScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  List<Anime> _registeredAnime = [];
  var _isLoading = true;
  String? _error;

  final animeRepo = AnimeRepository(JikanService());

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _fetchAnime();
  }

  void _fetchAnime() async {
    try {
      AnimeResponse response = await animeRepo.fetchAnime();

      // Check if the widget is still mounted before calling setState
      if (mounted) {
        setState(() {
          _registeredAnime = List<Anime>.from(response.data);
          _isLoading = false;
          // You can also store pagination info if needed
          // _currentPage = response.pagination.currentPage;
          // _hasNextPage = response.pagination.hasNextPage;
        });
      }
    } catch (e) {
      // Check if the widget is still mounted before calling setState
      if (mounted) {
        setState(() {
          _error = 'Failed to load anime: $e';
          _isLoading = false;
        });
      }
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
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
// Example usage in your screen:
    final List<Anime> lastAnime = _registeredAnime
        .where((anime) =>
            anime.aired.to != null &&
            anime.aired.to.isSafelyBefore(DateTime.now()) &&
            anime.aired.to?.year == DateTime.now().year - 1)
        .toList();

    final List<Anime> thisSeaAnime = _registeredAnime
        .where((anime) =>
            (anime.aired.from.isSafelySameMoment(DateTime.now())) ||
            (anime.aired.from.isSafelyBefore(DateTime.now()) &&
                (anime.aired.to?.year == null || anime.aired.to?.year == 0)))
        .toList();

    final List<Anime> nextAnime = _registeredAnime
        .where((anime) => ((anime.aired.from != null &&
                anime.aired.from.isSafelyAfter(DateTime.now()) &&
                (anime.aired.to?.year == null || anime.aired.to?.year == 0)) ||
            anime.aired.from?.year == 0))
        .toList();

    //archive tab
    final numOfYears = List<int>.from(_registeredAnime
        .where((anime) => anime.aired.from != null)
        .map((anime) => anime.aired.from!.year)
        .toSet());

// Sort years in descending order (if any exist)
    if (numOfYears.isNotEmpty) {
      numOfYears.sort((a, b) => b.compareTo(a));
    }

// Sort anime by air date, handling null dates
    _registeredAnime.sort((a, b) {
      // Handle case where either date is null
      if (a.aired.from == null && b.aired.from == null) return 0;
      if (a.aired.from == null) return 1; // Null dates go last
      if (b.aired.from == null) return -1;

      // Normal comparison when both are non-null
      return b.aired.from!.compareTo(a.aired.from!);
    });

    //Last season tab
    Widget lastContent = const Center(
      child: Text(
        'No shows are present',
        style: TextStyle(color: Colors.amber),
      ),
    );
    if (_isLoading) {
      lastContent = const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (lastAnime.isNotEmpty) {
      lastContent = GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.5,
          crossAxisSpacing: 0,
          mainAxisSpacing: 3,
        ),
        itemCount: lastAnime.length,
        itemBuilder: (ctx, index) => SeasonalAnimeItem(
          anime: lastAnime[index],
          onSelectAnime: (anime) {
            pickAnime(context, anime);
          },
          onEditRating: (anime) {
            editScore(context, anime);
          },
        ),
      );
    }
    if (_error != null) {
      lastContent = Center(
        child: Text(
          _error!,
          style: const TextStyle(color: Colors.white),
        ),
      );
    }

    //This season tab
    Widget thisSeaContent = const Center(
      child: Text(
        'No shows are present',
        style: TextStyle(color: Colors.amber),
      ),
    );
    if (_isLoading) {
      thisSeaContent = const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (thisSeaAnime.isNotEmpty) {
      thisSeaContent = GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.5,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: thisSeaAnime.length,
        itemBuilder: (ctx, index) => SeasonalAnimeItem(
          anime: thisSeaAnime[index],
          onSelectAnime: (anime) {
            pickAnime(context, anime);
          },
          onEditRating: (anime) {
            editScore(context, anime);
          },
        ),
      );
    }
    if (_error != null) {
      thisSeaContent = Center(
        child: Text(
          _error!,
          style: const TextStyle(color: Colors.white),
        ),
      );
    }

    //Next season tab
    Widget nextContent = const Center(
      child: Text(
        'No shows are present',
        style: TextStyle(color: Colors.amber),
      ),
    );
    if (_isLoading) {
      nextContent = const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (nextAnime.isNotEmpty) {
      nextContent = GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.5,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: nextAnime.length,
        itemBuilder: (ctx, index) => SeasonalAnimeItem(
          anime: nextAnime[index],
          onSelectAnime: (anime) {
            pickAnime(context, anime);
          },
          onEditRating: (anime) {
            editScore(context, anime);
          },
        ),
      );
    }
    if (_error != null) {
      nextContent = Center(
        child: Text(
          _error!,
          style: const TextStyle(color: Colors.white),
        ),
      );
    }
    //archive tab

    Widget archContent = ListView(
      children: <Widget>[
        Column(
          children: [
            for (final year in numOfYears)
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      year.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Season filtering with null safety
                      ArchiveAnimeItem(
                        onPickSeason: (datedAnime) {
                          pickSeason(datedAnime, 'Winter $year');
                        },
                        animeSeason: 'Winter',
                        datedAnime: _registeredAnime
                            .where((anime) =>
                                anime.aired.from != null && // Add null check
                                anime.aired.from!.year == year &&
                                anime.aired.from!.month >= 1 &&
                                anime.aired.from!.month < 4)
                            .toList(),
                      ),
                      ArchiveAnimeItem(
                        onPickSeason: (datedAnime) {
                          pickSeason(datedAnime, 'Spring $year');
                        },
                        animeSeason: 'Spring',
                        datedAnime: _registeredAnime
                            .where((anime) =>
                                anime.aired.from != null && // Add null check
                                anime.aired.from!.year == year &&
                                anime.aired.from!.month >= 4 &&
                                anime.aired.from!.month < 7)
                            .toList(),
                      ),

                      ArchiveAnimeItem(
                        onPickSeason: (datedAnime) {
                          pickSeason(datedAnime, 'Summer $year');
                        },
                        animeSeason: 'Summer',
                        datedAnime: _registeredAnime
                            .where((anime) =>
                                anime.aired.from != null && // Add null check
                                anime.aired.from!.year == year &&
                                anime.aired.from!.month >= 7 &&
                                anime.aired.from!.month < 10)
                            .toList(),
                      ),

                      ArchiveAnimeItem(
                        onPickSeason: (datedAnime) {
                          pickSeason(datedAnime, 'Fall $year');
                        },
                        animeSeason: 'Fall',
                        datedAnime: _registeredAnime
                            .where((anime) =>
                                anime.aired.from != null && // Add null check
                                anime.aired.from!.year == year &&
                                anime.aired.from!.month >= 10 &&
                                anime.aired.from!.month <=
                                    12) // Fixed: month < 12 to month <= 12
                            .toList(),
                      ),

                      //old
                      // ArchiveAnimeItem(
                      //   onPickSeason: (datedAnime) {
                      //     pickSeason(datedAnime, 'Summer $year');
                      //   },
                      //   animeSeason: 'Summer',
                      //   datedAnime: _registeredAnime
                      //       .where((anime) => (anime.aired.from!
                      //           .isAfter(DateTime(year, 7, 1))))
                      //       .where((anime) => anime.aired.from!
                      //           .isBefore(DateTime(year, 10, 1)))
                      //       .toList(),
                      // ),
                      // ArchiveAnimeItem(
                      //   onPickSeason: (datedAnime) {
                      //     pickSeason(datedAnime, 'Fall $year');
                      //   },
                      //   animeSeason: 'Fall',
                      //   datedAnime: _registeredAnime
                      //       .where((anime) => (anime.aired.from!
                      //           .isAfter(DateTime(year, 10, 1))))
                      //       .where((anime) => anime.aired.from!
                      //           .isBefore(DateTime(year, 12, 31)))
                      //       .toList(),
                      // ),
                    ],
                  ),
                ],
              ),
          ],
        )
      ],
    );

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
            Tab(
              text: 'Archive',
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
          Center(
            child: archContent,
          ),
        ],
      ),
    );
  }
}
