import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:per_rat/app.dart';
import 'package:per_rat/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}
