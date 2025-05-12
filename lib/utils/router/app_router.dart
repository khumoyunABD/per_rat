import 'package:go_router/go_router.dart';
import 'package:per_rat/presentation/screens/auth_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const AuthPage(),
    ),
  ],
);
