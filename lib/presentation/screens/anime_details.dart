import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';
import 'package:per_rat/presentation/screens/edit_score_screen.dart';
import 'package:per_rat/presentation/widgets/showDetailsSkeleton.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AnimeDetailsScreen extends StatefulWidget {
  const AnimeDetailsScreen({
    super.key,
    required this.anime,
  });

  final Anime anime;

  @override
  State<AnimeDetailsScreen> createState() => _AnimeDetailsScreenState();
}

class _AnimeDetailsScreenState extends State<AnimeDetailsScreen> {
  late YoutubePlayerController _controller;
  //List<Anime> _registeredAnime = [];
  bool _isLoading = true; // Add a loading state

  final user = FirebaseAuth.instance.currentUser!;
  bool movieExists = false;

  final animeRepo = AnimeRepository();

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

    checkIfMovieExists();
    // _fetchAnime();

    log(widget.anime.toString());
    _isLoading = false;
  }

  // void _fetchAnime() async {
  //   List<Anime> loadedAnime = await animeRepo.fetchAllAnime();
  //   setState(() {
  //     _registeredAnime = loadedAnime;
  //     _isLoading = false;
  //   });
  // }

  Future<void> checkIfMovieExists() async {
    try {
      DocumentReference userDocRef =
          FirebaseFirestore.instance.collection('users').doc(user.uid);
      CollectionReference ratingCollectionRef =
          userDocRef.collection('ratings');

      DocumentSnapshot docSnapshot =
          await ratingCollectionRef.doc(widget.anime.title).get();
      setState(() {
        movieExists = docSnapshot.exists;
      });
    } catch (error) {
      print("Error checking movie existence: $error");
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

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final List<Anime> similarAnime = _registeredAnime.where((anime) {
    //   // Find common genres between the two anime
    //   int commonGenres =
    //       anime.genre.where((g) => widget.anime.genre.contains(g)).length;

    //   // Only include anime with at least 2 similar genres and different title
    //   return commonGenres >= 2 && anime.title != widget.anime.title;
    // }).toList();

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
                        )),
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
                  // Replace the current image widget with this updated version
                  // Center(
                  //   child: widget.anime.images?.jpg?.imageUrl != null &&
                  //           widget.anime.images!.jpg!.imageUrl!.isNotEmpty
                  //       ? Image.network(
                  //           widget.anime.images!.jpg!.imageUrl!,
                  //           height: 300,
                  //           loadingBuilder: (context, child, loadingProgress) {
                  //             if (loadingProgress == null) return child;
                  //             return Center(
                  //               child: CircularProgressIndicator(
                  //                 value: loadingProgress.expectedTotalBytes !=
                  //                         null
                  //                     ? loadingProgress.cumulativeBytesLoaded /
                  //                         loadingProgress.expectedTotalBytes!
                  //                     : null,
                  //               ),
                  //             );
                  //           },
                  //           errorBuilder: (context, error, stackTrace) {
                  //             return Container(
                  //               height: 300,
                  //               color: Colors.grey[700],
                  //               child: Center(
                  //                 child: Icon(
                  //                   Icons.image_not_supported,
                  //                   size: 50,
                  //                   color: Colors.white,
                  //                 ),
                  //               ),
                  //             );
                  //           },
                  //         )
                  //       : Container(
                  //           height: 300,
                  //           color: Colors.grey[700],
                  //           child: Center(
                  //             child: Icon(
                  //               Icons.image_not_supported,
                  //               size: 50,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ),
                  // ),
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

                  ///similar anime section
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
                  const SizedBox(
                    height: 30,
                  ),

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
