// First, add this to your pubspec.yaml:
// dependencies:
//   cached_network_image: ^3.3.0

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:per_rat/data/models/models.dart';

class HomeAnimeGridItem extends StatelessWidget {
  const HomeAnimeGridItem({
    super.key,
    required this.showRating,
    // required this.anime, // Anime object is no longer needed
    required this.isSelected,
    required this.onDeleteRating,
  });

  final ShowRating showRating;
  // final Anime anime; // Anime object is no longer needed
  final bool isSelected;
  final void Function(ShowRating showRating) onDeleteRating;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      child: Stack(
        children: [
          // Use CachedNetworkImage instead of FadeInImage
          CachedNetworkImage(
            imageUrl: showRating.imageUrl ?? '', // Use imageUrl from showRating
            fit: BoxFit.cover,
            height: 400,
            width: 200,
            placeholder: (context, url) => Container(
              color: Colors.grey[800],
              child: const Center(
                child: CircularProgressIndicator(
                  color: Colors.white54,
                ),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              color: Colors.grey[800],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.image_not_supported_rounded,
                    color: Colors.white70,
                    size: 50,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      showRating.title, // Use title from showRating
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Rest of your widget remains the same
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black54,
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    showRating.title, // Use title from showRating
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.white, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            showRating.score?.toString() ?? 'N/A',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.numbers_outlined,
                              color: Colors.white, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            '${showRating.completedEpisodes ?? 0} / ${showRating.totalEpisodes ?? '?'}', // Use totalEpisodes from showRating
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    showRating.genres?.join(', ') ??
                        'N/A', // Use genres from showRating
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),

          if (isSelected)
            Positioned.fill(
              child: Container(
                color: Colors.black38,
                child: Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: 60,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
