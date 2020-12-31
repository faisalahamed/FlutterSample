import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/views/my_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Get X Sample',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHome(),
    );
  }
}
