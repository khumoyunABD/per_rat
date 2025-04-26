import 'package:flutter/material.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';
import 'package:per_rat/presentation/screens/anime_details.dart';
import 'package:per_rat/presentation/screens/edit_ratings.dart';
import 'package:per_rat/presentation/widgets/showDetailsSkeleton.dart';

class ShowRatingDetails extends StatefulWidget {
  const ShowRatingDetails({
    super.key,
    required this.showRating,
  });

  final ShowRating showRating;

  @override
  State<ShowRatingDetails> createState() => _ShowRatingDetailsState();
}

class _ShowRatingDetailsState extends State<ShowRatingDetails> {
  List<Anime> _registeredAnime = [];
  Anime? animeSet;
  bool _isLoading = true; // Add a loading state

  final animeRepo = AnimeRepository();

  @override
  void initState() {
    super.initState();
    _fetchAnime();
  }

  // void _fetchAnime() async {
  //   List<Anime> loadedAnime = await animeRepo.fetchAllAnime();
  //   setState(() {
  //     _registeredAnime = loadedAnime;
  //     animeSet = getAnimeFromShowRating(widget.showRating);
  //     _isLoading = false; // Update loading state
  //   });
  // }

  void _fetchAnime() async {
    try {
      AnimeResponse response = await animeRepo.fetchAnime();
      setState(() {
        _registeredAnime =
            response.data; // Extract the list of Anime from the response
        animeSet = getAnimeFromShowRating(widget.showRating);

        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Anime? getAnimeFromShowRating(ShowRating showRating) {
    for (Anime anime in _registeredAnime) {
      if (anime.title == showRating.showName) {
        return anime;
      }
    }
    return null;
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

  @override
  Widget build(BuildContext context) {
    // final List<Anime> similarAnime = _registeredAnime.where((anime) {
    //   // Find common genres between the two anime
    //   int commonGenres = anime.genreNames
    //       .where((g) => animeSet!.genreNames.contains(g))
    //       .length;

    //   // Only include anime with at least 2 similar genres and different title
    //   return commonGenres >= 2 && anime.title != animeSet!.title;
    // }).toList();

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(widget.showRating.showName),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          right: 8,
          bottom: 12,
        ),
        child: SizedBox(
          height: 65,
          width: 65,
          child: FloatingActionButton(
            backgroundColor: Colors.green,
            shape: CircleBorder(),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (ctx) => EditRatingsScreen(
                          showRating: widget.showRating,
                        )),
              );
            },
            child: Icon(Icons.edit),
          ),
        ),
      ),
      body: _isLoading
          ? shimmerShowSkeleton()
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.network(
                      animeSet!.mainImageUrl,
                      height: 300,
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      widget.showRating.showName,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildInfoColumn(
                        'Score',
                        animeSet!.score == 0
                            ? 'N/A'
                            : animeSet!.score.toString(),
                        Icons.star_border,
                      ),
                      _buildInfoColumn(
                        'Rank',
                        animeSet!.rank == 0 ? 'N/A' : animeSet!.rank.toString(),
                        Icons.leaderboard,
                      ),
                      _buildInfoColumn(
                        'Popularity',
                        animeSet!.popularity.toString(),
                        Icons.people,
                      ),
                      _buildInfoColumn(
                        'Favorites',
                        animeSet!.favorites.toString(),
                        Icons.favorite,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  _buildStatusRow('Premiered',
                      '${animeSet!.aired.from != null ? formatterMY.format(animeSet!.aired.from!) : "Unknown"}'),
                  _buildStatusRow('Status', animeSet!.status ?? 'unknown'),
                  _buildStatusRow(
                      'Episodes', '${animeSet!.episodes.toString()}'),
                  SizedBox(height: 16),
                  _buildGenreChips(animeSet!.genreNames),
                  SizedBox(height: 16),
                  Text(
                    'Synopsis',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    animeSet!.synopsis ?? 'no synopsis',
                    // .join()
                    // .replaceAll('[', '"')
                    // .replaceAll(']', '"'),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Similar Anime',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 97, 70, 152),
                    ),
                  ),
                  // if (similarAnime.isEmpty)
                  //   Container(
                  //     height: 100,
                  //     alignment: Alignment.bottomCenter,
                  //     child: const Center(
                  //       child: Text(
                  //         'No similar anime were found!',
                  //         style: TextStyle(color: Colors.white),
                  //       ),
                  //     ),
                  //   ),
                  // if (similarAnime.isNotEmpty)
                  //   SizedBox(
                  //     height: 240,
                  //     child: ListView.builder(
                  //       itemExtent: 155,
                  //       scrollDirection: Axis.horizontal,
                  //       padding: const EdgeInsets.only(
                  //           left: 5, right: 15, top: 15, bottom: 10),
                  //       itemCount: similarAnime.length,
                  //       itemBuilder: (context, index) {
                  //         return SimilarAnimeItem(
                  //           anime: similarAnime[index],
                  //           onPickAnime: (anime) {
                  //             pickAnime(context, anime);
                  //           },
                  //         );
                  //       },
                  //     ),
                  //   ),

                  // SizedBox(height: 8),
                  // _buildSimilarAnimeList(similarAnime),
                ],
              ),
            ),
    );
  }

  Widget _buildInfoColumn(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildStatusRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$label:',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildGenreChips() {
  //   return Wrap(
  //     spacing: 8,
  //     children: [
  //       Chip(
  //         label: Text('DRAMA'),
  //         backgroundColor: Colors.redAccent,
  //       ),
  //       Chip(
  //         label: Text('SCI-FI'),
  //         backgroundColor: Colors.redAccent,
  //       ),
  //       Chip(
  //         label: Text('SUPERNATURAL'),
  //         backgroundColor: Colors.redAccent,
  //       ),
  //     ],
  //   );
  // }

  Widget _buildGenreChips(List<String> genres) {
    return Wrap(
      spacing: 8,
      children: genres
          .map((genre) => Chip(
                label: Text(genre.toUpperCase()),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.redAccent,
              ))
          .toList(),
    );
  }
}
