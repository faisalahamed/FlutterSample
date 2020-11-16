import 'package:flutter/material.dart';
import 'package:mysocial/pages/auth/login.dart';
import 'package:mysocial/pages/welcome.dart';
import 'route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterShare',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.teal,
      ),
      home: WelcomePage(),
    );
  }
}
