import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:per_rat/data/client/jikan_service.dart';
import 'package:per_rat/data/repositories/anime_repository.dart';
import 'package:per_rat/presentation/bloc/top_anime_bloc/top_anime_bloc.dart';
import 'package:per_rat/utils/utils.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => JikanService(),
        ),
        RepositoryProvider(
          create: (context) => AnimeRepository(
            RepositoryProvider.of<JikanService>(context),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => TopAnimeBloc(
              animeRepository: RepositoryProvider.of<AnimeRepository>(context),
            ),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: theme,
          routerConfig: router,
        ),
      ),
    );
  }
}
