import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sandbox/storage.dart';

Future checkSignIn() async {
  return retrieveSignInInfo()
      .then((value) => true)
      .catchError((e) => false);
}

class SplashScreen extends StatelessWidget {
  BuildContext _ctx;
  var isSignedIn = checkSignIn();

  @override Widget build(BuildContext context) {
    _ctx = context;
    return new Center(
      child: new FlutterLogo(),
    );
  }
}