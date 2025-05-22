import 'dart:async'; // For debounce timer

import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart' as jikan; // Import jikan_api
import 'package:per_rat/data/client/jikan_service.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';
import 'package:per_rat/presentation/screens/anime_details.dart';

class RealtimeSearchScreen extends StatefulWidget {
  const RealtimeSearchScreen({super.key});

  @override
  State<RealtimeSearchScreen> createState() => _RealtimeSearchScreenState();
}

class _RealtimeSearchScreenState extends State<RealtimeSearchScreen> {
  var searchName = "";
  List<AnimeSearchResult> _searchResults = [];
  bool _isLoading = false;
  String _errorMessage = '';
  Timer? _debounce;

  // Create Jikan API client
  final jikanApi = jikan.Jikan();

  // Create anime repository
  final animeRepository = AnimeRepository(JikanService());

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  // Search anime using Jikan API
  Future<void> _searchAnime(String query) async {
    if (query.isEmpty) {
      setState(() {
        _searchResults = [];
        _isLoading = false;
      });
      return;
    }

    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });

    try {
      final response = await jikanApi.searchAnime(query: query);

      // Convert search results to lightweight model
      final convertedResults = response
          .map((anime) => AnimeSearchResult.fromJikanAnime(anime))
          .toList();

      setState(() {
        _searchResults = convertedResults;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Error searching for anime: $e';
        _isLoading = false;
      });
      print('Search error: $e');
    }
  }

  // Fetch full anime details and navigate to details screen
  void _viewAnimeDetails(
      BuildContext context, AnimeSearchResult searchResult) async {
    // First, dismiss the keyboard
    FocusScope.of(context).unfocus();
    try {
      // Show loading indicator
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
          child: CircularProgressIndicator(),
        ),
      );

      // Fetch the full anime details using the repository
      final fullAnimeDetails =
          await animeRepository.fetchAnimeById(searchResult.malId);

      // Close loading indicator
      Navigator.of(context).pop();

      // Navigate to details screen
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => AnimeDetailsScreen(
            anime: fullAnimeDetails,
          ),
        ),
      );
    } catch (e) {
      // Close loading indicator
      Navigator.of(context).pop();

      // Show error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('Failed to load anime details. Please try again.')),
      );
      print('Error fetching anime details: $e');
    }
  }

  String capitalizeFirstLetter(String? value) {
    if (value == null || value.isEmpty) {
      return '';
    }

    value = value.trim();
    return value[0].toUpperCase() + value.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PERRAT'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          // Dismiss keyboard when tapping anywhere in the screen
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            // Search field
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: SizedBox(
                height: 50,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      searchName = capitalizeFirstLetter(value);
                    });

                    // Add debounce to avoid excessive API calls
                    if (_debounce?.isActive ?? false) _debounce!.cancel();
                    _debounce = Timer(const Duration(milliseconds: 500), () {
                      _searchAnime(searchName);
                    });
                  },
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    filled: true,
                    fillColor: Color.fromARGB(255, 39, 39, 39),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            // Results area
            Expanded(
              child: searchName.isEmpty
                  ? Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Type to search for anime',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    )
                  : _buildSearchResults(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResults() {
    if (_isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    if (_errorMessage.isNotEmpty) {
      return Center(
        child: Text(
          _errorMessage,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      );
    }

    if (_searchResults.isEmpty) {
      return Center(
        child: Text(
          'No results found!',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: _searchResults.length,
      itemBuilder: (context, index) {
        final result = _searchResults[index];
        return ListTile(
          contentPadding: const EdgeInsets.all(5),
          minVerticalPadding: 10,
          tileColor: Theme.of(context).colorScheme.secondaryContainer,
          leading: CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
              result.imageUrl,
            ),
          ),
          title: Text(result.title),
          isThreeLine: true,
          trailing: IconButton.outlined(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: () {
              // Clear focus first, then navigate
              FocusScope.of(context).unfocus();
              _viewAnimeDetails(context, result);
            },
            icon: const Icon(Icons.edit_note_sharp),
          ),
          subtitle: Row(
            children: [
              Text('${result.episodes?.toString() ?? '?'} ep.'),
              Text(
                ' ${result.status ?? 'Unknown'}',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              )
            ],
          ),
          onTap: () {
            // Clear focus first, then navigate
            FocusScope.of(context).unfocus();
            _viewAnimeDetails(context, result);
          },
        );
      },
    );
  }
}
