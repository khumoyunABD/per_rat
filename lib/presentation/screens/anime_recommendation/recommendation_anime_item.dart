import 'package:flutter/material.dart';
import 'package:per_rat/data/models/models.dart';

class RecommendedAnimeItem extends StatelessWidget {
  const RecommendedAnimeItem({
    super.key,
    required this.animeEntry,
    required this.onTap,
  });

  final AnimeEntry animeEntry;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        margin: const EdgeInsets.only(right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(8.0), // Optional: for rounded corners
              child: Image.network(
                animeEntry.images.jpg!.imageUrl ?? '',
                height: 200,
                width: 150,
                fit: BoxFit.cover,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius:
                          BorderRadius.circular(8.0), // Match ClipRRect
                    ),
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.white70),
                      ),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius:
                          BorderRadius.circular(8.0), // Match ClipRRect
                    ),
                    child: const Center(
                        child: Icon(Icons.broken_image,
                            color: Colors.white70, size: 50)),
                  );
                },
              ),
            ),
            const SizedBox(height: 6),
            Text(
              animeEntry.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
