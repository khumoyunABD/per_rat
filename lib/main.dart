import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:per_rat/app.dart';
import 'package:per_rat/data/client/jikan_service.dart';
import 'package:per_rat/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.wait([
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    JikanService.initCache(),
  ]);
  runApp(const App());
}
