import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text('Back to home'),
            onPressed: () {
              Get.back();

              // get back to previous page with data
            },
          ),
          RaisedButton(
            child: Text('Back to home with data'),
            onPressed: () {
              // get back to previous page with data
              Get.back(result: 'data file send from here');
            },
          ),
          Text('${Get.arguments}')
        ],
      ),
    );
  }
}
