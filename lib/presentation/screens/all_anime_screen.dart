import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:per_rat/data/client/jikan_service.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';
import 'package:per_rat/presentation/screens/anime_details.dart';
import 'package:per_rat/presentation/screens/edit_score_screen.dart'; // Changed import
import 'package:per_rat/presentation/widgets/all_anime_item.dart';
import 'package:per_rat/presentation/widgets/all_anime_item_skeleton.dart';

class AllAnimeScreen extends StatefulWidget {
  const AllAnimeScreen({
    super.key,
  });

  @override
  State<AllAnimeScreen> createState() => _AllAnimeScreenState();
}

class _AllAnimeScreenState extends State<AllAnimeScreen> {
  //List<Anime> _registeredAnime = [];
  String? _error;
  bool _isLoading = true; // Add a loading state

  //getting user Ratings
  final user = FirebaseAuth.instance.currentUser!;
  List<ShowRating> _showratings = [];

  final animeRepo =
      AnimeRepository(JikanService()); // Pass JikanService instance

  Future<void> displayRating() async {
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .collection('ratings')
          .orderBy('timestamp', descending: true)
          .get();

      List<ShowRating> filteredRatings = querySnapshot.docs
          .map((doc) => ShowRating.fromFirestore(doc))
          .toList();

      if (mounted) {
        setState(() {
          _showratings = filteredRatings;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = 'Failed to load ratings: $e';
          _isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    displayRating();
  }

  @override
  Widget build(BuildContext context) {
    void pickAnime(BuildContext context, Anime anime) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => AnimeDetailsScreen(
            anime: anime,
          ),
        ),
      );
    }

    // Modified editRating to accept Anime and ShowRating
    void editRating(BuildContext context, Anime anime, ShowRating showRating) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (ctx) => EditScoreScreen(
                // Changed to EditScoreScreen
                anime: anime, // Pass anime
                rating: showRating,
              )));
    }

    Widget content = _isLoading
        ? SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: allAnimeSkeleton,
            ),
          )
        : _showratings.isEmpty
            ? Center(
                child: Text(
                  'No anime added',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )
            : ListView.builder(
                itemCount: _showratings.length,
                itemBuilder: (context, index) {
                  var rating = _showratings[index];

                  return AllAnimeItem(
                      showRating: rating,
                      onTap: () async {
                        try {
                          // Fetches the full details of an anime by its MAL ID
                          // and returns an Anime object compatible with AnimeDetailsScreen.
                          Anime fullAnimeDetails =
                              await animeRepo.fetchAnimeById(rating.malId);
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
                      onEditRating: (showRating) async {
                        // Make async
                        try {
                          // Fetches the full details of an anime by its MAL ID
                          Anime fullAnimeDetails =
                              await animeRepo.fetchAnimeById(showRating.malId);
                          if (!mounted)
                            return; // Check if the widget is still in the tree
                          // Now call editRating with the fetched Anime object and the ShowRating
                          editRating(context, fullAnimeDetails, showRating);
                        } catch (e) {
                          log('Error fetching anime details for editing: $e');
                          if (!mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                                    'Failed to load anime details for editing. Please try again.')),
                          );
                        }
                      });
                },
              );

    if (_error != null) {
      content = Center(
        child: Text(
          _error!,
          style: const TextStyle(color: Colors.white),
        ),
      );
    }

    return Scaffold(
      body: content,
    );
  }
}
