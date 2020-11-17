import 'package:flutter/material.dart';
import 'package:splashScreen/screens/auth/login.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
        seconds: 14,
        navigateAfterSeconds: LoginPage(),
        title: new Text(
          'Welcome In SplashScreen',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: new Image.network(
            'https://insoulit.com//storage/settings/February2020/iwWBR4Jicza64wd6l2vy.png'),
        backgroundColor: Colors.cyanAccent,
        loaderColor: Colors.red,
        photoSize: 120.0,
        loadingText: Text("Loading....."),
      ),
    );
  }
}
