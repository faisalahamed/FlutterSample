import 'package:flutter/material.dart';
import 'package:mysocial/pages/dashboard/dashboard.dart';
import 'package:mysocial/pages/login_signup/login_signup_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // bool isAuth = true;
  bool isAuth = false;

  @override
  Widget build(BuildContext context) {
    return isAuth ? Dashboard() : LoginSignupPage();
  }
}
