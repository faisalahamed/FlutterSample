import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  final String passdata;
  LoginPage({@required this.passdata});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Login Page'),
            RaisedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
              child: Text('Back to home'),
            ),
            RaisedButton(
              child: Text('Pop em all.'),
              onPressed: () => Navigator.popUntil(
                context,
                ModalRoute.withName('/'),
              ),
            ),
            RaisedButton(
              child: Text('Pop home.'),
              onPressed: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
                // ModalRoute.withName('/'),
                (Route<dynamic> route) => false,
              ),
            ),
            RaisedButton(
              child: Text('final home.'),
              onPressed: () => Navigator.of(context)
                  .pushNamedAndRemoveUntil('/', (_) => false),
            ),
          ],
        ),
      ),
    );
  }
}
