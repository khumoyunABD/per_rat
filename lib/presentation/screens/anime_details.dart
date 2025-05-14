import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:per_rat/data/client/jikan_service.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';
import 'package:per_rat/presentation/screens/anime_recommendation/recommendation_anime_item.dart';
import 'package:per_rat/presentation/screens/edit_score_screen.dart';
import 'package:per_rat/presentation/widgets/showDetailsSkeleton.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AnimeDetailsScreen extends StatefulWidget {
  AnimeDetailsScreen({
    super.key,
    required this.anime,
    this.showRating,
  });

  final Anime anime;
  final ShowRating? showRating;

  @override
  State<AnimeDetailsScreen> createState() => _AnimeDetailsScreenState();
}

class _AnimeDetailsScreenState extends State<AnimeDetailsScreen> {
  late YoutubePlayerController _controller;
  //List<Anime> _registeredAnime = [];
  bool _isLoading = true; // Add a loading state
  List<RecommendationEntry> _animeRecommendations = [];

  final user = FirebaseAuth.instance.currentUser!;
  bool movieExists = false;

  final animeRepo = AnimeRepository(JikanService());

  @override
  void initState() {
    final videoID =
        YoutubePlayer.convertUrlToId(widget.anime.trailer.url ?? '');

    _controller = YoutubePlayerController(
      initialVideoId: videoID ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        //controlsVisibleAtStart: true,
        loop: false,
        forceHD: false,
        showLiveFullscreenButton: false,
      ),
    );
    super.initState();

    log(widget.showRating.toString());

    // checkIfMovieExists();
    _fetchAnimeRecommendation();

    log('Anime ID in Details is: ${widget.anime.malId}');

    // log(widget.anime.toString());
    _isLoading = false;
  }

  void _fetchAnimeRecommendation() async {
    List<RecommendationEntry> recommendations =
        await animeRepo.fetchAnimeRecommendation(widget.anime.malId ?? 0);
    setState(() {
      _animeRecommendations = recommendations;
    });
  }

  // Future<void> checkIfMovieExists() async {
  //   try {
  //     DocumentReference userDocRef =
  //         FirebaseFirestore.instance.collection('users').doc(user.uid);
  //     CollectionReference ratingCollectionRef =
  //         userDocRef.collection('ratings');

  //     DocumentSnapshot docSnapshot =
  //         await ratingCollectionRef.doc(widget.anime.malId.toString()).get();
  //     setState(() {
  //       movieExists = docSnapshot.exists;
  //     });
  //   } catch (error) {
  //     log("Error checking movie existence: $error");
  //   }
  // }

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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(widget.anime.title),
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
                  builder: (ctx) => EditScoreScreen(
                    anime: widget.anime,
                    rating: widget.showRating,
                  ),
                ),
              );
            },
            //icon: Icon(movieExists ? Icons.edit : Icons.add),
            child: Icon(movieExists ? Icons.edit : Icons.add),
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
                  //test
                  Center(
                    child: Image.network(
                      //'https://cdn.myanimelist.net/images/anime/7/21569.jpg',

                      widget.anime.mainImageUrl,
                      height: 300,
                    ),
                  ),

                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      widget.anime.title,
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
                        (widget.anime.score == 0)
                            ? 'N/A'
                            : widget.anime.score.toString(),
                        Icons.star_border,
                      ),
                      _buildInfoColumn(
                        'Rank',
                        (widget.anime.rank == 0)
                            ? 'N/A'
                            : widget.anime.rank.toString(),
                        Icons.leaderboard,
                      ),
                      _buildInfoColumn(
                        'Popularity',
                        widget.anime.popularity.toString(),
                        Icons.people,
                      ),
                      _buildInfoColumn(
                        'Favorites',
                        widget.anime.favorites.toString(),
                        Icons.favorite,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  _buildStatusRow('Premiered',
                      '${widget.anime.aired.from != null ? formatterMY.format(widget.anime.aired.from!) : "Unknown"}'),
                  _buildStatusRow('Status', widget.anime.status ?? 'unknown'),
                  _buildStatusRow(
                      'Episodes', '${widget.anime.episodes.toString()}'),
                  SizedBox(height: 16),
                  _buildGenreChips(widget.anime.genreNames),
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
                    widget.anime.synopsis ?? 'no synopsis',
                    // .join()
                    // .replaceAll('[', '"')
                    // .replaceAll(']', '"'),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: YoutubePlayer(
                      //actionsPadding: const EdgeInsets.all(15),
                      controller: _controller,
                      showVideoProgressIndicator: true,
                      aspectRatio: PlaybackRate.normal,
                      bottomActions: [
                        CurrentPosition(),
                        ProgressBar(
                          isExpanded: true,
                          colors: const ProgressBarColors(
                            playedColor: Colors.amber,
                            handleColor: Colors.red,
                          ),
                        ),
                        const PlaybackSpeedButton(),
                        PlayPauseButton(),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),

                  // Recommendations Section
                  if (_animeRecommendations.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Recommendations',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 250, // Height for the horizontal list
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _animeRecommendations.length,
                        itemBuilder: (context, index) {
                          final recommendation = _animeRecommendations[index];
                          final animeEntry = recommendation.entry;

                          return RecommendedAnimeItem(
                            animeEntry: animeEntry,
                            onTap: () async {
                              try {
                                // Fetches the full details of an anime by its MAL ID
                                // and returns an Anime object compatible with AnimeDetailsScreen.
                                Anime fullAnimeDetails = await animeRepo
                                    .fetchAnimeById(animeEntry.malId ?? 0);
                                if (!mounted)
                                  return; // Check if the widget is still in the tree
                                pickAnime(context, fullAnimeDetails);
                              } catch (e) {
                                log('Error fetching recommended anime details: $e');
                                if (!mounted) return;
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          'Failed to load anime details. Please try again.')),
                                );
                              }
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 30), // Spacing after the list
                  ],
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
