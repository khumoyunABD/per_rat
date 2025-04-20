import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:per_rat/data/models/models.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';
import 'package:per_rat/presentation/drawer_screens/new_drawer.dart';
import 'package:per_rat/presentation/drawer_screens/notifications_screen.dart';
import 'package:per_rat/presentation/screens/discover.dart';
import 'package:per_rat/presentation/screens/home.dart';
import 'package:per_rat/presentation/screens/my_list.dart';
import 'package:per_rat/presentation/screens/seasonal.dart';
import 'package:per_rat/presentation/user_profile_screens/profile.dart';

class MainTabsScreen extends StatefulWidget {
  const MainTabsScreen({
    super.key,
  });

  @override
  State<MainTabsScreen> createState() {
    return _MainTabsScreenState();
  }
}

class _MainTabsScreenState extends State<MainTabsScreen> {
  int _selectedPageIndex = 0;
  List<Anime> _registeredAnime = [];
  //final user = FirebaseAuth.instance.currentUser!;
  final animeRepo = AnimeRepository();

  @override
  void initState() {
    super.initState();
    _fetchAnime();
  }

  void _fetchAnime() async {
    try {
      AnimeResponse response = await animeRepo.fetchAnimeList();

      setState(() {
        _registeredAnime = response.data;
        // You can also store pagination info if needed
        // _currentPage = response.pagination.currentPage;
        // _hasNextPage = response.pagination.hasNextPage;
      });
    } catch (e) {
      setState(() {
        log(e.toString());
      });
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => const ProfileScreen()));
  }

  @override
  Widget build(BuildContext context) {
    // Safely filter ongoing anime
    final ongoingAnime = _registeredAnime.where((anime) {
      // Check if aired and its properties are not null
      final now = DateTime.now();
      final fromDate = anime.aired.from;
      final toDate = anime.aired.to;

      // If the start date is null, it can't be ongoing
      if (fromDate == null) return false;

      // Check if anime is currently airing (started but not ended, or has no end date)
      return fromDate.isBefore(now) ||
          fromDate.isAtSameMomentAs(now) &&
              (toDate == null || toDate.year == 0);
    }).toList();

    // Safely filter trending anime
    final trendingAnime1 = _registeredAnime.where((anime) {
      return anime.popularity! < 1000;
    }).toList();

    // Safely filter upcoming anime
    final upcomingAnime = _registeredAnime.where((anime) {
      // Check if aired and its properties are not null
      final now = DateTime.now();
      final fromDate = anime.aired.from;
      final toDate = anime.aired.to;

      // If the start date is null, it can't be ongoing
      if (fromDate == null) return false;

      // Check if anime is upcoming (hasn't started yet)
      return fromDate.isAfter(now) && (toDate == null || toDate.year == 0);
    }).toList();

    final user = FirebaseAuth.instance.currentUser!;

    Widget currentPage = const HomeScreen();

    if (_selectedPageIndex == 1) {
      currentPage = DiscoverScreen(
        ongoingAnime: ongoingAnime,
        trendingAnime: trendingAnime1,
        upcomingAnime: upcomingAnime,
      );
    }
    if (_selectedPageIndex == 2) {
      currentPage = const SeasonalScreen();
    }
    if (_selectedPageIndex == 3) {
      currentPage = const MyListScreen();
    }

    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        //backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'PERRAT',
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => NotificationsScreen()));
              },
              icon: const Icon(
                Icons.notifications_outlined,
                size: 30,
              )),
        ],
      ),
      drawer: NewDrawer(onSelectScreen: _setScreen, user1: user),
      //MainDrawer(onSelectScreen: _setScreen, user1: user),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.amber,
        backgroundColor: Colors.deepPurple.shade200,

        //Theme.of(context).colorScheme.surface,
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            tooltip: 'Home page',
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            tooltip: 'Search anime',
            icon: Icon(Icons.search_rounded),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            tooltip: 'Seasonal anime',
            icon: Icon(Icons.calendar_today_rounded),
            label: 'Seasonal',
          ),
          BottomNavigationBarItem(
            tooltip: 'Your anime list',
            icon: Icon(Icons.list_rounded),
            label: 'MyList',
          ),
        ],
      ),
    );
  }
}
