import 'package:flutter/material.dart';
import 'package:flutter_sandbox/database.dart';
import 'package:flutter_sandbox/splash.dart';
import 'login.dart';
import 'randomwords.dart';

final routes = {
  '/saved_words': (BuildContext context) => new SavedWords(),
  '/home': (BuildContext context) => new RandomWords(key: randomWordsKey),
  '/database': (BuildContext context) => new DatabaseScreen(),
  '/login': (BuildContext context) => new LoginScreen(),
  '/': (BuildContext context) => new SplashScreen(),
};