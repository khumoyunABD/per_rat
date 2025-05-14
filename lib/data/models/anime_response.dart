import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();
final formatterMY = DateFormat.yM();

class AnimeResponse {
  final Pagination pagination;
  final List<Anime> data;

  AnimeResponse({
    required this.pagination,
    required this.data,
  });

  factory AnimeResponse.fromJson(Map<String, dynamic> json) {
    return AnimeResponse(
      pagination: Pagination.fromJson(json['pagination']),
      data: (json['data'] as List).map((item) => Anime.fromJson(item)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'pagination': pagination.toJson(),
      'data': data.map((anime) => anime.toJson()).toList(),
    };
  }
}

class Anime {
  final int? malId;
  final String url;
  final Map<String, ImageFormat> images;
  final Trailer trailer;
  final bool approved;
  final List<Title>? titles;
  final String title;
  final String? titleEnglish;
  final String? titleJapanese;
  final List<String>? titleSynonyms;
  final String? animeType;
  final String? source;
  final int? episodes;
  final String? status;
  final bool airing;
  final Aired aired;
  final String? duration;
  final String? rating;
  final double? score;
  final int? scoredBy;
  final int? rank;
  final int? popularity;
  final int? members;
  final int? favorites;
  final String? synopsis;
  final String? background;
  final String? season;
  final int? year;
  final Broadcast broadcast;
  final List<Demographic> producers;
  final List<Demographic> licensors;
  final List<Demographic> studios;
  final List<Demographic> genres;
  final List<dynamic>? explicitGenres;
  final List<Demographic> themes;
  final List<Demographic> demographics;

  Anime({
    required this.malId,
    required this.url,
    required this.images,
    required this.trailer,
    required this.approved,
    required this.titles,
    required this.title,
    required this.titleEnglish,
    required this.titleJapanese,
    required this.titleSynonyms,
    required this.animeType,
    required this.source,
    required this.episodes,
    required this.status,
    required this.airing,
    required this.aired,
    required this.duration,
    required this.rating,
    required this.score,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    required this.synopsis,
    required this.background,
    required this.season,
    this.year,
    required this.broadcast,
    required this.producers,
    required this.licensors,
    required this.studios,
    required this.genres,
    required this.explicitGenres,
    required this.themes,
    required this.demographics,
  });

