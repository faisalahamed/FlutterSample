import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unnamed_route/login.dart';

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
            onPressed: () async {
              // Get.to(
              //   LoginPage(),
              //   // fullscreenDialog: true,
              //   // transition: Transition.leftToRight,
              //   transition: Transition.zoom,
              //   duration: Duration(milliseconds: 3000),
              //   curve: Curves.bounceInOut,
              // );

              // // go to login page without option to return previous
              // Get.off(LoginPage());

              // // go to login page and clear all prevous page
              // Get.offAll(LoginPage());

              // // go to login page with Data
              // Get.to(LoginPage(), arguments: 'my Arg /obj can be passed here');

              // Recieve data from back
              var data = await Get.to(LoginPage());
              print('Received data: $data');
            },
          )
        ],
      ),
    );
  }
}
