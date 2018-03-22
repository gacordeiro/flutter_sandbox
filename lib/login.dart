import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State createState() => new LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  BuildContext _ctx;

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
          onPressed: _pushLogin
      ),
    );
  }

  void _pushLogin() {
    Navigator.of(_ctx).pushNamed("/random_words");
  }
}