import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Signup page'),
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
