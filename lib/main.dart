import 'package:flutter/material.dart';
import 'package:flutter_sandbox/routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sandbox',
      routes: routes,
    );
  }
}
