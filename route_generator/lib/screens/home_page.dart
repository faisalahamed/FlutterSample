import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Home Page'),
            Text('Home Page'),
            RaisedButton(
              onPressed: () => Navigator.of(context)
                  .pushNamed('/login', arguments: 'pass any data to that page'),
              child: Text('Login Page'),
            ),
            RaisedButton(
              onPressed: () => Navigator.of(context).pushNamed('/signup'),
              child: Text('Signup Page'),
            ),
          ],
        ),
      ),
    );
  }
}
