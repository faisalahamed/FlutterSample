import 'package:flutter/material.dart';
import 'package:mysocial/pages/auth/login.dart';
import 'package:mysocial/pages/dashboard/dashboard.dart';
import 'package:mysocial/pages/welcome.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    // String arg = settings.arguments;

    bool isAuth = true;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => WelcomePage());

      // case '/login':
      //   if (isAuth) {
      //     return MaterialPageRoute(builder: (_) => Dashboard());
      //   }
      //   return MaterialPageRoute(builder: (_) => LoginPage());

      case '/dashboard':
        return MaterialPageRoute(builder: (_) => Dashboard());

      // case '/login':
      //   return MaterialPageRoute(builder: (_) => LoginPage(passdata: arg));
      // case '/signup':
      //   return MaterialPageRoute(builder: (_) => SignupPage());
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
