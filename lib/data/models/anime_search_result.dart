// Simple model for search results only
import 'package:jikan_api/jikan_api.dart' as jikan;

class AnimeSearchResult {
  final int malId;
  final String title;
  final String imageUrl;
  final int? episodes;
  final String? status;

  AnimeSearchResult({
    required this.malId,
    required this.title,
    required this.imageUrl,
    this.episodes,
    this.status,
  });

  factory AnimeSearchResult.fromJikanAnime(jikan.Anime anime) {
    return AnimeSearchResult(
      malId: anime.malId,
      title: anime.title,
      imageUrl: anime.imageUrl,
      episodes: anime.episodes,
      status: anime.status,
    );
  }
}
