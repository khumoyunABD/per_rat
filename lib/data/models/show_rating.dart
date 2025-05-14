import 'package:cloud_firestore/cloud_firestore.dart';

class ShowRating {
  final int malId;
  final String title;
  String? imageUrl;
  final String status;
  int? score;
  int? completedEpisodes;
  int? totalEpisodes;
  List<String>? genres;
  final Timestamp timestamp;

  ShowRating({
    required this.malId,
    required this.title,
    required this.status,
    this.imageUrl,
    this.score,
    this.completedEpisodes,
    this.totalEpisodes,
    this.genres,
    required this.timestamp,
  });

  factory ShowRating.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return ShowRating(
      malId: data['malId'] as int, // Assuming malId is stored as an int field
      title: data['title'] as String,
      status: data['status'] as String? ?? '',
      imageUrl: data['imageUrl'] as String? ?? '',
      completedEpisodes:
          data['completedEpisodes'] as int?, // Changed from 'progress'
      score: data['score'] as int?,
      totalEpisodes: data['totalEpisodes'] as int?,
      genres:
          (data['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      timestamp: data['timestamp'] as Timestamp? ?? Timestamp.now(),
    );
  }
}
