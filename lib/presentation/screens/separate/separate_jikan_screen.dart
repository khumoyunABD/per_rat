import 'package:flutter/material.dart';
import 'package:jikan_api/jikan_api.dart';

class SeparateJikanScreen extends StatefulWidget {
  const SeparateJikanScreen({super.key});

  @override
  State<SeparateJikanScreen> createState() => _SeparateJikanScreenState();
}

class _SeparateJikanScreenState extends State<SeparateJikanScreen> {
  final jikan = Jikan();
  late Future<BuiltList<Anime>> topAnime;

  @override
  void initState() {
    topAnime = jikan.getTopAnime(
      type: AnimeType.tv,
      filter: TopFilter.upcoming,
      page: 1,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Anime'),
        centerTitle: true,
      ),
      body: FutureBuilder<BuiltList<Anime>>(
        future: topAnime,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No anime found'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final anime = snapshot.data![index];

                return ListTile(
                  title: Text(anime.title),
                  leading: Image.network(
                    anime.imageUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  subtitle:
                      Text(anime.synopsis != null && anime.synopsis!.isNotEmpty
                          ? anime.synopsis!.length > 100
                              ? '${anime.synopsis!.substring(0, 100)}...'
                              : anime.synopsis!
                          : 'No synopsis available'),
                  trailing: Text('Episodes: ${anime.episodes ?? "N/A"}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
