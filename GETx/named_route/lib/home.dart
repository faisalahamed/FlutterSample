import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:named_route/auth/login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Row(
        children: [
          RaisedButton(
            child: Text('Go to login'),
            onPressed: () async {},
          )
        ],
      ),
    );
  }
}
