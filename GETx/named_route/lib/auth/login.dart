import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('Login 1'),
              onPressed: () {
                Get.offAllNamed('/dashboard');
              },
            ),
            RaisedButton(
              child: Text('Login 2:with dynamic parameter'),
              onPressed: () {
                Get.offAllNamed(
                    '/dashboard?tokenId=mytokenid5678fjg&userId=myuserid123');
                //wigt back button
                // Get.toNamed(
                //     '/dashboard?tokenId=mytokenid5678fjg&userId=myuserid123');
              },
            ),
            RaisedButton(
              child: Text('Login 3: with predefined parameter'),
              onPressed: () {
                // Get.offAllNamed('/');
                Get.toNamed('/dashboard/123asdf#4sdf%');
              },
            ),
            RaisedButton(
              child: Text('Home'),
              onPressed: () {
                Get.offAllNamed('/dashboard');
              },
            ),
            RaisedButton(
              child: Text('Error route'),
              onPressed: () {
                Get.toNamed('/undefinedroute');
              },
            ),
          ],
        ),
      ),
    );
  }
}
