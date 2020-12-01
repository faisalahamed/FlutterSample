import 'package:flutter/material.dart';
import 'package:mysocial/pages/welcome.dart';
import 'package:mysocial/route_generator.dart';

import 'package:splashscreen/splashscreen.dart';

import 'helpers/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(
        seconds: 5,
        // navigateAfterSeconds: LoginPage(),
        navigateAfterSeconds: WelcomePage(),
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
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
