import 'package:flutter/material.dart';
import 'package:route_generator/screens/home_page.dart';
import 'package:route_generator/screens/login.dart';
import 'package:route_generator/screens/signup.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    String arg = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage(passdata: arg));
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignupPage());
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
