import 'package:flutter/material.dart';
import 'package:mysocial/pages/auth/Login/login_screen.dart';
import 'package:mysocial/pages/auth/Signup/signup_screen.dart';
import 'package:mysocial/pages/dashboard/dashboard.dart';
import 'package:mysocial/pages/welcome.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    // String arg = settings.arguments;

    switch (settings.name) {
      case '/welcome':
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => Dashboard());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error Page'),
        ),
        body: Center(
          child: Text('error Page'),
        ),
      ),
    );
  }
}
