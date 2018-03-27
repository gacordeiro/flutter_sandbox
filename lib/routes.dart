import 'package:flutter/material.dart';
import 'package:flutter_sandbox/splash.dart';
import 'login.dart';
import 'randomwords.dart';

final routes = {
  '/saved_words': (BuildContext context) => new SavedWords(),
  '/home': (BuildContext context) => new RandomWords(key: randomWordsKey),
  '/login': (BuildContext context) => new LoginScreen(),
  '/': (BuildContext context) => new SplashScreen(),
};