  factory Anime.fromJson(Map<String, dynamic> json) {
    Map<String, ImageFormat> imagesMap = {};
    (json['images'] as Map<String, dynamic>).forEach((key, value) {
      imagesMap[key] = ImageFormat.fromJson(value);
    });

    return Anime(
      malId: json['mal_id'],
      url: json['url'],
      images: imagesMap,
      trailer: Trailer.fromJson(json['trailer']),
      approved: json['approved'],
      titles: json['titles'] != null
          ? (json['titles'] as List)
              .map((item) => Title.fromJson(item))
              .toList()
          : null,
      title: json['title'],
      titleEnglish: json['title_english'],
      titleJapanese: json['title_japanese'],
      titleSynonyms: json['title_synonyms'] != null
          ? List<String>.from(json['title_synonyms'])
          : null,
      animeType: json['type'],
      source: json['source'],
      episodes: json['episodes'],
      status: json['status'],
      airing: json['airing'],
      aired: Aired.fromJson(json['aired']),
      duration: json['duration'],
      rating: json['rating'],
      score: json['score'],
      scoredBy: json['scored_by'],
      rank: json['rank'],
      popularity: json['popularity'],
      members: json['members'],
      favorites: json['favorites'],
      synopsis: json['synopsis'],
      background: json['background'],
      season: json['season'],
      year: json['year'],
      broadcast: Broadcast.fromJson(json['broadcast']),
      producers: (json['producers'] as List)
          .map((item) => Demographic.fromJson(item))
          .toList(),
      licensors: (json['licensors'] as List)
          .map((item) => Demographic.fromJson(item))
          .toList(),
      studios: (json['studios'] as List)
          .map((item) => Demographic.fromJson(item))
          .toList(),
      genres: (json['genres'] as List)
          .map((item) => Demographic.fromJson(item))
          .toList(),
      explicitGenres: json['explicit_genres'] as List?,
      themes: (json['themes'] as List)
          .map((item) => Demographic.fromJson(item))
          .toList(),
      demographics: (json['demographics'] as List)
          .map((item) => Demographic.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> imagesJson = {};
    images.forEach((key, value) {
      imagesJson[key] = value.toJson();
    });

    return {
      'mal_id': malId,
      'url': url,
      'images': imagesJson,
      'trailer': trailer.toJson(),
      'approved': approved,
      'titles': titles?.map((title) => title.toJson()).toList(),
      'title': title,
      'title_english': titleEnglish,
      'title_japanese': titleJapanese,
      'title_synonyms': titleSynonyms,
      'type': animeType,
      'source': source,
      'episodes': episodes,
      'status': status,
      'airing': airing,
      'aired': aired.toJson(),
      'duration': duration,
      'rating': rating,
      'score': score,
      'scored_by': scoredBy,
      'rank': rank,
      'popularity': popularity,
      'members': members,
      'favorites': favorites,
      'synopsis': synopsis,
      'background': background,
      'season': season,
      'year': year,
      'broadcast': broadcast.toJson(),
      'producers': producers.map((producer) => producer.toJson()).toList(),
      'licensors': licensors.map((licensor) => licensor.toJson()).toList(),
      'studios': studios.map((studio) => studio.toJson()).toList(),
      'genres': genres.map((genre) => genre.toJson()).toList(),
      'explicit_genres': explicitGenres,
      'themes': themes.map((theme) => theme.toJson()).toList(),
      'demographics': demographics.map((demo) => demo.toJson()).toList(),
    };
  }

  // Helper getters
  List<String> get genreNames => genres.map((g) => g.name).toList();

  String get mainImageUrl => images['jpg']?.imageUrl ?? '';
}

class Aired {
  final DateTime? from;
  final DateTime? to;
  final Prop prop;
  final String? string;

  Aired({
    required this.from,
    required this.to,
    required this.prop,
    required this.string,
  });

  factory Aired.fromJson(Map<String, dynamic> json) {
    return Aired(
      from: json['from'] != null ? DateTime.parse(json['from']) : null,
      to: json['to'] != null ? DateTime.parse(json['to']) : null,
      prop: Prop.fromJson(json['prop']),
      string: json['string'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'from': from?.toIso8601String(),
      'to': to?.toIso8601String(),
      'prop': prop.toJson(),
      'string': string,
    };
  }
}

class Prop {
  final PropFrom? from;
  final PropFrom? to;

  Prop({
    required this.from,
    required this.to,
  });

  factory Prop.fromJson(Map<String, dynamic> json) {
    return Prop(
      from: json['from'] != null ? PropFrom.fromJson(json['from']) : null,
      to: json['to'] != null ? PropFrom.fromJson(json['to']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'from': from?.toJson(),
      'to': to?.toJson(),
    };
  }
}

class PropFrom {
  final int? day;
  final int? month;
  final int? year;

  PropFrom({
    required this.day,
    required this.month,
    required this.year,
  });

  factory PropFrom.fromJson(Map<String, dynamic> json) {
    return PropFrom(
      day: json['day'],
      month: json['month'],
      year: json['year'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'day': day,
      'month': month,
      'year': year,
    };
  }
}

class Broadcast {
  final String? day;
  final String? time;
  final String? timezone;
  final String? string;

  Broadcast({
    required this.day,
    required this.time,
    required this.timezone,
    required this.string,
  });

  factory Broadcast.fromJson(Map<String, dynamic> json) {
    return Broadcast(
      day: json['day'],
      time: json['time'],
      timezone: json['timezone'],
      string: json['string'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'day': day,
      'time': time,
      'timezone': timezone,
      'string': string,
    };
  }
}

class Demographic {
  final int? malId;
  final String? type;
  final String name;
  final String url;

  Demographic({
    required this.malId,
    required this.type,
    required this.name,
    required this.url,
  });

  factory Demographic.fromJson(Map<String, dynamic> json) {
    return Demographic(
      malId: json['mal_id'],
      type: json['type'],
      name: json['name'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mal_id': malId,
      'type': type,
      'name': name,
      'url': url,
    };
  }
}

class ImageFormat {
  final String? imageUrl;
  final String? smallImageUrl;
  final String? largeImageUrl;

  ImageFormat({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  factory ImageFormat.fromJson(Map<String, dynamic> json) {
    return ImageFormat(
      imageUrl: json['image_url'],
      smallImageUrl: json['small_image_url'],
      largeImageUrl: json['large_image_url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image_url': imageUrl,
      'small_image_url': smallImageUrl,
      'large_image_url': largeImageUrl,
    };
  }
}

class Title {
  final String? titleType;
  final String? titleName;

  Title({
    this.titleType,
    this.titleName,
  });

  factory Title.fromJson(Map<String, dynamic> json) {
    return Title(
      titleType: json['type'],
      titleName: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': titleType,
      'title': titleName,
    };
  }
}

class Trailer {
  final String? youtubeId;
  final String? url;
  final String? embedUrl;
  final Images? images;

  Trailer({
    required this.youtubeId,
    required this.url,
    required this.embedUrl,
    required this.images,
  });

  factory Trailer.fromJson(Map<String, dynamic> json) {
    return Trailer(
      youtubeId: json['youtube_id'],
      url: json['url'],
      embedUrl: json['embed_url'],
      images: json['images'] != null ? Images.fromJson(json['images']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'youtube_id': youtubeId,
      'url': url,
      'embed_url': embedUrl,
      'images': images?.toJson(),
    };
  }
}

class Images {
  final String? imageUrl;
  final String? smallImageUrl;
  final String? mediumImageUrl;
  final String? largeImageUrl;
  final String? maximumImageUrl;

  Images({
    required this.imageUrl,
    required this.smallImageUrl,
    required this.mediumImageUrl,
    required this.largeImageUrl,
    required this.maximumImageUrl,
  });

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      imageUrl: json['image_url'],
      smallImageUrl: json['small_image_url'],
      mediumImageUrl: json['medium_image_url'],
      largeImageUrl: json['large_image_url'],
      maximumImageUrl: json['maximum_image_url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image_url': imageUrl,
      'small_image_url': smallImageUrl,
      'medium_image_url': mediumImageUrl,
      'large_image_url': largeImageUrl,
      'maximum_image_url': maximumImageUrl,
    };
  }
}

class Pagination {
  final int? lastVisiblePage;
  final bool? hasNextPage;
  final int? currentPage;
  final PaginationItems items;

  Pagination({
    this.lastVisiblePage,
    this.hasNextPage,
    this.currentPage,
    required this.items,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return Pagination(
      lastVisiblePage: json['last_visible_page'],
      hasNextPage: json['has_next_page'],
      currentPage: json['current_page'],
      items: PaginationItems.fromJson(json['items']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'last_visible_page': lastVisiblePage,
      'has_next_page': hasNextPage,
      'current_page': currentPage,
      'items': items.toJson(),
    };
  }
}

class PaginationItems {
  final int? count;
  final int? total;
  final int? perPage;

  PaginationItems({
    required this.count,
    required this.total,
    required this.perPage,
  });

  factory PaginationItems.fromJson(Map<String, dynamic> json) {
    return PaginationItems(
      count: json['count'],
      total: json['total'],
      perPage: json['per_page'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'total': total,
      'per_page': perPage,
    };
  }
}
