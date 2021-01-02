import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text('Logout'),
            onPressed: () {
              Get.offAllNamed('/');
            },
          ),
          Text('${Get.parameters['tokenId']}'),
          Text('${Get.parameters['userId']}'),
          Text('Method2:${Get.parameters['token']}'),
        ],
      ),
    );
  }
}
