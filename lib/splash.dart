import 'package:flutter/material.dart';
import 'package:flutter_sandbox/storage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  BuildContext _ctx;

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return new Center(
      child: new FlutterLogo(),
    );
  }

  @override
  void initState() {
    super.initState();

    retrieveSignInInfo()
        .then((value) => Navigator.of(_ctx).pushReplacementNamed("/home"))
        .catchError((e) => Navigator.of(_ctx).pushReplacementNamed("/login"));
  }


}