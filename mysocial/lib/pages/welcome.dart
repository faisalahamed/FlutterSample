import 'package:flutter/material.dart';
import 'package:mysocial/pages/auth/login.dart';
import 'package:mysocial/pages/dashboard/dashboard.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // bool isAuth = true;
  bool isAuth = false;

  @override
  Widget build(BuildContext context) {
    //TODO: splash Screen
    return isAuth ? Dashboard() : LoginPage();
  }
}
