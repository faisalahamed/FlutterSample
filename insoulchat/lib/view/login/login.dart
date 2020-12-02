import 'package:flutter/material.dart';

import '../my_home_page_web.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          ),
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
