import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/presentation/screens/anime_details.dart';

class RealtimeSearchScreen extends StatefulWidget {
  const RealtimeSearchScreen({
    super.key,
  });

  @override
  State<RealtimeSearchScreen> createState() => _RealtimeSearchScreenState();
}

class _RealtimeSearchScreenState extends State<RealtimeSearchScreen> {
  var searchName = "";

  void pickAnime(BuildContext context, Anime anime) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => AnimeDetailsScreen(
          anime: anime,
        ),
      ),
    );
  }

  String capitalizeFirstLetter(String? value) {
    if (value == null || value.isEmpty) {
      return '';
    }

    value = value.trim(); // Remove any unnecessary spaces
    return value[0].toUpperCase() + value.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        title: Text('PERRAT'),
        centerTitle: true,
      ),
      body: Column(
        children: [
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
                },
                style: TextStyle(
                  color: Colors.white24,
                ), // Set text color
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
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
          Expanded(
            child: searchName.isEmpty
                ? Container(
                    alignment: Alignment.center,
                    child: Text(
                      'No results found',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ) // Display nothing if searchName is empty
                : StreamBuilder<QuerySnapshot>(
                    //new algorithm
                    stream: FirebaseFirestore.instance
                        .collection('anime')
                        .orderBy('title')
                        //.startAt([searchName]).endAt([searchName + "\uf8ff"])
                        .where('title', isGreaterThanOrEqualTo: searchName)
                        .where('title',
                            isLessThanOrEqualTo: searchName + '\uf8ff')
                        .snapshots(),

                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(child: Text('Something went wrong'));
                      }

                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      }

                      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                        return Center(
                            child: Text(
                          'No results found!',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ));
                      }
                      return const SizedBox();

                      // return ListView.builder(
                      //   itemCount: 5,
                      //   itemBuilder: (context, index) {
                      //     final anime = results[index];
                      //     return ListTile(
                      //       contentPadding: const EdgeInsets.all(5),
                      //       minVerticalPadding: 10,
                      //       tileColor: Theme.of(context)
                      //           .colorScheme
                      //           .secondaryContainer,
                      //       leading: CircleAvatar(
                      //         radius: 24,
                      //         backgroundImage: NetworkImage(
                      //           anime!.imageUrl,
                      //         ),
                      //       ),
                      //       //leading: Image.network(anime!.imageUrl, fit: BoxFit.cover),
                      //       title: Text(anime.title),
                      //       isThreeLine: true,
                      //       trailing: IconButton.outlined(
                      //           style: OutlinedButton.styleFrom(
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(5),
                      //             ),
                      //           ),
                      //           onPressed: () {
                      //             //onEditRating(showRating);
                      //             Navigator.of(context).push(
                      //               MaterialPageRoute(
                      //                   builder: (ctx) => EditScoreScreen(
                      //                         anime: anime,
                      //                       )),
                      //             );
                      //           },
                      //           icon: const Icon(Icons.edit_note_sharp)),
                      //       subtitle: Row(
                      //         children: [
                      //           Text('${anime.totalEpisodes.toString()} ep.'),
                      //           Text(
                      //             ' ${anime.status}',
                      //             style: TextStyle(
                      //                 color: Theme.of(context)
                      //                     .colorScheme
                      //                     .tertiary),
                      //           )
                      //         ],
                      //       ),
                      //       onTap: () {
                      //         pickAnime(context, anime);
                      //       },
                      //     );
                      //   },
                      // );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
