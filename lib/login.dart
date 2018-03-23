import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  @override
  State createState() => new LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  BuildContext _ctx;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser signedUser;

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login into SANDBOX'),
      ),
      body: _setupViews(),
    );
  }

  Widget _setupViews() {
    return new Center(
      child: new RaisedButton(
          child: new Text("LOGIN"),
          onPressed: _loginPressed
      ),
    );
  }

  void _loginPressed() {
    _handleSignIn()
        .then((FirebaseUser user) => print(user))
        .catchError((e) => print(e));
  }

  Future<FirebaseUser> _handleSignIn() async {
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    FirebaseUser user = await _auth.signInWithGoogle(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    print("signed in " + user.displayName);
    signedUser = user;
    Navigator.of(_ctx).pushNamed("/random_words");
    return user;
  }

  GoogleSignIn _googleSignIn = new GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
}