import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:per_rat/data/models/models.dart';
// import 'package:per_rat/presentation/bloc/anime_bloc/anime_bloc.dart'; // anime_bloc seems unused
import 'package:per_rat/presentation/bloc/top_anime_bloc/top_anime_bloc.dart'; // This should export events and states
import 'package:per_rat/presentation/screens/anime_details.dart';
import 'package:per_rat/presentation/screens/realtime_search.dart';
import 'package:per_rat/presentation/widgets/discover_anime_item.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({
    super.key,
  });

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  var searchName = '';

  @override
  void initState() {
    super.initState();
    // Dispatch events to load all categories of top anime
    context
        .read<TopAnimeBloc>()
        .add(const FetchTopAnimeEvent(filter: "airing"));

    context
        .read<TopAnimeBloc>()
        .add(const FetchTopAnimeEvent(filter: "upcoming"));
    context
        .read<TopAnimeBloc>()
        .add(const FetchTopAnimeEvent(filter: "bypopularity"));
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SizedBox(
          height: 40,
          child: TextField(
            canRequestFocus: false,
            onChanged: (value) {
              setState(() {
                searchName = value;
              });
            },
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => RealtimeSearchScreen(),
                ),
              );
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none),
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
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
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                  top: 8,
                ),
                child: Text(
                  'Ongoing',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              BlocBuilder<TopAnimeBloc, TopAnimeState>(
                buildWhen: (previous, current) {
                  // Rebuild only if the state is relevant to "airing" or it's an initial/general loading
                  if (current is TopAnimeLoading && current.filter == "airing")
                    return true;
                  if (current is TopAnimeLoaded && current.filter == "airing")
                    return true;
                  if (current is TopAnimeError && current.filter == "airing")
                    return true;
                  if (previous is TopAnimeInitial && current is TopAnimeLoading)
                    return true; // Initial load
                  return false;
                },
                builder: (context, state) {
                  if (state is TopAnimeLoading && state.filter == "airing") {
                    return const SizedBox(
                        height: 300,
                        child: Center(child: CircularProgressIndicator()));
                  }
                  if (state is TopAnimeLoaded && state.filter == "airing") {
                    final animeList = state.topAnimeResponse.data;
                    return SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 15, bottom: 10),
                        itemCount: animeList.length,
                        itemBuilder: (context, index) {
                          return DiscoverAnimeItem(
                            anime: animeList[index],
                            onPickAnime: (anime) {
                              pickAnime(context, anime); // Pass Anime
                            },
                          );
                        },
                      ),
                    );
                  }
                  if (state is TopAnimeError && state.filter == "airing") {
                    return SizedBox(
                        height: 300,
                        child: Center(child: Text('Error: ${state.message}')));
                  }
                  // Attempt to show previously loaded "airing" data if available and current state is for another filter
                  final currentState = context.watch<TopAnimeBloc>().state;
                  if (currentState is TopAnimeLoaded &&
                      currentState.filter == "airing") {
                    final animeList = currentState.topAnimeResponse.data;
                    return SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 15, bottom: 10),
                        itemCount: animeList.length,
                        itemBuilder: (context, index) {
                          return DiscoverAnimeItem(
                            anime: animeList[index],
                            onPickAnime: (anime) {
                              pickAnime(context, anime); // Pass Anime
                            },
                          );
                        },
                      ),
                    );
                  }
                  return const SizedBox(
                      height: 300,
                      child: Center(
                          child:
                              CircularProgressIndicator())); // Default or initial state
                },
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                  top: 8,
                ),
                child: Text(
                  'Trending',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              BlocBuilder<TopAnimeBloc, TopAnimeState>(
                buildWhen: (previous, current) {
                  if (current is TopAnimeLoading &&
                      current.filter == "bypopularity") return true;
                  if (current is TopAnimeLoaded &&
                      current.filter == "bypopularity") return true;
                  if (current is TopAnimeError &&
                      current.filter == "bypopularity") return true;
                  if (previous is TopAnimeInitial && current is TopAnimeLoading)
                    return true;
                  return false;
                },
                builder: (context, state) {
                  if (state is TopAnimeLoading &&
                      state.filter == "bypopularity") {
                    return const SizedBox(
                        height: 300,
                        child: Center(child: CircularProgressIndicator()));
                  }
                  if (state is TopAnimeLoaded &&
                      state.filter == "bypopularity") {
                    final animeList = state.topAnimeResponse.data;
                    return SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 15, bottom: 10),
                        itemCount: animeList.length,
                        itemBuilder: (context, index) {
                          return DiscoverAnimeItem(
                            anime: animeList[index],
                            onPickAnime: (anime) {
                              pickAnime(context, anime); // Pass Anime
                            },
                          );
                        },
                      ),
                    );
                  }
                  if (state is TopAnimeError &&
                      state.filter == "bypopularity") {
                    return SizedBox(
                        height: 300,
                        child: Center(child: Text('Error: ${state.message}')));
                  }
                  final currentState = context.watch<TopAnimeBloc>().state;
                  if (currentState is TopAnimeLoaded &&
                      currentState.filter == "bypopularity") {
                    final animeList = currentState.topAnimeResponse.data;
                    return SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 15, bottom: 10),
                        itemCount: animeList.length,
                        itemBuilder: (context, index) {
                          return DiscoverAnimeItem(
                            anime: animeList[index],
                            onPickAnime: (anime) {
                              pickAnime(context, anime);
                            },
                          );
                        },
                      ),
                    );
                  }
                  return const SizedBox(
                      height: 300,
                      child: Center(
                          child:
                              CircularProgressIndicator())); // Default or initial state
                },
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                  top: 8,
                ),
                child: Text(
                  'Upcoming',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              BlocBuilder<TopAnimeBloc, TopAnimeState>(
                buildWhen: (previous, current) {
                  // Add this buildWhen condition to match the pattern used for other sections
                  if (current is TopAnimeLoading &&
                      current.filter == 'upcoming') return true;
                  if (current is TopAnimeLoaded && current.filter == 'upcoming')
                    return true;
                  if (current is TopAnimeError && current.filter == 'upcoming')
                    return true;
                  if (previous is TopAnimeInitial && current is TopAnimeLoading)
                    return true;
                  return false;
                },
                builder: (context, state) {
                  if (state is TopAnimeLoading && state.filter == 'upcoming') {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is TopAnimeLoaded && state.filter == 'upcoming') {
                    final animeList = state.topAnimeResponse.data;
                    return SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 15, bottom: 10),
                        itemCount: animeList.length,
                        itemBuilder: (context, index) {
                          return DiscoverAnimeItem(
                            anime: animeList[index],
                            onPickAnime: (anime) {
                              pickAnime(context, anime);
                            },
                          );
                        },
                      ),
                    );
                  }
                  if (state is TopAnimeError && state.filter == 'upcoming') {
                    return Center(child: Text('Error: ${state.message}'));
                  }
                  if (context.watch<TopAnimeBloc>().state is TopAnimeLoaded &&
                      (context.watch<TopAnimeBloc>().state as TopAnimeLoaded)
                              .filter ==
                          'upcoming') {
                    final animeList =
                        (context.watch<TopAnimeBloc>().state as TopAnimeLoaded)
                            .topAnimeResponse
                            .data;
                    return SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 15, bottom: 10),
                        itemCount: animeList.length,
                        itemBuilder: (context, index) {
                          return DiscoverAnimeItem(
                            anime: animeList[index],
                            onPickAnime: (anime) {
                              pickAnime(context, anime);
                            },
                          );
                        },
                      ),
                    );
                  }
                  return const SizedBox(
                      height: 300,
                      child: Center(
                          child:
                              CircularProgressIndicator())); // Default or initial state
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
