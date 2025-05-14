import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/presentation/components/constants.dart';

class EditScoreScreen extends StatefulWidget {
  const EditScoreScreen({
    super.key,
    this.anime,
    this.rating,
  });

  final Anime? anime;
  final ShowRating? rating;

  @override
  State<EditScoreScreen> createState() => _EditScoreScreenState();
}

class _EditScoreScreenState extends State<EditScoreScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  late ScrollController _scrollController;
  late ScrollController _scoreScrollController; // Added for score list

  Color? cCompleted;
  Color? cWatching;
  Color? cPTW;
  Color? cOnHold;
  Color? cDropped;

  //user score variables
  String? _selectedStatus = 'Watching';
  String _selectedProgress = '0';
  String? _selectedScore = '';

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scoreScrollController = ScrollController(); // Initialize score controller

    log(widget.rating.toString());

    if (widget.rating != null) {
      _selectedStatus = widget.rating!.status;
      _selectedScore = widget.rating!.score?.toString() ?? '';
      _selectedProgress = widget.rating!.completedEpisodes?.toString() ?? '0';

      // Set button colors based on status
      if (widget.rating!.status == 'Completed') {
        cCompleted = Colors.blue;
      } else if (widget.rating!.status == 'Watching') {
        cWatching = Colors.green;
      } else if (widget.rating!.status == 'Plan to Watch') {
        cPTW = Colors.grey;
      } else if (widget.rating!.status == 'On Hold') {
        cOnHold = Colors.yellow;
      } else if (widget.rating!.status == 'Dropped') {
        cDropped = Colors.red;
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          // Ensure the widget is still in the tree
          // Scroll Progress List
          final progressValue = int.tryParse(_selectedProgress);
          if (progressValue != null && _scrollController.hasClients) {
            // Assuming item width = 50, margin = 8 on each side. Total item extent = 66.
            final progressOffset = progressValue * 66.0;
            _scrollController.animateTo(
              progressOffset,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          }

          // Scroll Score List
          final scoreValue = int.tryParse(_selectedScore ?? '');
          if (scoreValue != null &&
              scoreValue > 0 &&
              _scoreScrollController.hasClients) {
            // Assuming item width = 50, margin = 8 on each side. Total item extent = 66.
            // Score list is 1-indexed, so (scoreValue - 1) for 0-indexed position.
            final scoreOffset = (scoreValue - 1) * 66.0;
            _scoreScrollController.animateTo(
              scoreOffset,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          }
        }
      });
    } else {
      cWatching = Colors.green; // Default visual for 'Watching'
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scoreScrollController.dispose(); // Dispose score controller
    super.dispose();
  }

  void _submit() async {
    if (widget.anime == null) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error: Anime data is missing. Cannot save rating.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    try {
      DocumentReference userDocRef =
          FirebaseFirestore.instance.collection('users').doc(user.uid);
      CollectionReference ratingCollectionRef =
          userDocRef.collection('ratings');

      // Ensure widget.anime is not null before accessing its properties
      String docId = (widget.anime!.malId ?? -widget.anime!.title.hashCode)
          .toString();

      // Create a ShowRating object
      final newRating = ShowRating(
        // With this approach that creates a unique negative ID based on the title:
        malId: widget.anime!.malId ?? -widget.anime!.title.hashCode,
        title: widget.anime!.title,
        status: _selectedStatus ?? 'Watching',
        imageUrl: widget.anime!.mainImageUrl,
        score: _selectedScore != null && _selectedScore!.isNotEmpty
            ? int.tryParse(_selectedScore!)
            : null,
        completedEpisodes:
            _selectedProgress.isNotEmpty ? int.tryParse(_selectedProgress) : 0,
        totalEpisodes: widget.anime!.episodes,
        genres: widget.anime!.genres.map((g) => g.name).toList(),
        timestamp: Timestamp.now(),
      );

      // Convert ShowRating to a Map
      Map<String, dynamic> ratingData = {
        'malId': newRating.malId,
        'title': newRating.title,
        'status': newRating.status,
        'imageUrl': newRating.imageUrl,
        'score': newRating.score,
        'completedEpisodes': newRating.completedEpisodes,
        'totalEpisodes': newRating.totalEpisodes,
        'genres': newRating.genres,
        'timestamp': newRating.timestamp,
      };

      // Add or update the document in Firestore
      await ratingCollectionRef
          .doc(docId)
          .set(ratingData, SetOptions(merge: true));

      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${widget.anime!.title} rating has been updated!'),
        ),
      );

      Navigator.of(context).pop();
    } on FirebaseAuthException catch (error) {
      if (error.code.isNotEmpty) {
        //
      }
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error.message!),
        ),
      );
    }
  }

  void selectStatus(int statusNumber) {
    setState(() {
      cCompleted = null;
      cWatching = null;
      cPTW = null;
      cOnHold = null;
      cDropped = null;
      if (statusNumber == 1) {
        cCompleted = Colors.blue;
        _selectedStatus = 'Completed';
        if (widget.anime != null) {
          _selectedProgress = widget.anime!.episodes.toString();
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          );
        } else {
          _selectedProgress = "0"; // Default if anime is null
        }
      } else if (statusNumber == 2) {
        cWatching = Colors.green;
        _selectedStatus = 'Watching';
      } else if (statusNumber == 3) {
        cPTW = Colors.grey;
        _selectedStatus = 'Plan to Watch';
        _selectedProgress = '0';
        _scrollController.animateTo(
          0.0,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut, // Added missing curve
        ); // Added missing semicolon and corrected brace placement
      } else if (statusNumber == 4) {
        cOnHold = Colors.yellow;
        _selectedStatus = 'On Hold';
      } else if (statusNumber == 5) {
        cDropped = Colors.red;
        _selectedStatus = 'Dropped';
      }
    });
  }

  void selectProgress(int progress) {
    setState(() {
      _selectedProgress = progress.toString();
    });
  }

  void selectScore(int score) {
    setState(() {
      _selectedScore = score.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.anime == null) {
      // Handle the case where anime data is not available
      return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Score'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Anime data is not available.',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      );
    }

    final double buttonWidth = MediaQuery.sizeOf(context).width * 0.29;
    final double buttonHeight = MediaQuery.sizeOf(context).height * 0.05;

    Widget content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
            top: 20,
            bottom: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.anime!.title, // Now safe due to the check above
                style: const TextStyle(
                  color: Colors.amber,
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 15,
                ),
                child: Row(
                  children: [
                    const Text(
                      'Status:  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text(
                      widget.anime!.status ?? 'unknown', // Now safe
                      style: TextStyle(
                        color: (widget.anime!.status != null &&
                                widget.anime!.status!.contains('Upcoming')
                            ? Colors.blue
                            : widget.anime!.status != null &&
                                    widget.anime!.status!.contains('Ongoing')
                                ? Colors.green
                                : Colors.purple),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Wrap(
                spacing: 8.0, // Horizontal spacing between buttons
                runSpacing: 8.0, // Vertical spacing between buttons
                children: [
                  SizedBox(
                    width: buttonWidth,
                    height: buttonHeight,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: cCompleted,
                        textStyle: const TextStyle(fontSize: buttonFontSize),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        selectStatus(1);
                      },
                      child: FittedBox(
                        child: const Text(
                          'Completed',
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: buttonWidth,
                    height: buttonHeight,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: cWatching,
                        textStyle: const TextStyle(fontSize: buttonFontSize),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        selectStatus(2);
                      },
                      child: const Text('Watching'),
                    ),
                  ),
                  SizedBox(
                    width: buttonWidth,
                    height: buttonHeight,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: cPTW,
                        textStyle: const TextStyle(fontSize: buttonFontSize),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        selectStatus(3);
                      },
                      child: FittedBox(
                        child: const Text(
                          'Plan to \n Watch',
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: buttonWidth,
                    height: buttonHeight,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: cOnHold,
                        textStyle: const TextStyle(fontSize: buttonFontSize),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        selectStatus(4);
                      },
                      child: const Text('On Hold'),
                    ),
                  ),
                  SizedBox(
                    width: buttonWidth,
                    height: buttonHeight,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: cDropped,
                        textStyle: const TextStyle(fontSize: buttonFontSize),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        selectStatus(5);
                      },
                      child: const Text('Dropped'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              const Text(
                'Progress',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: SizedBox(
                  height: 80,
                  child: ListView.builder(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.anime!.episodes != null && // Now safe
                              widget.anime!.episodes! > 0
                          ? widget.anime!.episodes! + 1
                          : 1,
                      //: widget.anime.episodes! + 2,
                      itemBuilder: (context, index) {
                        int number = index;

                        return GestureDetector(
                          onTap: () {
                            selectProgress(number);
                            // setState(() {
                            //   prColor = Colors.orange;
                            // });
                          },
                          child: Container(
                            //color: prColor,
                            width:
                                50, // Adjust the width of each item as needed
                            height:
                                50, // Adjust the height of each item as needed
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10),
                              color: _selectedProgress == number.toString()
                                  ? Colors.blue
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              const Text(
                'Score',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: SizedBox(
                  height: 80,
                  child: ListView.builder(
                      controller:
                          _scoreScrollController, // Assign score controller
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // Adjust the number of items as needed
                      itemBuilder: (context, index) {
                        int number =
                            index + 1; // Assuming you want to start from 1
                        return GestureDetector(
                          onTap: () {
                            selectScore(number);
                          },
                          child: Container(
                            width:
                                50, // Adjust the width of each item as needed
                            height:
                                50, // Adjust the height of each item as needed
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10),
                              color: _selectedScore == number.toString()
                                  ? Colors.blue
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                '$number',
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.anime?.title ?? 'Edit Score'), // Conditional title
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _submit, // _submit already handles null anime
            icon: const Icon(
              Icons.save_outlined,
              size: 30,
              color: Colors.green,
            ),
          )
        ],
      ),
      body: SafeArea(child: content),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.green,
                    //padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: buttonFontSize),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                onPressed: _submit,
                child: const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red,
                    //padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: buttonFontSize),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                onPressed: () {
                  Navigator.pop(context);
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: const Duration(seconds: 2),
                        content: Text(
                            "${widget.anime?.title ?? 'The item'} has been deleted"),
                      ),
                    );
                  },
                child: const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    'Delete',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
