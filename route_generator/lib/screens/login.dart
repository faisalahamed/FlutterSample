import 'package:flutter/material.dart';

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
              onPressed: () => Navigator.of(context).pushNamed('/'),
              child: Text('Back to home'),
            ),
          ],
        ),
      ),
    );
  }
}
