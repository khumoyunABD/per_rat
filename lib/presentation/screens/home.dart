import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:per_rat/data/client/jikan_service.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';
// import 'package:per_rat/data/repositories/anime_repository.dart'; // Removed
import 'package:per_rat/data/repositories/firestore_service.dart';
import 'package:per_rat/data/repositories/messaging_service.dart';
import 'package:per_rat/presentation/screens/anime_details.dart';
import 'package:per_rat/presentation/widgets/home_anime_skeleton.dart';
import 'package:per_rat/presentation/widgets/home_grid_anime_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  final FirestoreService _firestoreService =
      FirestoreService(); // Initialize the Firestore service

  String? _error;
  bool _isLoading = true; // Add a loading state

  //getting user Ratings
  final user = FirebaseAuth.instance.currentUser!;
  List<ShowRating> _showratings = [];

  final animeRepo = AnimeRepository(JikanService());

  //chat
  final MessagingService _messagingService = MessagingService();

  //selection mode
  bool _isSelectionMode = false;
  List<ShowRating> _selectedRatings = [];

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
          setState(() {
            _isLoading = false;
          });
        });
        //_checkLoadingState();
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

  Future<void> deleteRating(ShowRating showRating) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .collection('ratings')
          .doc(showRating.malId.toString()) // Assuming title is the document ID
          .delete();

      if (mounted) {
        setState(() {
          _showratings.remove(showRating);
        });

        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Selected ratings have been deleted'),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error deleting ${showRating.title}: $e'),
          ),
        );
      }
    }
  }

  void _toggleSelectionMode() {
    setState(() {
      _isSelectionMode = !_isSelectionMode;
      if (!_isSelectionMode) {
        _selectedRatings.clear();
      }
    });
  }

  void _toggleRatingSelection(ShowRating rating) {
    setState(() {
      if (_selectedRatings.contains(rating)) {
        _selectedRatings.remove(rating);
      } else {
        _selectedRatings.add(rating);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeData();
    displayRating();
    _messagingService.initialize();
  }

  Future<void> _initializeData() async {
    try {
      await _firestoreService.uploadUserMetadata();
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = 'Failed to upload user metadata: $e';
        });
      }
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   if (state == AppLifecycleState.paused ||
  //       state == AppLifecycleState.inactive) {
  //     _firestoreService.setUserOnlineStatus(
  //         false); // Set user status to offline when the app is paused or inactive
  //   } else if (state == AppLifecycleState.resumed) {
  //     _firestoreService.setUserOnlineStatus(
  //         true); // Set user status to online when the app is resumed
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    void pickAnime(BuildContext context, Anime anime, ShowRating rating) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => AnimeDetailsScreen(
            anime: anime,
            showRating: rating,
          ),
        ),
      );
    }

    Widget content = _isLoading
        ? SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: homeSkeleton,
            ),
          )
        : _showratings.isEmpty
            ? Center(
                child: Text(
                  'No anime added',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.5,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: _showratings.length,
                itemBuilder: (context, index) {
                  var rating = _showratings[index];
                  // animeSet = getAnimeFromShowrating(rating); // Removed
                  // if (animeSet == null) { // Removed, assuming showRating will always have necessary data
                  //   return const Text('Error displaying rating'); // Or some other placeholder
                  // } // Removed
                  return GestureDetector(
                    onLongPress: () {
                      _toggleSelectionMode();
                      _toggleRatingSelection(rating);
                    },
                    onTap: () async {
                      if (_isSelectionMode) {
                        _toggleRatingSelection(rating);
                      } else {
                        try {
                          // Fetches the full details of an anime by its MAL ID
                          // and returns an Anime object compatible with AnimeDetailsScreen.
                          Anime fullAnimeDetails =
                              await animeRepo.fetchAnimeById(rating.malId);
                          if (!mounted)
                            return; // Check if the widget is still in the tree
                          pickAnime(context, fullAnimeDetails, rating);
                        } catch (e) {
                          log('Error fetching recommended anime details: $e');
                          if (!mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                                    'Failed to load anime details. Please try again.')),
                          );
                        }
                      }
                    },
                    child: HomeAnimeGridItem(
                      showRating: rating,
                      // anime: animeSet!, // Removed
                      isSelected: _selectedRatings.contains(rating),
                      onDeleteRating: (rating) {
                        deleteRating(rating);
                      },
                    ),
                  );
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
      appBar: AppBar(
        title: const Text('HOME'),
        actions: _isSelectionMode
            ? [
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    for (var rating in _selectedRatings) {
                      deleteRating(rating);
                    }
                    _toggleSelectionMode();
                  },
                ),
              ]
            : [],
      ),
      body: content,
      floatingActionButton: _isSelectionMode
          ? FloatingActionButton(
              onPressed: _toggleSelectionMode,
              child: const Icon(Icons.close),
            )
          : null,
    );
  }
}
